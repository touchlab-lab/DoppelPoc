//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OperatorSwitch.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "rx/Observable.h"
#include "rx/Producer.h"
#include "rx/Subscriber.h"
#include "rx/Subscription.h"
#include "rx/internal/operators/NotificationLite.h"
#include "rx/internal/operators/OperatorSwitch.h"
#include "rx/observers/SerializedSubscriber.h"
#include "rx/subscriptions/SerialSubscription.h"

@class RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber;

@interface RxInternalOperatorsOperatorSwitch_SwitchSubscriber : RxSubscriber {
 @public
  RxObserversSerializedSubscriber *s_;
  RxSubscriptionsSerialSubscription *ssub_;
  id guard_;
  RxInternalOperatorsNotificationLite *nl_;
  jint index_;
  jboolean active_;
  jboolean mainDone_;
  id<JavaUtilList> queue_;
  jboolean emitting_;
  RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber *currentSubscriber_;
  jlong initialRequested_;
  volatile_jboolean infinite_;
}

- (instancetype)initWithRxSubscriber:(RxSubscriber *)child;

- (void)onNextWithId:(RxObservable *)t;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)onCompleted;

- (void)emitWithId:(id)value
           withInt:(jint)id_
withRxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber:(RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber *)innerSubscriber;

- (void)drainWithJavaUtilList:(id<JavaUtilList>)localQueue;

- (void)errorWithNSException:(NSException *)e
                     withInt:(jint)id_;
#ifdef J2OBJC_RENAME_ALIASES
#define errorWithJavaLangThrowable errorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)completeWithInt:(jint)id_;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorSwitch_SwitchSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSwitch_SwitchSubscriber, s_, RxObserversSerializedSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSwitch_SwitchSubscriber, ssub_, RxSubscriptionsSerialSubscription *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSwitch_SwitchSubscriber, guard_, id)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSwitch_SwitchSubscriber, nl_, RxInternalOperatorsNotificationLite *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSwitch_SwitchSubscriber, queue_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSwitch_SwitchSubscriber, currentSubscriber_, RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorSwitch_SwitchSubscriber_initWithRxSubscriber_(RxInternalOperatorsOperatorSwitch_SwitchSubscriber *self, RxSubscriber *child);

__attribute__((unused)) static RxInternalOperatorsOperatorSwitch_SwitchSubscriber *new_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_initWithRxSubscriber_(RxSubscriber *child) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorSwitch_SwitchSubscriber *create_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_initWithRxSubscriber_(RxSubscriber *child);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorSwitch_SwitchSubscriber)

@interface RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber : RxSubscriber {
 @public
  RxInternalOperatorsOperatorSwitch_SwitchSubscriber *this$0_;
  jlong requested_InnerSubscriber_;
  jint id__;
  jlong initialRequested_;
}

- (instancetype)initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber:(RxInternalOperatorsOperatorSwitch_SwitchSubscriber *)outer$
                                                                   withInt:(jint)id_
                                                                  withLong:(jlong)initialRequested;

- (void)onStart;

- (void)requestMoreWithLong:(jlong)n;

- (void)onNextWithId:(id)t;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)onCompleted;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber, this$0_, RxInternalOperatorsOperatorSwitch_SwitchSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_withInt_withLong_(RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber *self, RxInternalOperatorsOperatorSwitch_SwitchSubscriber *outer$, jint id_, jlong initialRequested);

__attribute__((unused)) static RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber *new_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_withInt_withLong_(RxInternalOperatorsOperatorSwitch_SwitchSubscriber *outer$, jint id_, jlong initialRequested) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber *create_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_withInt_withLong_(RxInternalOperatorsOperatorSwitch_SwitchSubscriber *outer$, jint id_, jlong initialRequested);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber)

@interface RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1 : NSObject < RxProducer > {
 @public
  RxInternalOperatorsOperatorSwitch_SwitchSubscriber *this$0_;
}

- (void)requestWithLong:(jlong)n;

- (instancetype)initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber:(RxInternalOperatorsOperatorSwitch_SwitchSubscriber *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1, this$0_, RxInternalOperatorsOperatorSwitch_SwitchSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_(RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1 *self, RxInternalOperatorsOperatorSwitch_SwitchSubscriber *outer$);

__attribute__((unused)) static RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1 *new_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_(RxInternalOperatorsOperatorSwitch_SwitchSubscriber *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1 *create_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_(RxInternalOperatorsOperatorSwitch_SwitchSubscriber *outer$);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1)

@implementation RxInternalOperatorsOperatorSwitch

- (RxSubscriber *)callWithId:(RxSubscriber *)child {
  return new_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_initWithRxSubscriber_(child);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxInternalOperatorsOperatorSwitch_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithId:", "call", "Lrx.Subscriber;", 0x1, NULL, "(Lrx/Subscriber<-TT;>;)Lrx/Subscriber<+Lrx/Observable<+TT;>;>;" },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const char *inner_classes[] = {"Lrx.internal.operators.OperatorSwitch$SwitchSubscriber;"};
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorSwitch = { 2, "OperatorSwitch", "rx.internal.operators", NULL, 0x11, 2, methods, 0, NULL, 0, NULL, 1, inner_classes, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<TT;Lrx/Observable<+TT;>;>;" };
  return &_RxInternalOperatorsOperatorSwitch;
}

@end

void RxInternalOperatorsOperatorSwitch_init(RxInternalOperatorsOperatorSwitch *self) {
  NSObject_init(self);
}

RxInternalOperatorsOperatorSwitch *new_RxInternalOperatorsOperatorSwitch_init() {
  RxInternalOperatorsOperatorSwitch *self = [RxInternalOperatorsOperatorSwitch alloc];
  RxInternalOperatorsOperatorSwitch_init(self);
  return self;
}

RxInternalOperatorsOperatorSwitch *create_RxInternalOperatorsOperatorSwitch_init() {
  return new_RxInternalOperatorsOperatorSwitch_init();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorSwitch)

@implementation RxInternalOperatorsOperatorSwitch_SwitchSubscriber

- (instancetype)initWithRxSubscriber:(RxSubscriber *)child {
  RxInternalOperatorsOperatorSwitch_SwitchSubscriber_initWithRxSubscriber_(self, child);
  return self;
}

- (void)onNextWithId:(RxObservable *)t {
  jint id_;
  jlong remainingRequest;
  @synchronized(guard_) {
    id_ = ++index_;
    active_ = true;
    if (JreLoadVolatileBoolean(&infinite_)) {
      remainingRequest = JavaLangLong_MAX_VALUE;
    }
    else {
      remainingRequest = currentSubscriber_ == nil ? initialRequested_ : currentSubscriber_->requested_InnerSubscriber_;
    }
    currentSubscriber_ = new_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_withInt_withLong_(self, id_, remainingRequest);
    currentSubscriber_->requested_InnerSubscriber_ = remainingRequest;
  }
  [((RxSubscriptionsSerialSubscription *) nil_chk(ssub_)) setWithRxSubscription:currentSubscriber_];
  (void) [((RxObservable *) nil_chk(t)) unsafeSubscribeWithRxSubscriber:currentSubscriber_];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxObserversSerializedSubscriber *) nil_chk(s_)) onErrorWithNSException:e];
  [self unsubscribe];
}

- (void)onCompleted {
  id<JavaUtilList> localQueue;
  @synchronized(guard_) {
    mainDone_ = true;
    if (active_) {
      return;
    }
    if (emitting_) {
      if (queue_ == nil) {
        queue_ = new_JavaUtilArrayList_init();
      }
      [((id<JavaUtilList>) nil_chk(queue_)) addWithId:[((RxInternalOperatorsNotificationLite *) nil_chk(nl_)) completed]];
      return;
    }
    localQueue = queue_;
    queue_ = nil;
    emitting_ = true;
  }
  [self drainWithJavaUtilList:localQueue];
  [((RxObserversSerializedSubscriber *) nil_chk(s_)) onCompleted];
  [self unsubscribe];
}

- (void)emitWithId:(id)value
           withInt:(jint)id_
withRxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber:(RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber *)innerSubscriber {
  id<JavaUtilList> localQueue;
  @synchronized(guard_) {
    if (id_ != index_) {
      return;
    }
    if (emitting_) {
      if (queue_ == nil) {
        queue_ = new_JavaUtilArrayList_init();
      }
      ((RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber *) nil_chk(innerSubscriber))->requested_InnerSubscriber_--;
      [((id<JavaUtilList>) nil_chk(queue_)) addWithId:value];
      return;
    }
    localQueue = queue_;
    queue_ = nil;
    emitting_ = true;
  }
  jboolean once = true;
  jboolean skipFinal = false;
  @try {
    do {
      [self drainWithJavaUtilList:localQueue];
      if (once) {
        once = false;
        @synchronized(guard_) {
          ((RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber *) nil_chk(innerSubscriber))->requested_InnerSubscriber_--;
        }
        [((RxObserversSerializedSubscriber *) nil_chk(s_)) onNextWithId:value];
      }
      @synchronized(guard_) {
        localQueue = queue_;
        queue_ = nil;
        if (localQueue == nil) {
          emitting_ = false;
          skipFinal = true;
          break;
        }
      }
    }
    while (![((RxObserversSerializedSubscriber *) nil_chk(s_)) isUnsubscribed]);
  }
  @finally {
    if (!skipFinal) {
      @synchronized(guard_) {
        emitting_ = false;
      }
    }
  }
}

- (void)drainWithJavaUtilList:(id<JavaUtilList>)localQueue {
  if (localQueue == nil) {
    return;
  }
  for (id __strong o in nil_chk(localQueue)) {
    if ([((RxInternalOperatorsNotificationLite *) nil_chk(nl_)) isCompletedWithId:o]) {
      [((RxObserversSerializedSubscriber *) nil_chk(s_)) onCompleted];
      break;
    }
    else if ([nl_ isErrorWithId:o]) {
      [((RxObserversSerializedSubscriber *) nil_chk(s_)) onErrorWithNSException:[nl_ getErrorWithId:o]];
      break;
    }
    else {
      id t = o;
      [((RxObserversSerializedSubscriber *) nil_chk(s_)) onNextWithId:t];
    }
  }
}

- (void)errorWithNSException:(NSException *)e
                     withInt:(jint)id_ {
  id<JavaUtilList> localQueue;
  @synchronized(guard_) {
    if (id_ != index_) {
      return;
    }
    if (emitting_) {
      if (queue_ == nil) {
        queue_ = new_JavaUtilArrayList_init();
      }
      [((id<JavaUtilList>) nil_chk(queue_)) addWithId:[((RxInternalOperatorsNotificationLite *) nil_chk(nl_)) errorWithNSException:e]];
      return;
    }
    localQueue = queue_;
    queue_ = nil;
    emitting_ = true;
  }
  [self drainWithJavaUtilList:localQueue];
  [((RxObserversSerializedSubscriber *) nil_chk(s_)) onErrorWithNSException:e];
  [self unsubscribe];
}

- (void)completeWithInt:(jint)id_ {
  id<JavaUtilList> localQueue;
  @synchronized(guard_) {
    if (id_ != index_) {
      return;
    }
    active_ = false;
    if (!mainDone_) {
      return;
    }
    if (emitting_) {
      if (queue_ == nil) {
        queue_ = new_JavaUtilArrayList_init();
      }
      [((id<JavaUtilList>) nil_chk(queue_)) addWithId:[((RxInternalOperatorsNotificationLite *) nil_chk(nl_)) completed]];
      return;
    }
    localQueue = queue_;
    queue_ = nil;
    emitting_ = true;
  }
  [self drainWithJavaUtilList:localQueue];
  [((RxObserversSerializedSubscriber *) nil_chk(s_)) onCompleted];
  [self unsubscribe];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxSubscriber:", "SwitchSubscriber", NULL, 0x1, NULL, "(Lrx/Subscriber<-TT;>;)V" },
    { "onNextWithId:", "onNext", "V", 0x1, NULL, "(Lrx/Observable<+TT;>;)V" },
    { "onErrorWithNSException:", "onError", "V", 0x1, NULL, NULL },
    { "onCompleted", NULL, "V", 0x1, NULL, NULL },
    { "emitWithId:withInt:withRxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber:", "emit", "V", 0x0, NULL, "(TT;ILrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)V" },
    { "drainWithJavaUtilList:", "drain", "V", 0x0, NULL, "(Ljava/util/List<Ljava/lang/Object;>;)V" },
    { "errorWithNSException:withInt:", "error", "V", 0x0, NULL, NULL },
    { "completeWithInt:", "complete", "V", 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "s_", NULL, 0x10, "Lrx.observers.SerializedSubscriber;", NULL, "Lrx/observers/SerializedSubscriber<TT;>;", .constantValue.asLong = 0 },
    { "ssub_", NULL, 0x10, "Lrx.subscriptions.SerialSubscription;", NULL, NULL, .constantValue.asLong = 0 },
    { "guard_", NULL, 0x10, "Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
    { "nl_", NULL, 0x10, "Lrx.internal.operators.NotificationLite;", NULL, "Lrx/internal/operators/NotificationLite<*>;", .constantValue.asLong = 0 },
    { "index_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "active_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "mainDone_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "queue_", NULL, 0x0, "Ljava.util.List;", NULL, "Ljava/util/List<Ljava/lang/Object;>;", .constantValue.asLong = 0 },
    { "emitting_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "currentSubscriber_", NULL, 0x0, "Lrx.internal.operators.OperatorSwitch$SwitchSubscriber$InnerSubscriber;", NULL, NULL, .constantValue.asLong = 0 },
    { "initialRequested_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "infinite_", NULL, 0x40, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lrx.Observable;"};
  static const char *inner_classes[] = {"Lrx.internal.operators.OperatorSwitch$SwitchSubscriber$InnerSubscriber;"};
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorSwitch_SwitchSubscriber = { 2, "SwitchSubscriber", "rx.internal.operators", "OperatorSwitch", 0x1a, 8, methods, 12, fields, 1, superclass_type_args, 1, inner_classes, NULL, "<T:Ljava/lang/Object;>Lrx/Subscriber<Lrx/Observable<+TT;>;>;" };
  return &_RxInternalOperatorsOperatorSwitch_SwitchSubscriber;
}

@end

void RxInternalOperatorsOperatorSwitch_SwitchSubscriber_initWithRxSubscriber_(RxInternalOperatorsOperatorSwitch_SwitchSubscriber *self, RxSubscriber *child) {
  RxSubscriber_initWithRxSubscriber_(self, child);
  self->guard_ = new_NSObject_init();
  self->nl_ = RxInternalOperatorsNotificationLite_instance();
  JreAssignVolatileBoolean(&self->infinite_, false);
  self->s_ = new_RxObserversSerializedSubscriber_initWithRxSubscriber_(child);
  self->ssub_ = new_RxSubscriptionsSerialSubscription_init();
  [((RxSubscriber *) nil_chk(child)) addWithRxSubscription:self->ssub_];
  [child setProducerWithRxProducer:new_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_(self)];
}

RxInternalOperatorsOperatorSwitch_SwitchSubscriber *new_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_initWithRxSubscriber_(RxSubscriber *child) {
  RxInternalOperatorsOperatorSwitch_SwitchSubscriber *self = [RxInternalOperatorsOperatorSwitch_SwitchSubscriber alloc];
  RxInternalOperatorsOperatorSwitch_SwitchSubscriber_initWithRxSubscriber_(self, child);
  return self;
}

RxInternalOperatorsOperatorSwitch_SwitchSubscriber *create_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_initWithRxSubscriber_(RxSubscriber *child) {
  return new_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_initWithRxSubscriber_(child);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorSwitch_SwitchSubscriber)

@implementation RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber

- (instancetype)initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber:(RxInternalOperatorsOperatorSwitch_SwitchSubscriber *)outer$
                                                                   withInt:(jint)id_
                                                                  withLong:(jlong)initialRequested {
  RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_withInt_withLong_(self, outer$, id_, initialRequested);
  return self;
}

- (void)onStart {
  [self requestMoreWithLong:initialRequested_];
}

- (void)requestMoreWithLong:(jlong)n {
  [self requestWithLong:n];
}

- (void)onNextWithId:(id)t {
  [this$0_ emitWithId:t withInt:id__ withRxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber:self];
}

- (void)onErrorWithNSException:(NSException *)e {
  [this$0_ errorWithNSException:e withInt:id__];
}

- (void)onCompleted {
  [this$0_ completeWithInt:id__];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber:withInt:withLong:", "InnerSubscriber", NULL, 0x1, NULL, NULL },
    { "onStart", NULL, "V", 0x1, NULL, NULL },
    { "requestMoreWithLong:", "requestMore", "V", 0x1, NULL, NULL },
    { "onNextWithId:", "onNext", "V", 0x1, NULL, "(TT;)V" },
    { "onErrorWithNSException:", "onError", "V", 0x1, NULL, NULL },
    { "onCompleted", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lrx.internal.operators.OperatorSwitch$SwitchSubscriber;", NULL, NULL, .constantValue.asLong = 0 },
    { "requested_InnerSubscriber_", "requested", 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "id__", "id", 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "initialRequested_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TT;"};
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber = { 2, "InnerSubscriber", "rx.internal.operators", "OperatorSwitch$SwitchSubscriber", 0x10, 6, methods, 4, fields, 1, superclass_type_args, 0, NULL, NULL, "Lrx/Subscriber<TT;>;" };
  return &_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber;
}

@end

void RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_withInt_withLong_(RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber *self, RxInternalOperatorsOperatorSwitch_SwitchSubscriber *outer$, jint id_, jlong initialRequested) {
  self->this$0_ = outer$;
  RxSubscriber_init(self);
  self->requested_InnerSubscriber_ = 0;
  self->id__ = id_;
  self->initialRequested_ = initialRequested;
}

RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber *new_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_withInt_withLong_(RxInternalOperatorsOperatorSwitch_SwitchSubscriber *outer$, jint id_, jlong initialRequested) {
  RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber *self = [RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber alloc];
  RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_withInt_withLong_(self, outer$, id_, initialRequested);
  return self;
}

RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber *create_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_withInt_withLong_(RxInternalOperatorsOperatorSwitch_SwitchSubscriber *outer$, jint id_, jlong initialRequested) {
  return new_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_withInt_withLong_(outer$, id_, initialRequested);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber)

@implementation RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1

- (void)requestWithLong:(jlong)n {
  if (JreLoadVolatileBoolean(&this$0_->infinite_)) {
    return;
  }
  if (n == JavaLangLong_MAX_VALUE) {
    JreAssignVolatileBoolean(&this$0_->infinite_, true);
  }
  RxInternalOperatorsOperatorSwitch_SwitchSubscriber_InnerSubscriber *localSubscriber;
  @synchronized(this$0_->guard_) {
    localSubscriber = this$0_->currentSubscriber_;
    if (this$0_->currentSubscriber_ == nil) {
      this$0_->initialRequested_ = n;
    }
    else {
      this$0_->currentSubscriber_->requested_InnerSubscriber_ += n;
    }
  }
  if (localSubscriber != nil) {
    [localSubscriber requestMoreWithLong:n];
  }
}

- (instancetype)initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber:(RxInternalOperatorsOperatorSwitch_SwitchSubscriber *)outer$ {
  RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "requestWithLong:", "request", "V", 0x1, NULL, NULL },
    { "initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lrx.internal.operators.OperatorSwitch$SwitchSubscriber;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxInternalOperatorsOperatorSwitch_SwitchSubscriber", "initWithRxSubscriber:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1 = { 2, "", "rx.internal.operators", "OperatorSwitch$SwitchSubscriber", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1;
}

@end

void RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_(RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1 *self, RxInternalOperatorsOperatorSwitch_SwitchSubscriber *outer$) {
  self->this$0_ = outer$;
  NSObject_init(self);
}

RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1 *new_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_(RxInternalOperatorsOperatorSwitch_SwitchSubscriber *outer$) {
  RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1 *self = [RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1 alloc];
  RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_(self, outer$);
  return self;
}

RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1 *create_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_(RxInternalOperatorsOperatorSwitch_SwitchSubscriber *outer$) {
  return new_RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1_initWithRxInternalOperatorsOperatorSwitch_SwitchSubscriber_(outer$);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorSwitch_SwitchSubscriber_$1)
