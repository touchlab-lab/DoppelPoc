//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OperatorDebounceWithSelector.java
//

#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "rx/Observable.h"
#include "rx/Subscriber.h"
#include "rx/Subscription.h"
#include "rx/functions/Func1.h"
#include "rx/internal/operators/OperatorDebounceWithSelector.h"
#include "rx/internal/operators/OperatorDebounceWithTime.h"
#include "rx/observers/SerializedSubscriber.h"
#include "rx/subscriptions/SerialSubscription.h"

@interface RxInternalOperatorsOperatorDebounceWithSelector_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorDebounceWithSelector *this$0_;
  RxInternalOperatorsOperatorDebounceWithTime_DebounceState *state_;
  RxSubscriber *self__;
  RxObserversSerializedSubscriber *val$s_;
  RxSubscriptionsSerialSubscription *val$ssub_;
}

- (void)onStart;

- (void)onNextWithId:(id)t;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)onCompleted;

- (instancetype)initWithRxInternalOperatorsOperatorDebounceWithSelector:(RxInternalOperatorsOperatorDebounceWithSelector *)outer$
                                    withRxObserversSerializedSubscriber:(RxObserversSerializedSubscriber *)capture$0
                                  withRxSubscriptionsSerialSubscription:(RxSubscriptionsSerialSubscription *)capture$1
                                                       withRxSubscriber:(RxSubscriber *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorDebounceWithSelector_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorDebounceWithSelector_$1, this$0_, RxInternalOperatorsOperatorDebounceWithSelector *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorDebounceWithSelector_$1, state_, RxInternalOperatorsOperatorDebounceWithTime_DebounceState *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorDebounceWithSelector_$1, self__, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorDebounceWithSelector_$1, val$s_, RxObserversSerializedSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorDebounceWithSelector_$1, val$ssub_, RxSubscriptionsSerialSubscription *)

__attribute__((unused)) static void RxInternalOperatorsOperatorDebounceWithSelector_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_withRxObserversSerializedSubscriber_withRxSubscriptionsSerialSubscription_withRxSubscriber_(RxInternalOperatorsOperatorDebounceWithSelector_$1 *self, RxInternalOperatorsOperatorDebounceWithSelector *outer$, RxObserversSerializedSubscriber *capture$0, RxSubscriptionsSerialSubscription *capture$1, RxSubscriber *arg$0);

__attribute__((unused)) static RxInternalOperatorsOperatorDebounceWithSelector_$1 *new_RxInternalOperatorsOperatorDebounceWithSelector_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_withRxObserversSerializedSubscriber_withRxSubscriptionsSerialSubscription_withRxSubscriber_(RxInternalOperatorsOperatorDebounceWithSelector *outer$, RxObserversSerializedSubscriber *capture$0, RxSubscriptionsSerialSubscription *capture$1, RxSubscriber *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorDebounceWithSelector_$1 *create_RxInternalOperatorsOperatorDebounceWithSelector_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_withRxObserversSerializedSubscriber_withRxSubscriptionsSerialSubscription_withRxSubscriber_(RxInternalOperatorsOperatorDebounceWithSelector *outer$, RxObserversSerializedSubscriber *capture$0, RxSubscriptionsSerialSubscription *capture$1, RxSubscriber *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorDebounceWithSelector_$1)

@interface RxInternalOperatorsOperatorDebounceWithSelector_$1_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorDebounceWithSelector_$1 *this$0_;
  jint val$index_;
}

- (void)onNextWithId:(id)t;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)onCompleted;

- (instancetype)initWithRxInternalOperatorsOperatorDebounceWithSelector_$1:(RxInternalOperatorsOperatorDebounceWithSelector_$1 *)outer$
                                                                   withInt:(jint)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorDebounceWithSelector_$1_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorDebounceWithSelector_$1_$1, this$0_, RxInternalOperatorsOperatorDebounceWithSelector_$1 *)

__attribute__((unused)) static void RxInternalOperatorsOperatorDebounceWithSelector_$1_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_$1_withInt_(RxInternalOperatorsOperatorDebounceWithSelector_$1_$1 *self, RxInternalOperatorsOperatorDebounceWithSelector_$1 *outer$, jint capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorDebounceWithSelector_$1_$1 *new_RxInternalOperatorsOperatorDebounceWithSelector_$1_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_$1_withInt_(RxInternalOperatorsOperatorDebounceWithSelector_$1 *outer$, jint capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorDebounceWithSelector_$1_$1 *create_RxInternalOperatorsOperatorDebounceWithSelector_$1_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_$1_withInt_(RxInternalOperatorsOperatorDebounceWithSelector_$1 *outer$, jint capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorDebounceWithSelector_$1_$1)

@implementation RxInternalOperatorsOperatorDebounceWithSelector

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)selector {
  RxInternalOperatorsOperatorDebounceWithSelector_initWithRxFunctionsFunc1_(self, selector);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)child {
  RxObserversSerializedSubscriber *s = new_RxObserversSerializedSubscriber_initWithRxSubscriber_(child);
  RxSubscriptionsSerialSubscription *ssub = new_RxSubscriptionsSerialSubscription_init();
  [((RxSubscriber *) nil_chk(child)) addWithRxSubscription:ssub];
  return new_RxInternalOperatorsOperatorDebounceWithSelector_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_withRxObserversSerializedSubscriber_withRxSubscriptionsSerialSubscription_withRxSubscriber_(self, s, ssub, child);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxFunctionsFunc1:", "OperatorDebounceWithSelector", NULL, 0x1, NULL, "(Lrx/functions/Func1<-TT;+Lrx/Observable<TU;>;>;)V" },
    { "callWithId:", "call", "Lrx.Subscriber;", 0x1, NULL, "(Lrx/Subscriber<-TT;>;)Lrx/Subscriber<-TT;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "selector_", NULL, 0x10, "Lrx.functions.Func1;", NULL, "Lrx/functions/Func1<-TT;+Lrx/Observable<TU;>;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorDebounceWithSelector = { 2, "OperatorDebounceWithSelector", "rx.internal.operators", NULL, 0x11, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;U:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<TT;TT;>;" };
  return &_RxInternalOperatorsOperatorDebounceWithSelector;
}

@end

void RxInternalOperatorsOperatorDebounceWithSelector_initWithRxFunctionsFunc1_(RxInternalOperatorsOperatorDebounceWithSelector *self, id<RxFunctionsFunc1> selector) {
  NSObject_init(self);
  self->selector_ = selector;
}

RxInternalOperatorsOperatorDebounceWithSelector *new_RxInternalOperatorsOperatorDebounceWithSelector_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> selector) {
  RxInternalOperatorsOperatorDebounceWithSelector *self = [RxInternalOperatorsOperatorDebounceWithSelector alloc];
  RxInternalOperatorsOperatorDebounceWithSelector_initWithRxFunctionsFunc1_(self, selector);
  return self;
}

RxInternalOperatorsOperatorDebounceWithSelector *create_RxInternalOperatorsOperatorDebounceWithSelector_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> selector) {
  return new_RxInternalOperatorsOperatorDebounceWithSelector_initWithRxFunctionsFunc1_(selector);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorDebounceWithSelector)

@implementation RxInternalOperatorsOperatorDebounceWithSelector_$1

- (void)onStart {
  [self requestWithLong:JavaLangLong_MAX_VALUE];
}

- (void)onNextWithId:(id)t {
  RxObservable *debouncer;
  @try {
    debouncer = [((id<RxFunctionsFunc1>) nil_chk(this$0_->selector_)) callWithId:t];
  }
  @catch (NSException *e) {
    [self onErrorWithNSException:e];
    return;
  }
  jint index = [((RxInternalOperatorsOperatorDebounceWithTime_DebounceState *) nil_chk(state_)) nextWithId:t];
  RxSubscriber *debounceSubscriber = new_RxInternalOperatorsOperatorDebounceWithSelector_$1_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_$1_withInt_(self, index);
  [((RxSubscriptionsSerialSubscription *) nil_chk(val$ssub_)) setWithRxSubscription:debounceSubscriber];
  (void) [((RxObservable *) nil_chk(debouncer)) unsafeSubscribeWithRxSubscriber:debounceSubscriber];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxObserversSerializedSubscriber *) nil_chk(val$s_)) onErrorWithNSException:e];
  [self unsubscribe];
  [((RxInternalOperatorsOperatorDebounceWithTime_DebounceState *) nil_chk(state_)) clear];
}

- (void)onCompleted {
  [((RxInternalOperatorsOperatorDebounceWithTime_DebounceState *) nil_chk(state_)) emitAndCompleteWithRxSubscriber:val$s_ withRxSubscriber:self];
}

- (instancetype)initWithRxInternalOperatorsOperatorDebounceWithSelector:(RxInternalOperatorsOperatorDebounceWithSelector *)outer$
                                    withRxObserversSerializedSubscriber:(RxObserversSerializedSubscriber *)capture$0
                                  withRxSubscriptionsSerialSubscription:(RxSubscriptionsSerialSubscription *)capture$1
                                                       withRxSubscriber:(RxSubscriber *)arg$0 {
  RxInternalOperatorsOperatorDebounceWithSelector_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_withRxObserversSerializedSubscriber_withRxSubscriptionsSerialSubscription_withRxSubscriber_(self, outer$, capture$0, capture$1, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onStart", NULL, "V", 0x1, NULL, NULL },
    { "onNextWithId:", "onNext", "V", 0x1, NULL, "(TT;)V" },
    { "onErrorWithNSException:", "onError", "V", 0x1, NULL, NULL },
    { "onCompleted", NULL, "V", 0x1, NULL, NULL },
    { "initWithRxInternalOperatorsOperatorDebounceWithSelector:withRxObserversSerializedSubscriber:withRxSubscriptionsSerialSubscription:withRxSubscriber:", "", NULL, 0x0, NULL, "(Lrx/internal/operators/OperatorDebounceWithSelector;Lrx/observers/SerializedSubscriber<TT;>;Lrx/subscriptions/SerialSubscription;Lrx/Subscriber<*>;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lrx.internal.operators.OperatorDebounceWithSelector;", NULL, NULL, .constantValue.asLong = 0 },
    { "state_", NULL, 0x10, "Lrx.internal.operators.OperatorDebounceWithTime$DebounceState;", NULL, "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;", .constantValue.asLong = 0 },
    { "self__", "self", 0x10, "Lrx.Subscriber;", NULL, "Lrx/Subscriber<*>;", .constantValue.asLong = 0 },
    { "val$s_", NULL, 0x1012, "Lrx.observers.SerializedSubscriber;", NULL, "Lrx/observers/SerializedSubscriber<TT;>;", .constantValue.asLong = 0 },
    { "val$ssub_", NULL, 0x1012, "Lrx.subscriptions.SerialSubscription;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TT;"};
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxInternalOperatorsOperatorDebounceWithSelector", "callWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorDebounceWithSelector_$1 = { 2, "", "rx.internal.operators", "OperatorDebounceWithSelector", 0x8008, 5, methods, 5, fields, 1, superclass_type_args, 0, NULL, &enclosing_method, "Lrx/Subscriber<TT;>;" };
  return &_RxInternalOperatorsOperatorDebounceWithSelector_$1;
}

@end

void RxInternalOperatorsOperatorDebounceWithSelector_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_withRxObserversSerializedSubscriber_withRxSubscriptionsSerialSubscription_withRxSubscriber_(RxInternalOperatorsOperatorDebounceWithSelector_$1 *self, RxInternalOperatorsOperatorDebounceWithSelector *outer$, RxObserversSerializedSubscriber *capture$0, RxSubscriptionsSerialSubscription *capture$1, RxSubscriber *arg$0) {
  self->this$0_ = outer$;
  self->val$s_ = capture$0;
  self->val$ssub_ = capture$1;
  RxSubscriber_initWithRxSubscriber_(self, arg$0);
  self->state_ = new_RxInternalOperatorsOperatorDebounceWithTime_DebounceState_init();
  self->self__ = self;
}

RxInternalOperatorsOperatorDebounceWithSelector_$1 *new_RxInternalOperatorsOperatorDebounceWithSelector_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_withRxObserversSerializedSubscriber_withRxSubscriptionsSerialSubscription_withRxSubscriber_(RxInternalOperatorsOperatorDebounceWithSelector *outer$, RxObserversSerializedSubscriber *capture$0, RxSubscriptionsSerialSubscription *capture$1, RxSubscriber *arg$0) {
  RxInternalOperatorsOperatorDebounceWithSelector_$1 *self = [RxInternalOperatorsOperatorDebounceWithSelector_$1 alloc];
  RxInternalOperatorsOperatorDebounceWithSelector_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_withRxObserversSerializedSubscriber_withRxSubscriptionsSerialSubscription_withRxSubscriber_(self, outer$, capture$0, capture$1, arg$0);
  return self;
}

RxInternalOperatorsOperatorDebounceWithSelector_$1 *create_RxInternalOperatorsOperatorDebounceWithSelector_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_withRxObserversSerializedSubscriber_withRxSubscriptionsSerialSubscription_withRxSubscriber_(RxInternalOperatorsOperatorDebounceWithSelector *outer$, RxObserversSerializedSubscriber *capture$0, RxSubscriptionsSerialSubscription *capture$1, RxSubscriber *arg$0) {
  return new_RxInternalOperatorsOperatorDebounceWithSelector_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_withRxObserversSerializedSubscriber_withRxSubscriptionsSerialSubscription_withRxSubscriber_(outer$, capture$0, capture$1, arg$0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorDebounceWithSelector_$1)

@implementation RxInternalOperatorsOperatorDebounceWithSelector_$1_$1

- (void)onNextWithId:(id)t {
  [self onCompleted];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxSubscriber *) nil_chk(this$0_->self__)) onErrorWithNSException:e];
}

- (void)onCompleted {
  [((RxInternalOperatorsOperatorDebounceWithTime_DebounceState *) nil_chk(this$0_->state_)) emitWithInt:val$index_ withRxSubscriber:this$0_->val$s_ withRxSubscriber:this$0_->self__];
  [self unsubscribe];
}

- (instancetype)initWithRxInternalOperatorsOperatorDebounceWithSelector_$1:(RxInternalOperatorsOperatorDebounceWithSelector_$1 *)outer$
                                                                   withInt:(jint)capture$0 {
  RxInternalOperatorsOperatorDebounceWithSelector_$1_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_$1_withInt_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onNextWithId:", "onNext", "V", 0x1, NULL, "(TU;)V" },
    { "onErrorWithNSException:", "onError", "V", 0x1, NULL, NULL },
    { "onCompleted", NULL, "V", 0x1, NULL, NULL },
    { "initWithRxInternalOperatorsOperatorDebounceWithSelector_$1:withInt:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lrx.internal.operators.OperatorDebounceWithSelector$1;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$index_", NULL, 0x1012, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TU;"};
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxInternalOperatorsOperatorDebounceWithSelector_$1", "onNextWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorDebounceWithSelector_$1_$1 = { 2, "", "rx.internal.operators", "OperatorDebounceWithSelector$", 0x8008, 4, methods, 2, fields, 1, superclass_type_args, 0, NULL, &enclosing_method, "Lrx/Subscriber<TU;>;" };
  return &_RxInternalOperatorsOperatorDebounceWithSelector_$1_$1;
}

@end

void RxInternalOperatorsOperatorDebounceWithSelector_$1_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_$1_withInt_(RxInternalOperatorsOperatorDebounceWithSelector_$1_$1 *self, RxInternalOperatorsOperatorDebounceWithSelector_$1 *outer$, jint capture$0) {
  self->this$0_ = outer$;
  self->val$index_ = capture$0;
  RxSubscriber_init(self);
}

RxInternalOperatorsOperatorDebounceWithSelector_$1_$1 *new_RxInternalOperatorsOperatorDebounceWithSelector_$1_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_$1_withInt_(RxInternalOperatorsOperatorDebounceWithSelector_$1 *outer$, jint capture$0) {
  RxInternalOperatorsOperatorDebounceWithSelector_$1_$1 *self = [RxInternalOperatorsOperatorDebounceWithSelector_$1_$1 alloc];
  RxInternalOperatorsOperatorDebounceWithSelector_$1_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_$1_withInt_(self, outer$, capture$0);
  return self;
}

RxInternalOperatorsOperatorDebounceWithSelector_$1_$1 *create_RxInternalOperatorsOperatorDebounceWithSelector_$1_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_$1_withInt_(RxInternalOperatorsOperatorDebounceWithSelector_$1 *outer$, jint capture$0) {
  return new_RxInternalOperatorsOperatorDebounceWithSelector_$1_$1_initWithRxInternalOperatorsOperatorDebounceWithSelector_$1_withInt_(outer$, capture$0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorDebounceWithSelector_$1_$1)
