/**
 * Copyright 2015 Netflix, Inc.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software distributed under the License is
 * distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See
 * the License for the specific language governing permissions and limitations under the License.
 */
package rx;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertSame;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;
import static org.mockito.Matchers.eq;
import static org.mockito.Mockito.doThrow;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.verifyZeroInteractions;
import static org.mockito.Mockito.when;

import java.util.Arrays;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

import org.junit.Test;

import org.mockito.invocation.InvocationOnMock;
import org.mockito.stubbing.Answer;
import rx.Single.OnSubscribe;
import rx.exceptions.CompositeException;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.schedulers.TestScheduler;
import rx.singles.BlockingSingle;
import rx.observers.TestSubscriber;
import rx.schedulers.Schedulers;
import rx.subscriptions.Subscriptions;


public class SingleTest {

    @Test
    public void testHelloWorld() {
        TestSubscriber<String> ts = new TestSubscriber<String>();
        Single.just("Hello World!").subscribe(ts);
        ts.assertReceivedOnNext(Arrays.asList("Hello World!"));
    }

    @Test
    public void testHelloWorld2() {
        final AtomicReference<String> v = new AtomicReference<String>();
        Single.just("Hello World!").subscribe(new SingleSubscriber<String>() {

            @Override
            public void onSuccess(String value) {
                v.set(value);
            }

            @Override
            public void onError(Throwable error) {

            }

        });
        assertEquals("Hello World!", v.get());
    }

    @Test
    public void testMap() {
        TestSubscriber<String> ts = new TestSubscriber<String>();
        Single.just("A")
                .map(new Func1<String, String>() {

                    @Override
                    public String call(String s) {
                        return s + "B";
                    }

                })
                .subscribe(ts);
        ts.assertReceivedOnNext(Arrays.asList("AB"));
    }

    @Test
    public void testZip() {
        TestSubscriber<String> ts = new TestSubscriber<String>();
        Single<String> a = Single.just("A");
        Single<String> b = Single.just("B");

        Single.zip(a, b, new Func2<String, String, String>() {

            @Override
            public String call(String a, String b) {
                return a + b;
            }

        })
                .subscribe(ts);
        ts.assertReceivedOnNext(Arrays.asList("AB"));
    }

    @Test
    public void testZipWith() {
        TestSubscriber<String> ts = new TestSubscriber<String>();

        Single.just("A").zipWith(Single.just("B"), new Func2<String, String, String>() {

            @Override
            public String call(String a, String b) {
                return a + b;
            }

        })
                .subscribe(ts);
        ts.assertReceivedOnNext(Arrays.asList("AB"));
    }

    @Test
    public void testMerge() {
        TestSubscriber<String> ts = new TestSubscriber<String>();
        Single<String> a = Single.just("A");
        Single<String> b = Single.just("B");

        Single.merge(a, b).subscribe(ts);
        ts.assertReceivedOnNext(Arrays.asList("A", "B"));
    }

    @Test
    public void testMergeWith() {
        TestSubscriber<String> ts = new TestSubscriber<String>();

        Single.just("A").mergeWith(Single.just("B")).subscribe(ts);
        ts.assertReceivedOnNext(Arrays.asList("A", "B"));
    }

    @Test
    public void testCreateSuccess() {
        TestSubscriber<String> ts = new TestSubscriber<String>();
        Single.create(new OnSubscribe<String>() {

            @Override
            public void call(SingleSubscriber<? super String> s) {
                s.onSuccess("Hello");
            }

        }).subscribe(ts);
        ts.assertReceivedOnNext(Arrays.asList("Hello"));
    }

    @Test
    public void testCreateError() {
        TestSubscriber<String> ts = new TestSubscriber<String>();
        Single.create(new OnSubscribe<String>() {

            @Override
            public void call(SingleSubscriber<? super String> s) {
                s.onError(new RuntimeException("fail"));
            }

        }).subscribe(ts);
        assertEquals(1, ts.getOnErrorEvents().size());
    }

    @Test
    public void testAsync() {
        TestSubscriber<String> ts = new TestSubscriber<String>();
        Single.just("Hello")
                .subscribeOn(Schedulers.io())
                .map(new Func1<String, String>() {

                    @Override
                    public String call(String v) {
                        System.out.println("SubscribeOn Thread: " + Thread.currentThread());
                        return v;
                    }

                })
                .observeOn(Schedulers.computation())
                .map(new Func1<String, String>() {

                    @Override
                    public String call(String v) {
                        System.out.println("ObserveOn Thread: " + Thread.currentThread());
                        return v;
                    }

                })
                .subscribe(ts);
        ts.awaitTerminalEvent();
        ts.assertReceivedOnNext(Arrays.asList("Hello"));
    }

    @Test
    public void testFlatMap() {
        TestSubscriber<String> ts = new TestSubscriber<String>();
        Single.just("Hello").flatMap(new Func1<String, Single<String>>() {

            @Override
            public Single<String> call(String s) {
                return Single.just(s + " World!").subscribeOn(Schedulers.computation());
            }

        }).subscribe(ts);
        ts.awaitTerminalEvent();
        ts.assertReceivedOnNext(Arrays.asList("Hello World!"));
    }

    @Test
    public void testTimeout() {
        TestSubscriber<String> ts = new TestSubscriber<String>();
        Single<String> s = Single.create(new OnSubscribe<String>() {

            @Override
            public void call(SingleSubscriber<? super String> s) {
                try {
                    Thread.sleep(5000);
                } catch (InterruptedException e) {
                    // ignore as we expect this for the test
                }
                s.onSuccess("success");
            }

        }).subscribeOn(Schedulers.io());

        s.timeout(100, TimeUnit.MILLISECONDS).subscribe(ts);

        ts.awaitTerminalEvent();
        ts.assertError(TimeoutException.class);
    }

    @Test
    public void testTimeoutWithFallback() {
        TestSubscriber<String> ts = new TestSubscriber<String>();
        Single<String> s = Single.create(new OnSubscribe<String>() {

            @Override
            public void call(SingleSubscriber<? super String> s) {
                try {
                    Thread.sleep(5000);
                } catch (InterruptedException e) {
                    // ignore as we expect this for the test
                }
                s.onSuccess("success");
            }

        }).subscribeOn(Schedulers.io());

        s.timeout(100, TimeUnit.MILLISECONDS, Single.just("hello")).subscribe(ts);

        ts.awaitTerminalEvent();
        ts.assertNoErrors();
        ts.assertValue("hello");
    }

    @Test
    public void testToBlocking() {
        Single<String> s = Single.just("one");
        BlockingSingle<String> blocking = s.toBlocking();
        assertNotNull(blocking);
        assertEquals("one", blocking.value());
    }

    @Test
    public void testUnsubscribe() throws InterruptedException {
        TestSubscriber<String> ts = new TestSubscriber<String>();
        final AtomicBoolean unsubscribed = new AtomicBoolean();
        final AtomicBoolean interrupted = new AtomicBoolean();
        final CountDownLatch latch = new CountDownLatch(2);

        Single<String> s = Single.create(new OnSubscribe<String>() {

            @Override
            public void call(final SingleSubscriber<? super String> s) {
                final Thread t = new Thread(new Runnable() {

                    @Override
                    public void run() {
                        try {
                            Thread.sleep(5000);
                            s.onSuccess("success");
                        } catch (InterruptedException e) {
                            interrupted.set(true);
                            latch.countDown();
                        }
                    }

                });
                s.add(Subscriptions.create(new Action0() {

                    @Override
                    public void call() {
                        unsubscribed.set(true);
                        t.interrupt();
                        latch.countDown();
                    }

                }));
                t.start();
            }

        });

        s.subscribe(ts);

        Thread.sleep(100);

        ts.unsubscribe();

        if (latch.await(1000, TimeUnit.MILLISECONDS)) {
            assertTrue(unsubscribed.get());
            assertTrue(interrupted.get());
        } else {
            fail("timed out waiting for latch");
        }
    }

    /**
     * Assert that unsubscribe propagates when passing in a SingleSubscriber and not a Subscriber
     */
    @Test
    public void testUnsubscribe2() throws InterruptedException {
        SingleSubscriber<String> ts = new SingleSubscriber<String>() {

            @Override
            public void onSuccess(String value) {
                // not interested in value
            }

            @Override
            public void onError(Throwable error) {
                // not interested in value
            }

        };
        final AtomicBoolean unsubscribed = new AtomicBoolean();
        final AtomicBoolean interrupted = new AtomicBoolean();
        final CountDownLatch latch = new CountDownLatch(2);

        Single<String> s = Single.create(new OnSubscribe<String>() {

            @Override
            public void call(final SingleSubscriber<? super String> s) {
                final Thread t = new Thread(new Runnable() {

                    @Override
                    public void run() {
                        try {
                            Thread.sleep(5000);
                            s.onSuccess("success");
                        } catch (InterruptedException e) {
                            interrupted.set(true);
                            latch.countDown();
                        }
                    }

                });
                s.add(Subscriptions.create(new Action0() {

                    @Override
                    public void call() {
                        unsubscribed.set(true);
                        t.interrupt();
                        latch.countDown();
                    }

                }));
                t.start();
            }

        });

        s.subscribe(ts);

        Thread.sleep(100);

        ts.unsubscribe();

        if (latch.await(1000, TimeUnit.MILLISECONDS)) {
            assertTrue(unsubscribed.get());
            assertTrue(interrupted.get());
        } else {
            fail("timed out waiting for latch");
        }
    }

    /**
     * Assert that unsubscribe propagates when passing in a SingleSubscriber and not a Subscriber
     */
    @Test
    public void testUnsubscribeViaReturnedSubscription() throws InterruptedException {
        final AtomicBoolean unsubscribed = new AtomicBoolean();
        final AtomicBoolean interrupted = new AtomicBoolean();
        final CountDownLatch latch = new CountDownLatch(2);

        Single<String> s = Single.create(new OnSubscribe<String>() {

            @Override
            public void call(final SingleSubscriber<? super String> s) {
                final Thread t = new Thread(new Runnable() {

                    @Override
                    public void run() {
                        try {
                            Thread.sleep(5000);
                            s.onSuccess("success");
                        } catch (InterruptedException e) {
                            interrupted.set(true);
                            latch.countDown();
                        }
                    }

                });
                s.add(Subscriptions.create(new Action0() {

                    @Override
                    public void call() {
                        unsubscribed.set(true);
                        t.interrupt();
                        latch.countDown();
                    }

                }));
                t.start();
            }

        });

        Subscription subscription = s.subscribe();

        Thread.sleep(100);

        subscription.unsubscribe();

        if (latch.await(1000, TimeUnit.MILLISECONDS)) {
            assertTrue(unsubscribed.get());
            assertTrue(interrupted.get());
        } else {
            fail("timed out waiting for latch");
        }
    }

    @Test
    public void testBackpressureAsObservable() {
        Single<String> s = Single.create(new OnSubscribe<String>() {

            @Override
            public void call(SingleSubscriber<? super String> t) {
                t.onSuccess("hello");
            }
        });

        TestSubscriber<String> ts = new TestSubscriber<String>() {
            @Override
            public void onStart() {
                request(0);
            }
        };

        s.subscribe(ts);

        ts.assertNoValues();

        ts.requestMore(1);

        ts.assertValue("hello");
    }

    @Test
    public void testToObservable() {
    	Observable<String> a = Single.just("a").toObservable();
    	TestSubscriber<String> ts = TestSubscriber.create();
    	a.subscribe(ts);
    	ts.assertValue("a");
    	ts.assertCompleted();
    }

    @Test
    public void doOnErrorShouldNotCallActionIfNoErrorHasOccurred() {
        Action1<Throwable> action = mock(Action1.class);

        TestSubscriber<String> testSubscriber = new TestSubscriber<String>();

        Single
                .just("value")
                .doOnError(action)
                .subscribe(testSubscriber);

        testSubscriber.assertValue("value");
        testSubscriber.assertNoErrors();

        verifyZeroInteractions(action);
    }

    @Test
    public void doOnErrorShouldCallActionIfErrorHasOccurred() {
        Action1<Throwable> action = mock(Action1.class);

        TestSubscriber<Object> testSubscriber = new TestSubscriber<Object>();

        Throwable error = new IllegalStateException();

        Single
                .error(error)
                .doOnError(action)
                .subscribe(testSubscriber);

        testSubscriber.assertNoValues();
        testSubscriber.assertError(error);

        verify(action).call(error);
    }

    @Test
    public void doOnErrorShouldThrowCompositeExceptionIfOnErrorActionThrows() {
        Action1<Throwable> action = mock(Action1.class);


        Throwable error = new RuntimeException();
        Throwable exceptionFromOnErrorAction = new IllegalStateException();
        doThrow(exceptionFromOnErrorAction).when(action).call(error);

        TestSubscriber<Object> testSubscriber = new TestSubscriber<Object>();

        Single
                .error(error)
                .doOnError(action)
                .subscribe(testSubscriber);

        testSubscriber.assertNoValues();
        CompositeException compositeException = (CompositeException) testSubscriber.getOnErrorEvents().get(0);

        assertEquals(2, compositeException.getExceptions().size());
        assertSame(error, compositeException.getExceptions().get(0));
        assertSame(exceptionFromOnErrorAction, compositeException.getExceptions().get(1));

        verify(action).call(error);
    }

    @Test
    public void shouldEmitValueFromCallable() throws Exception {
        Callable<String> callable = mock(Callable.class);

        when(callable.call()).thenReturn("value");

        TestSubscriber<String> testSubscriber = new TestSubscriber<String>();

        Single
                .fromCallable(callable)
                .subscribe(testSubscriber);

        testSubscriber.assertValue("value");
        testSubscriber.assertNoErrors();

        verify(callable).call();
    }

    @Test
    public void shouldPassErrorFromCallable() throws Exception {
        Callable<String> callable = mock(Callable.class);

        Throwable error = new IllegalStateException();

        when(callable.call()).thenThrow(error);

        TestSubscriber<String> testSubscriber = new TestSubscriber<String>();

        Single
                .fromCallable(callable)
                .subscribe(testSubscriber);

        testSubscriber.assertNoValues();
        testSubscriber.assertError(error);

        verify(callable).call();
    }

    @Test
    public void doOnSuccessShouldInvokeAction() {
        Action1<String> action = mock(Action1.class);

        TestSubscriber<String> testSubscriber = new TestSubscriber<String>();

        Single
                .just("value")
                .doOnSuccess(action)
                .subscribe(testSubscriber);

        testSubscriber.assertValue("value");
        testSubscriber.assertNoErrors();

        verify(action).call(eq("value"));
    }

    @Test
    public void doOnSuccessShouldPassErrorFromActionToSubscriber() {
        Action1<String> action = mock(Action1.class);

        Throwable error = new IllegalStateException();
        doThrow(error).when(action).call(eq("value"));

        TestSubscriber<String> testSubscriber = new TestSubscriber<String>();

        Single
                .just("value")
                .doOnSuccess(action)
                .subscribe(testSubscriber);

        testSubscriber.assertNoValues();
        testSubscriber.assertError(error);

        verify(action).call(eq("value"));
    }

    @Test
    public void doOnSuccessShouldNotCallActionIfSingleThrowsError() {
        Action1<Object> action = mock(Action1.class);

        Throwable error = new IllegalStateException();

        TestSubscriber<Object> testSubscriber = new TestSubscriber<Object>();

        Single
                .error(error)
                .doOnSuccess(action)
                .subscribe(testSubscriber);

        testSubscriber.assertNoValues();
        testSubscriber.assertError(error);

        verifyZeroInteractions(action);
    }

    @Test
    public void doOnSuccessShouldNotSwallowExceptionThrownByAction() {
        Action1<String> action = mock(Action1.class);

        Throwable exceptionFromAction = new IllegalStateException();

        doThrow(exceptionFromAction).when(action).call(eq("value"));

        TestSubscriber<String> testSubscriber = new TestSubscriber<String>();

        Single
                .just("value")
                .doOnSuccess(action)
                .subscribe(testSubscriber);

        testSubscriber.assertNoValues();
        testSubscriber.assertError(exceptionFromAction);

        verify(action).call(eq("value"));
    }

    @Test
    public void delayWithSchedulerShouldDelayCompletion() {
        TestScheduler scheduler = new TestScheduler();
        Single<Integer> single = Single.just(1).delay(100, TimeUnit.DAYS, scheduler);

        TestSubscriber<Integer> subscriber = new TestSubscriber<Integer>();
        single.subscribe(subscriber);

        subscriber.assertNotCompleted();
        scheduler.advanceTimeBy(99, TimeUnit.DAYS);
        subscriber.assertNotCompleted();
        scheduler.advanceTimeBy(91, TimeUnit.DAYS);
        subscriber.assertCompleted();
        subscriber.assertValue(1);
    }

    @Test
    public void delayWithSchedulerShouldShortCutWithFailure() {
        TestScheduler scheduler = new TestScheduler();
        final RuntimeException expected = new RuntimeException();
        Single<Integer> single = Single.create(new OnSubscribe<Integer>() {
            @Override
            public void call(SingleSubscriber<? super Integer> singleSubscriber) {
                singleSubscriber.onSuccess(1);
                singleSubscriber.onError(expected);
            }
        }).delay(100, TimeUnit.DAYS, scheduler);

        TestSubscriber<Integer> subscriber = new TestSubscriber<Integer>();
        single.subscribe(subscriber);

        subscriber.assertNotCompleted();
        scheduler.advanceTimeBy(99, TimeUnit.DAYS);
        subscriber.assertNotCompleted();
        scheduler.advanceTimeBy(91, TimeUnit.DAYS);
        subscriber.assertNoValues();
        subscriber.assertError(expected);
    }

    @Test
    public void deferShouldNotCallFactoryFuncUntilSubscriberSubscribes() throws Exception {
        Callable<Single<Object>> singleFactory = mock(Callable.class);
        Single.defer(singleFactory);
        verifyZeroInteractions(singleFactory);
    }

    @Test
    public void deferShouldSubscribeSubscriberToSingleFromFactoryFuncAndEmitValue() throws Exception {
        Callable<Single<Object>> singleFactory = mock(Callable.class);
        Object value = new Object();
        Single<Object> single = Single.just(value);

        when(singleFactory.call()).thenReturn(single);

        TestSubscriber<Object> testSubscriber = new TestSubscriber<Object>();

        Single
                .defer(singleFactory)
                .subscribe(testSubscriber);

        testSubscriber.assertValue(value);
        testSubscriber.assertNoErrors();

        verify(singleFactory).call();
    }

    @Test
    public void deferShouldSubscribeSubscriberToSingleFromFactoryFuncAndEmitError() throws Exception {
        Callable<Single<Object>> singleFactory = mock(Callable.class);
        Throwable error = new IllegalStateException();
        Single<Object> single = Single.error(error);

        when(singleFactory.call()).thenReturn(single);

        TestSubscriber<Object> testSubscriber = new TestSubscriber<Object>();

        Single
                .defer(singleFactory)
                .subscribe(testSubscriber);

        testSubscriber.assertNoValues();
        testSubscriber.assertError(error);

        verify(singleFactory).call();
    }

    @Test
    public void deferShouldPassErrorFromSingleFactoryToTheSubscriber() throws Exception {
        Callable<Single<Object>> singleFactory = mock(Callable.class);
        Throwable errorFromSingleFactory = new IllegalStateException();
        when(singleFactory.call()).thenThrow(errorFromSingleFactory);

        TestSubscriber<Object> testSubscriber = new TestSubscriber<Object>();

        Single
                .defer(singleFactory)
                .subscribe(testSubscriber);

        testSubscriber.assertNoValues();
        testSubscriber.assertError(errorFromSingleFactory);

        verify(singleFactory).call();
    }

    @Test
    public void deferShouldCallSingleFactoryForEachSubscriber() throws Exception {
        Callable<Single<String>> singleFactory = mock(Callable.class);

        String[] values = {"1", "2", "3"};
        final Single[] singles = new Single[]{Single.just(values[0]), Single.just(values[1]), Single.just(values[2])};

        final AtomicInteger singleFactoryCallsCounter = new AtomicInteger();

        when(singleFactory.call()).thenAnswer(new Answer<Single<String>>() {
            @Override
            public Single<String> answer(InvocationOnMock invocation) throws Throwable {
                return singles[singleFactoryCallsCounter.getAndIncrement()];
            }
        });

        Single<String> deferredSingle = Single.defer(singleFactory);

        for (int i = 0; i < singles.length; i ++) {
            TestSubscriber<String> testSubscriber = new TestSubscriber<String>();

            deferredSingle.subscribe(testSubscriber);

            testSubscriber.assertValue(values[i]);
            testSubscriber.assertNoErrors();
        }

        verify(singleFactory, times(3)).call();
    }

    @Test
    public void deferShouldPassNullPointerExceptionToTheSubscriberIfSingleFactoryIsNull() {
        TestSubscriber<Object> testSubscriber = new TestSubscriber<Object>();

        Single
                .defer(null)
                .subscribe(testSubscriber);

        testSubscriber.assertNoValues();
        testSubscriber.assertError(NullPointerException.class);
    }


    @Test
    public void deferShouldPassNullPointerExceptionToTheSubscriberIfSingleFactoryReturnsNull() throws Exception {
        Callable<Single<Object>> singleFactory = mock(Callable.class);
        when(singleFactory.call()).thenReturn(null);

        TestSubscriber<Object> testSubscriber = new TestSubscriber<Object>();

        Single
                .defer(singleFactory)
                .subscribe(testSubscriber);

        testSubscriber.assertNoValues();
        testSubscriber.assertError(NullPointerException.class);

        verify(singleFactory).call();
    }
}
