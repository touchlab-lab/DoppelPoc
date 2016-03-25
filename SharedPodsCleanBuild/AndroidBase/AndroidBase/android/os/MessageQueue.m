//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/androidbase/AndroidBase/lib/src/main/java/android/os/MessageQueue.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "android/os/Handler.h"
#include "android/os/Message.h"
#include "android/os/MessageQueue.h"
#include "android/os/SystemClock.h"
#include "android/os/ThreadNudger.h"
#include "android/util/AndroidRuntimeException.h"
#include "android/util/Log.h"
#include "java/lang/Integer.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Math.h"
#include "java/lang/Runnable.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Thread.h"
#include "java/lang/UnsupportedOperationException.h"

@interface AndroidOsMessageQueue () {
 @public
  id<AndroidOsThreadNudger> mThreadNudger_;
  jboolean mQuiting_;
  jboolean mBlocked_;
  jint mPtr_;
}

- (void)nativeInit;

- (void)nativeDestroy;

- (void)dopNudgeThreadNow;

- (void)dopNudgeThreadAtWithInt:(jint)timeoutMillis;

- (void)testThreadTimerWithInt:(jint)timeout;

- (void)callNudgeOnThread;

- (void)callNudge;

@end

J2OBJC_FIELD_SETTER(AndroidOsMessageQueue, mThreadNudger_, id<AndroidOsThreadNudger>)

__attribute__((unused)) static void AndroidOsMessageQueue_nativeInit(AndroidOsMessageQueue *self);

__attribute__((unused)) static void AndroidOsMessageQueue_dopNudgeThreadNow(AndroidOsMessageQueue *self);

__attribute__((unused)) static void AndroidOsMessageQueue_dopNudgeThreadAtWithInt_(AndroidOsMessageQueue *self, jint timeoutMillis);

@interface AndroidOsMessageQueue_IdleHandler : NSObject

@end

@interface AndroidOsMessageQueue_$1 : JavaLangThread {
 @public
  AndroidOsMessageQueue *this$0_;
  jint val$timeout_;
}

- (void)run;

- (instancetype)initWithAndroidOsMessageQueue:(AndroidOsMessageQueue *)outer$
                                      withInt:(jint)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidOsMessageQueue_$1)

J2OBJC_FIELD_SETTER(AndroidOsMessageQueue_$1, this$0_, AndroidOsMessageQueue *)

__attribute__((unused)) static void AndroidOsMessageQueue_$1_initWithAndroidOsMessageQueue_withInt_(AndroidOsMessageQueue_$1 *self, AndroidOsMessageQueue *outer$, jint capture$0);

__attribute__((unused)) static AndroidOsMessageQueue_$1 *new_AndroidOsMessageQueue_$1_initWithAndroidOsMessageQueue_withInt_(AndroidOsMessageQueue *outer$, jint capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static AndroidOsMessageQueue_$1 *create_AndroidOsMessageQueue_$1_initWithAndroidOsMessageQueue_withInt_(AndroidOsMessageQueue *outer$, jint capture$0);

J2OBJC_TYPE_LITERAL_HEADER(AndroidOsMessageQueue_$1)

@implementation AndroidOsMessageQueue

NSOperationQueue *opQueue;

- (void)nativeInit {
  AndroidOsMessageQueue_nativeInit(self);
}

- (void)nativeDestroy {
  NSLog(@"nativeDestroy");
}

- (void)dopNudgeThreadNow {
  AndroidOsMessageQueue_dopNudgeThreadNow(self);
}

- (void)dopNudgeThreadAtWithInt:(jint)timeoutMillis {
  AndroidOsMessageQueue_dopNudgeThreadAtWithInt_(self, timeoutMillis);
}

- (void)testThreadTimerWithInt:(jint)timeout {
  [new_AndroidOsMessageQueue_$1_initWithAndroidOsMessageQueue_withInt_(self, timeout) start];
}

- (void)callNudgeOnThread {
  [opQueue addOperation:[NSBlockOperation blockOperationWithBlock:^{
    [self callNudge];
  }]];
}

- (void)callNudge {
  [((id<AndroidOsThreadNudger>) nil_chk(mThreadNudger_)) nudge];
}

- (void)addIdleHandlerWithAndroidOsMessageQueue_IdleHandler:(id<AndroidOsMessageQueue_IdleHandler>)handler {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_(@"We will be handing control back to native iOS thread, so no idle. May add back in the future.");
}

- (void)removeIdleHandlerWithAndroidOsMessageQueue_IdleHandler:(id<AndroidOsMessageQueue_IdleHandler>)handler {
  @throw new_JavaLangUnsupportedOperationException_initWithNSString_(@"We will be handing control back to native iOS thread, so no idle. May add back in the future.");
}

- (instancetype)initWithAndroidOsThreadNudger:(id<AndroidOsThreadNudger>)threadNudger {
  AndroidOsMessageQueue_initWithAndroidOsThreadNudger_(self, threadNudger);
  return self;
}

- (AndroidOsMessage *)next {
  @synchronized(self) {
    jlong now = AndroidOsSystemClock_uptimeMillis();
    AndroidOsMessage *msg = mMessages_;
    if (msg != nil) {
      jlong when = msg->when_;
      if (now >= when) {
        mBlocked_ = false;
        mMessages_ = msg->next_;
        msg->next_ = nil;
        [msg markInUse];
        return msg;
      }
      else {
        jint nudgeTimeout = (jint) JavaLangMath_minWithLong_withLong_(when - now, JavaLangInteger_MAX_VALUE);
        AndroidOsMessageQueue_dopNudgeThreadAtWithInt_(self, nudgeTimeout);
      }
    }
    mBlocked_ = true;
    return nil;
  }
}

- (jboolean)enqueueMessageWithAndroidOsMessage:(AndroidOsMessage *)msg
                                      withLong:(jlong)when {
  if ([((AndroidOsMessage *) nil_chk(msg)) isInUse]) {
    @throw new_AndroidUtilAndroidRuntimeException_initWithNSString_(JreStrcat("@$", msg, @" This message is already in use."));
  }
  if (msg->target_ == nil && !mQuitAllowed_) {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"Main thread not allowed to quit");
  }
  jboolean needWake;
  @synchronized(self) {
    if (mQuiting_) {
      JavaLangRuntimeException *e = new_JavaLangRuntimeException_initWithNSString_(JreStrcat("@$", msg->target_, @" sending message to a Handler on a dead thread"));
      AndroidUtilLog_wWithNSString_withNSString_withNSException_(@"MessageQueue", [e getMessage], e);
      return false;
    }
    else if (msg->target_ == nil) {
      mQuiting_ = true;
    }
    msg->when_ = when;
    AndroidOsMessage *p = mMessages_;
    if (p == nil || when == 0 || when < p->when_) {
      msg->next_ = p;
      mMessages_ = msg;
      needWake = mBlocked_;
    }
    else {
      AndroidOsMessage *prev = nil;
      while (p != nil && p->when_ <= when) {
        prev = p;
        p = p->next_;
      }
      msg->next_ = ((AndroidOsMessage *) nil_chk(prev))->next_;
      prev->next_ = msg;
      needWake = false;
    }
  }
  if (needWake) {
    AndroidOsMessageQueue_dopNudgeThreadNow(self);
  }
  return true;
}

- (jboolean)removeMessagesWithAndroidOsHandler:(AndroidOsHandler *)h
                                       withInt:(jint)what
                                        withId:(id)object
                                   withBoolean:(jboolean)doRemove {
  @synchronized(self) {
    AndroidOsMessage *p = mMessages_;
    jboolean found = false;
    while (p != nil && p->target_ == h && p->what_ == what && (object == nil || p->obj_ == object)) {
      if (!doRemove) return true;
      found = true;
      AndroidOsMessage *n = ((AndroidOsMessage *) nil_chk(p))->next_;
      mMessages_ = n;
      [p recycle];
      p = n;
    }
    while (p != nil) {
      AndroidOsMessage *n = ((AndroidOsMessage *) nil_chk(p))->next_;
      if (n != nil) {
        if (n->target_ == h && n->what_ == what && (object == nil || n->obj_ == object)) {
          if (!doRemove) return true;
          found = true;
          AndroidOsMessage *nn = n->next_;
          [n recycle];
          p->next_ = nn;
          continue;
        }
      }
      p = n;
    }
    return found;
  }
}

- (void)removeMessagesWithAndroidOsHandler:(AndroidOsHandler *)h
                      withJavaLangRunnable:(id<JavaLangRunnable>)r
                                    withId:(id)object {
  if (r == nil) {
    return;
  }
  @synchronized(self) {
    AndroidOsMessage *p = mMessages_;
    while (p != nil && p->target_ == h && p->callback_ == r && (object == nil || p->obj_ == object)) {
      AndroidOsMessage *n = ((AndroidOsMessage *) nil_chk(p))->next_;
      mMessages_ = n;
      [p recycle];
      p = n;
    }
    while (p != nil) {
      AndroidOsMessage *n = ((AndroidOsMessage *) nil_chk(p))->next_;
      if (n != nil) {
        if (n->target_ == h && n->callback_ == r && (object == nil || n->obj_ == object)) {
          AndroidOsMessage *nn = n->next_;
          [n recycle];
          p->next_ = nn;
          continue;
        }
      }
      p = n;
    }
  }
}

- (void)removeCallbacksAndMessagesWithAndroidOsHandler:(AndroidOsHandler *)h
                                                withId:(id)object {
  @synchronized(self) {
    AndroidOsMessage *p = mMessages_;
    while (p != nil && p->target_ == h && (object == nil || p->obj_ == object)) {
      AndroidOsMessage *n = ((AndroidOsMessage *) nil_chk(p))->next_;
      mMessages_ = n;
      [p recycle];
      p = n;
    }
    while (p != nil) {
      AndroidOsMessage *n = ((AndroidOsMessage *) nil_chk(p))->next_;
      if (n != nil) {
        if (n->target_ == h && (object == nil || n->obj_ == object)) {
          AndroidOsMessage *nn = n->next_;
          [n recycle];
          p->next_ = nn;
          continue;
        }
      }
      p = n;
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "nativeInit", NULL, "V", 0x102, NULL, NULL },
    { "nativeDestroy", NULL, "V", 0x102, NULL, NULL },
    { "dopNudgeThreadNow", NULL, "V", 0x2, NULL, NULL },
    { "dopNudgeThreadAtWithInt:", "dopNudgeThreadAt", "V", 0x102, NULL, NULL },
    { "testThreadTimerWithInt:", "testThreadTimer", "V", 0x2, NULL, NULL },
    { "callNudgeOnThread", NULL, "V", 0x102, NULL, NULL },
    { "callNudge", NULL, "V", 0x2, NULL, NULL },
    { "addIdleHandlerWithAndroidOsMessageQueue_IdleHandler:", "addIdleHandler", "V", 0x11, NULL, NULL },
    { "removeIdleHandlerWithAndroidOsMessageQueue_IdleHandler:", "removeIdleHandler", "V", 0x11, NULL, NULL },
    { "initWithAndroidOsThreadNudger:", "MessageQueue", NULL, 0x0, NULL, NULL },
    { "next", NULL, "Landroid.os.Message;", 0x10, NULL, NULL },
    { "enqueueMessageWithAndroidOsMessage:withLong:", "enqueueMessage", "Z", 0x10, NULL, NULL },
    { "removeMessagesWithAndroidOsHandler:withInt:withId:withBoolean:", "removeMessages", "Z", 0x10, NULL, NULL },
    { "removeMessagesWithAndroidOsHandler:withJavaLangRunnable:withId:", "removeMessages", "V", 0x10, NULL, NULL },
    { "removeCallbacksAndMessagesWithAndroidOsHandler:withId:", "removeCallbacksAndMessages", "V", 0x10, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mThreadNudger_", NULL, 0x12, "Landroid.os.ThreadNudger;", NULL, NULL, .constantValue.asLong = 0 },
    { "mMessages_", NULL, 0x0, "Landroid.os.Message;", NULL, NULL, .constantValue.asLong = 0 },
    { "mQuiting_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "mQuitAllowed_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "mBlocked_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "mPtr_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Landroid.os.MessageQueue$IdleHandler;"};
  static const J2ObjcClassInfo _AndroidOsMessageQueue = { 2, "MessageQueue", "android.os", NULL, 0x1, 15, methods, 6, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_AndroidOsMessageQueue;
}

@end

void AndroidOsMessageQueue_nativeInit(AndroidOsMessageQueue *self) {
  if([NSThread isMainThread])
  opQueue = [NSOperationQueue mainQueue];
  else
  opQueue = [[NSOperationQueue alloc] init];
}

void AndroidOsMessageQueue_dopNudgeThreadNow(AndroidOsMessageQueue *self) {
  AndroidOsMessageQueue_dopNudgeThreadAtWithInt_(self, 0);
}

void AndroidOsMessageQueue_dopNudgeThreadAtWithInt_(AndroidOsMessageQueue *self, jint timeoutMillis) {
  if(timeoutMillis <= 0){
    [self callNudgeOnThread];
  }else{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (long)timeoutMillis + (long)1000000), dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
      [self callNudgeOnThread];
    });
  }
}

void AndroidOsMessageQueue_initWithAndroidOsThreadNudger_(AndroidOsMessageQueue *self, id<AndroidOsThreadNudger> threadNudger) {
  NSObject_init(self);
  self->mQuitAllowed_ = true;
  self->mBlocked_ = true;
  self->mThreadNudger_ = threadNudger;
  AndroidOsMessageQueue_nativeInit(self);
}

AndroidOsMessageQueue *new_AndroidOsMessageQueue_initWithAndroidOsThreadNudger_(id<AndroidOsThreadNudger> threadNudger) {
  AndroidOsMessageQueue *self = [AndroidOsMessageQueue alloc];
  AndroidOsMessageQueue_initWithAndroidOsThreadNudger_(self, threadNudger);
  return self;
}

AndroidOsMessageQueue *create_AndroidOsMessageQueue_initWithAndroidOsThreadNudger_(id<AndroidOsThreadNudger> threadNudger) {
  return new_AndroidOsMessageQueue_initWithAndroidOsThreadNudger_(threadNudger);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidOsMessageQueue)

@implementation AndroidOsMessageQueue_IdleHandler

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "queueIdle", NULL, "Z", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _AndroidOsMessageQueue_IdleHandler = { 2, "IdleHandler", "android.os", "MessageQueue", 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_AndroidOsMessageQueue_IdleHandler;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(AndroidOsMessageQueue_IdleHandler)

@implementation AndroidOsMessageQueue_$1

- (void)run {
  @try {
    JavaLangThread_sleepWithLong_(val$timeout_);
    AndroidOsMessageQueue_dopNudgeThreadNow(this$0_);
  }
  @catch (JavaLangInterruptedException *e) {
  }
}

- (instancetype)initWithAndroidOsMessageQueue:(AndroidOsMessageQueue *)outer$
                                      withInt:(jint)capture$0 {
  AndroidOsMessageQueue_$1_initWithAndroidOsMessageQueue_withInt_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "run", NULL, "V", 0x1, NULL, NULL },
    { "initWithAndroidOsMessageQueue:withInt:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Landroid.os.MessageQueue;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$timeout_", NULL, 0x1012, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "AndroidOsMessageQueue", "testThreadTimerWithInt:" };
  static const J2ObjcClassInfo _AndroidOsMessageQueue_$1 = { 2, "", "android.os", "MessageQueue", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_AndroidOsMessageQueue_$1;
}

@end

void AndroidOsMessageQueue_$1_initWithAndroidOsMessageQueue_withInt_(AndroidOsMessageQueue_$1 *self, AndroidOsMessageQueue *outer$, jint capture$0) {
  self->this$0_ = outer$;
  self->val$timeout_ = capture$0;
  JavaLangThread_init(self);
}

AndroidOsMessageQueue_$1 *new_AndroidOsMessageQueue_$1_initWithAndroidOsMessageQueue_withInt_(AndroidOsMessageQueue *outer$, jint capture$0) {
  AndroidOsMessageQueue_$1 *self = [AndroidOsMessageQueue_$1 alloc];
  AndroidOsMessageQueue_$1_initWithAndroidOsMessageQueue_withInt_(self, outer$, capture$0);
  return self;
}

AndroidOsMessageQueue_$1 *create_AndroidOsMessageQueue_$1_initWithAndroidOsMessageQueue_withInt_(AndroidOsMessageQueue *outer$, jint capture$0) {
  return new_AndroidOsMessageQueue_$1_initWithAndroidOsMessageQueue_withInt_(outer$, capture$0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidOsMessageQueue_$1)
