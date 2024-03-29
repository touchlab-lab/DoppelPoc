//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OnSubscribeToObservableFuture.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalStateException.h"
#include "java/util/concurrent/Future.h"
#include "java/util/concurrent/TimeUnit.h"
#include "rx/Observable.h"
#include "rx/Subscriber.h"
#include "rx/Subscription.h"
#include "rx/functions/Action0.h"
#include "rx/internal/operators/OnSubscribeToObservableFuture.h"
#include "rx/subscriptions/Subscriptions.h"

@interface RxInternalOperatorsOnSubscribeToObservableFuture ()

- (instancetype)init;

@end

__attribute__((unused)) static void RxInternalOperatorsOnSubscribeToObservableFuture_init(RxInternalOperatorsOnSubscribeToObservableFuture *self);

__attribute__((unused)) static RxInternalOperatorsOnSubscribeToObservableFuture *new_RxInternalOperatorsOnSubscribeToObservableFuture_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOnSubscribeToObservableFuture *create_RxInternalOperatorsOnSubscribeToObservableFuture_init();

@interface RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture () {
 @public
  id<JavaUtilConcurrentFuture> that_;
  jlong time_;
  JavaUtilConcurrentTimeUnit *unit_;
}

@end

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture, that_, id<JavaUtilConcurrentFuture>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture, unit_, JavaUtilConcurrentTimeUnit *)

@interface RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1 : NSObject < RxFunctionsAction0 > {
 @public
  RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *this$0_;
}

- (void)call;

- (instancetype)initWithRxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture:(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1, this$0_, RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *)

__attribute__((unused)) static void RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1_initWithRxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1 *self, RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *outer$);

__attribute__((unused)) static RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1 *new_RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1_initWithRxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1 *create_RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1_initWithRxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *outer$);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1)

@implementation RxInternalOperatorsOnSubscribeToObservableFuture

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxInternalOperatorsOnSubscribeToObservableFuture_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (id<RxObservable_OnSubscribe>)toObservableFutureWithJavaUtilConcurrentFuture:(id<JavaUtilConcurrentFuture>)that {
  return RxInternalOperatorsOnSubscribeToObservableFuture_toObservableFutureWithJavaUtilConcurrentFuture_(that);
}

+ (id<RxObservable_OnSubscribe>)toObservableFutureWithJavaUtilConcurrentFuture:(id<JavaUtilConcurrentFuture>)that
                                                                      withLong:(jlong)time
                                                withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit {
  return RxInternalOperatorsOnSubscribeToObservableFuture_toObservableFutureWithJavaUtilConcurrentFuture_withLong_withJavaUtilConcurrentTimeUnit_(that, time, unit);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "OnSubscribeToObservableFuture", NULL, 0x2, NULL, NULL },
    { "toObservableFutureWithJavaUtilConcurrentFuture:", "toObservableFuture", "Lrx.Observable$OnSubscribe;", 0x9, NULL, "<T:Ljava/lang/Object;>(Ljava/util/concurrent/Future<+TT;>;)Lrx/Observable$OnSubscribe<TT;>;" },
    { "toObservableFutureWithJavaUtilConcurrentFuture:withLong:withJavaUtilConcurrentTimeUnit:", "toObservableFuture", "Lrx.Observable$OnSubscribe;", 0x9, NULL, "<T:Ljava/lang/Object;>(Ljava/util/concurrent/Future<+TT;>;JLjava/util/concurrent/TimeUnit;)Lrx/Observable$OnSubscribe<TT;>;" },
  };
  static const char *inner_classes[] = {"Lrx.internal.operators.OnSubscribeToObservableFuture$ToObservableFuture;"};
  static const J2ObjcClassInfo _RxInternalOperatorsOnSubscribeToObservableFuture = { 2, "OnSubscribeToObservableFuture", "rx.internal.operators", NULL, 0x11, 3, methods, 0, NULL, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_RxInternalOperatorsOnSubscribeToObservableFuture;
}

@end

void RxInternalOperatorsOnSubscribeToObservableFuture_init(RxInternalOperatorsOnSubscribeToObservableFuture *self) {
  NSObject_init(self);
  @throw new_JavaLangIllegalStateException_initWithNSString_(@"No instances!");
}

RxInternalOperatorsOnSubscribeToObservableFuture *new_RxInternalOperatorsOnSubscribeToObservableFuture_init() {
  RxInternalOperatorsOnSubscribeToObservableFuture *self = [RxInternalOperatorsOnSubscribeToObservableFuture alloc];
  RxInternalOperatorsOnSubscribeToObservableFuture_init(self);
  return self;
}

RxInternalOperatorsOnSubscribeToObservableFuture *create_RxInternalOperatorsOnSubscribeToObservableFuture_init() {
  return new_RxInternalOperatorsOnSubscribeToObservableFuture_init();
}

id<RxObservable_OnSubscribe> RxInternalOperatorsOnSubscribeToObservableFuture_toObservableFutureWithJavaUtilConcurrentFuture_(id<JavaUtilConcurrentFuture> that) {
  RxInternalOperatorsOnSubscribeToObservableFuture_initialize();
  return new_RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_initWithJavaUtilConcurrentFuture_(that);
}

id<RxObservable_OnSubscribe> RxInternalOperatorsOnSubscribeToObservableFuture_toObservableFutureWithJavaUtilConcurrentFuture_withLong_withJavaUtilConcurrentTimeUnit_(id<JavaUtilConcurrentFuture> that, jlong time, JavaUtilConcurrentTimeUnit *unit) {
  RxInternalOperatorsOnSubscribeToObservableFuture_initialize();
  return new_RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_initWithJavaUtilConcurrentFuture_withLong_withJavaUtilConcurrentTimeUnit_(that, time, unit);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOnSubscribeToObservableFuture)

@implementation RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture

- (instancetype)initWithJavaUtilConcurrentFuture:(id<JavaUtilConcurrentFuture>)that {
  RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_initWithJavaUtilConcurrentFuture_(self, that);
  return self;
}

- (instancetype)initWithJavaUtilConcurrentFuture:(id<JavaUtilConcurrentFuture>)that
                                        withLong:(jlong)time
                  withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit {
  RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_initWithJavaUtilConcurrentFuture_withLong_withJavaUtilConcurrentTimeUnit_(self, that, time, unit);
  return self;
}

- (void)callWithId:(RxSubscriber *)subscriber {
  [((RxSubscriber *) nil_chk(subscriber)) addWithRxSubscription:RxSubscriptionsSubscriptions_createWithRxFunctionsAction0_(new_RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1_initWithRxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_(self))];
  @try {
    if ([subscriber isUnsubscribed]) {
      return;
    }
    id value = (unit_ == nil) ? [((id<JavaUtilConcurrentFuture>) nil_chk(that_)) get] : [((id<JavaUtilConcurrentFuture>) nil_chk(that_)) getWithLong:time_ withJavaUtilConcurrentTimeUnit:unit_];
    [subscriber onNextWithId:value];
    [subscriber onCompleted];
  }
  @catch (NSException *e) {
    if ([subscriber isUnsubscribed]) {
      return;
    }
    [subscriber onErrorWithNSException:e];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilConcurrentFuture:", "ToObservableFuture", NULL, 0x1, NULL, "(Ljava/util/concurrent/Future<+TT;>;)V" },
    { "initWithJavaUtilConcurrentFuture:withLong:withJavaUtilConcurrentTimeUnit:", "ToObservableFuture", NULL, 0x1, NULL, "(Ljava/util/concurrent/Future<+TT;>;JLjava/util/concurrent/TimeUnit;)V" },
    { "callWithId:", "call", "V", 0x1, NULL, "(Lrx/Subscriber<-TT;>;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "that_", NULL, 0x12, "Ljava.util.concurrent.Future;", NULL, "Ljava/util/concurrent/Future<+TT;>;", .constantValue.asLong = 0 },
    { "time_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "unit_", NULL, 0x12, "Ljava.util.concurrent.TimeUnit;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture = { 2, "ToObservableFuture", "rx.internal.operators", "OnSubscribeToObservableFuture", 0x8, 3, methods, 3, fields, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$OnSubscribe<TT;>;" };
  return &_RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture;
}

@end

void RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_initWithJavaUtilConcurrentFuture_(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *self, id<JavaUtilConcurrentFuture> that) {
  NSObject_init(self);
  self->that_ = that;
  self->time_ = 0;
  self->unit_ = nil;
}

RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *new_RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_initWithJavaUtilConcurrentFuture_(id<JavaUtilConcurrentFuture> that) {
  RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *self = [RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture alloc];
  RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_initWithJavaUtilConcurrentFuture_(self, that);
  return self;
}

RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *create_RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_initWithJavaUtilConcurrentFuture_(id<JavaUtilConcurrentFuture> that) {
  return new_RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_initWithJavaUtilConcurrentFuture_(that);
}

void RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_initWithJavaUtilConcurrentFuture_withLong_withJavaUtilConcurrentTimeUnit_(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *self, id<JavaUtilConcurrentFuture> that, jlong time, JavaUtilConcurrentTimeUnit *unit) {
  NSObject_init(self);
  self->that_ = that;
  self->time_ = time;
  self->unit_ = unit;
}

RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *new_RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_initWithJavaUtilConcurrentFuture_withLong_withJavaUtilConcurrentTimeUnit_(id<JavaUtilConcurrentFuture> that, jlong time, JavaUtilConcurrentTimeUnit *unit) {
  RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *self = [RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture alloc];
  RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_initWithJavaUtilConcurrentFuture_withLong_withJavaUtilConcurrentTimeUnit_(self, that, time, unit);
  return self;
}

RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *create_RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_initWithJavaUtilConcurrentFuture_withLong_withJavaUtilConcurrentTimeUnit_(id<JavaUtilConcurrentFuture> that, jlong time, JavaUtilConcurrentTimeUnit *unit) {
  return new_RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_initWithJavaUtilConcurrentFuture_withLong_withJavaUtilConcurrentTimeUnit_(that, time, unit);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture)

@implementation RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1

- (void)call {
  [((id<JavaUtilConcurrentFuture>) nil_chk(this$0_->that_)) cancelWithBoolean:true];
}

- (instancetype)initWithRxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture:(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *)outer$ {
  RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1_initWithRxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "call", NULL, "V", 0x1, NULL, NULL },
    { "initWithRxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lrx.internal.operators.OnSubscribeToObservableFuture$ToObservableFuture;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture", "callWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1 = { 2, "", "rx.internal.operators", "OnSubscribeToObservableFuture$ToObservableFuture", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1;
}

@end

void RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1_initWithRxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1 *self, RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *outer$) {
  self->this$0_ = outer$;
  NSObject_init(self);
}

RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1 *new_RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1_initWithRxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *outer$) {
  RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1 *self = [RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1 alloc];
  RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1_initWithRxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_(self, outer$);
  return self;
}

RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1 *create_RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1_initWithRxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture *outer$) {
  return new_RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1_initWithRxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_(outer$);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOnSubscribeToObservableFuture_ToObservableFuture_$1)
