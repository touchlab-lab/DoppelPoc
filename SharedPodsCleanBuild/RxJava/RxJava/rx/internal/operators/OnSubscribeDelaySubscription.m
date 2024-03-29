//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OnSubscribeDelaySubscription.java
//

#include "J2ObjC_source.h"
#include "java/util/concurrent/TimeUnit.h"
#include "rx/Observable.h"
#include "rx/Scheduler.h"
#include "rx/Subscriber.h"
#include "rx/Subscription.h"
#include "rx/functions/Action0.h"
#include "rx/internal/operators/OnSubscribeDelaySubscription.h"

@interface RxInternalOperatorsOnSubscribeDelaySubscription_$1 : NSObject < RxFunctionsAction0 > {
 @public
  RxInternalOperatorsOnSubscribeDelaySubscription *this$0_;
  RxSubscriber *val$s_;
}

- (void)call;

- (instancetype)initWithRxInternalOperatorsOnSubscribeDelaySubscription:(RxInternalOperatorsOnSubscribeDelaySubscription *)outer$
                                                       withRxSubscriber:(RxSubscriber *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeDelaySubscription_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeDelaySubscription_$1, this$0_, RxInternalOperatorsOnSubscribeDelaySubscription *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeDelaySubscription_$1, val$s_, RxSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOnSubscribeDelaySubscription_$1_initWithRxInternalOperatorsOnSubscribeDelaySubscription_withRxSubscriber_(RxInternalOperatorsOnSubscribeDelaySubscription_$1 *self, RxInternalOperatorsOnSubscribeDelaySubscription *outer$, RxSubscriber *capture$0);

__attribute__((unused)) static RxInternalOperatorsOnSubscribeDelaySubscription_$1 *new_RxInternalOperatorsOnSubscribeDelaySubscription_$1_initWithRxInternalOperatorsOnSubscribeDelaySubscription_withRxSubscriber_(RxInternalOperatorsOnSubscribeDelaySubscription *outer$, RxSubscriber *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOnSubscribeDelaySubscription_$1 *create_RxInternalOperatorsOnSubscribeDelaySubscription_$1_initWithRxInternalOperatorsOnSubscribeDelaySubscription_withRxSubscriber_(RxInternalOperatorsOnSubscribeDelaySubscription *outer$, RxSubscriber *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeDelaySubscription_$1)

@implementation RxInternalOperatorsOnSubscribeDelaySubscription

- (instancetype)initWithRxObservable:(RxObservable *)source
                            withLong:(jlong)time
      withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit
                     withRxScheduler:(RxScheduler *)scheduler {
  RxInternalOperatorsOnSubscribeDelaySubscription_initWithRxObservable_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(self, source, time, unit, scheduler);
  return self;
}

- (void)callWithId:(RxSubscriber *)s {
  RxScheduler_Worker *worker = [((RxScheduler *) nil_chk(scheduler_)) createWorker];
  [((RxSubscriber *) nil_chk(s)) addWithRxSubscription:worker];
  (void) [((RxScheduler_Worker *) nil_chk(worker)) scheduleWithRxFunctionsAction0:new_RxInternalOperatorsOnSubscribeDelaySubscription_$1_initWithRxInternalOperatorsOnSubscribeDelaySubscription_withRxSubscriber_(self, s) withLong:time_ withJavaUtilConcurrentTimeUnit:unit_];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxObservable:withLong:withJavaUtilConcurrentTimeUnit:withRxScheduler:", "OnSubscribeDelaySubscription", NULL, 0x1, NULL, "(Lrx/Observable<+TT;>;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V" },
    { "callWithId:", "call", "V", 0x1, NULL, "(Lrx/Subscriber<-TT;>;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "source_", NULL, 0x10, "Lrx.Observable;", NULL, "Lrx/Observable<+TT;>;", .constantValue.asLong = 0 },
    { "time_", NULL, 0x10, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "unit_", NULL, 0x10, "Ljava.util.concurrent.TimeUnit;", NULL, NULL, .constantValue.asLong = 0 },
    { "scheduler_", NULL, 0x10, "Lrx.Scheduler;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _RxInternalOperatorsOnSubscribeDelaySubscription = { 2, "OnSubscribeDelaySubscription", "rx.internal.operators", NULL, 0x11, 2, methods, 4, fields, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$OnSubscribe<TT;>;" };
  return &_RxInternalOperatorsOnSubscribeDelaySubscription;
}

@end

void RxInternalOperatorsOnSubscribeDelaySubscription_initWithRxObservable_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(RxInternalOperatorsOnSubscribeDelaySubscription *self, RxObservable *source, jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler) {
  NSObject_init(self);
  self->source_ = source;
  self->time_ = time;
  self->unit_ = unit;
  self->scheduler_ = scheduler;
}

RxInternalOperatorsOnSubscribeDelaySubscription *new_RxInternalOperatorsOnSubscribeDelaySubscription_initWithRxObservable_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(RxObservable *source, jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler) {
  RxInternalOperatorsOnSubscribeDelaySubscription *self = [RxInternalOperatorsOnSubscribeDelaySubscription alloc];
  RxInternalOperatorsOnSubscribeDelaySubscription_initWithRxObservable_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(self, source, time, unit, scheduler);
  return self;
}

RxInternalOperatorsOnSubscribeDelaySubscription *create_RxInternalOperatorsOnSubscribeDelaySubscription_initWithRxObservable_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(RxObservable *source, jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler) {
  return new_RxInternalOperatorsOnSubscribeDelaySubscription_initWithRxObservable_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(source, time, unit, scheduler);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOnSubscribeDelaySubscription)

@implementation RxInternalOperatorsOnSubscribeDelaySubscription_$1

- (void)call {
  if (![((RxSubscriber *) nil_chk(val$s_)) isUnsubscribed]) {
    (void) [((RxObservable *) nil_chk(this$0_->source_)) unsafeSubscribeWithRxSubscriber:val$s_];
  }
}

- (instancetype)initWithRxInternalOperatorsOnSubscribeDelaySubscription:(RxInternalOperatorsOnSubscribeDelaySubscription *)outer$
                                                       withRxSubscriber:(RxSubscriber *)capture$0 {
  RxInternalOperatorsOnSubscribeDelaySubscription_$1_initWithRxInternalOperatorsOnSubscribeDelaySubscription_withRxSubscriber_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "call", NULL, "V", 0x1, NULL, NULL },
    { "initWithRxInternalOperatorsOnSubscribeDelaySubscription:withRxSubscriber:", "", NULL, 0x0, NULL, "(Lrx/internal/operators/OnSubscribeDelaySubscription;Lrx/Subscriber<-TT;>;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lrx.internal.operators.OnSubscribeDelaySubscription;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$s_", NULL, 0x1012, "Lrx.Subscriber;", NULL, "Lrx/Subscriber<-TT;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxInternalOperatorsOnSubscribeDelaySubscription", "callWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOnSubscribeDelaySubscription_$1 = { 2, "", "rx.internal.operators", "OnSubscribeDelaySubscription", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_RxInternalOperatorsOnSubscribeDelaySubscription_$1;
}

@end

void RxInternalOperatorsOnSubscribeDelaySubscription_$1_initWithRxInternalOperatorsOnSubscribeDelaySubscription_withRxSubscriber_(RxInternalOperatorsOnSubscribeDelaySubscription_$1 *self, RxInternalOperatorsOnSubscribeDelaySubscription *outer$, RxSubscriber *capture$0) {
  self->this$0_ = outer$;
  self->val$s_ = capture$0;
  NSObject_init(self);
}

RxInternalOperatorsOnSubscribeDelaySubscription_$1 *new_RxInternalOperatorsOnSubscribeDelaySubscription_$1_initWithRxInternalOperatorsOnSubscribeDelaySubscription_withRxSubscriber_(RxInternalOperatorsOnSubscribeDelaySubscription *outer$, RxSubscriber *capture$0) {
  RxInternalOperatorsOnSubscribeDelaySubscription_$1 *self = [RxInternalOperatorsOnSubscribeDelaySubscription_$1 alloc];
  RxInternalOperatorsOnSubscribeDelaySubscription_$1_initWithRxInternalOperatorsOnSubscribeDelaySubscription_withRxSubscriber_(self, outer$, capture$0);
  return self;
}

RxInternalOperatorsOnSubscribeDelaySubscription_$1 *create_RxInternalOperatorsOnSubscribeDelaySubscription_$1_initWithRxInternalOperatorsOnSubscribeDelaySubscription_withRxSubscriber_(RxInternalOperatorsOnSubscribeDelaySubscription *outer$, RxSubscriber *capture$0) {
  return new_RxInternalOperatorsOnSubscribeDelaySubscription_$1_initWithRxInternalOperatorsOnSubscribeDelaySubscription_withRxSubscriber_(outer$, capture$0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOnSubscribeDelaySubscription_$1)
