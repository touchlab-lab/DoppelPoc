//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OperatorTimeInterval.java
//

#include "J2ObjC_source.h"
#include "rx/Scheduler.h"
#include "rx/Subscriber.h"
#include "rx/internal/operators/OperatorTimeInterval.h"
#include "rx/schedulers/TimeInterval.h"

@interface RxInternalOperatorsOperatorTimeInterval () {
 @public
  RxScheduler *scheduler_;
}

@end

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTimeInterval, scheduler_, RxScheduler *)

@interface RxInternalOperatorsOperatorTimeInterval_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorTimeInterval *this$0_;
  jlong lastTimestamp_;
  RxSubscriber *val$subscriber_;
}

- (void)onNextWithId:(id)args;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (instancetype)initWithRxInternalOperatorsOperatorTimeInterval:(RxInternalOperatorsOperatorTimeInterval *)outer$
                                               withRxSubscriber:(RxSubscriber *)capture$0
                                               withRxSubscriber:(RxSubscriber *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorTimeInterval_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTimeInterval_$1, this$0_, RxInternalOperatorsOperatorTimeInterval *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTimeInterval_$1, val$subscriber_, RxSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorTimeInterval_$1 *self, RxInternalOperatorsOperatorTimeInterval *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0);

__attribute__((unused)) static RxInternalOperatorsOperatorTimeInterval_$1 *new_RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorTimeInterval *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorTimeInterval_$1 *create_RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorTimeInterval *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorTimeInterval_$1)

@implementation RxInternalOperatorsOperatorTimeInterval

- (instancetype)initWithRxScheduler:(RxScheduler *)scheduler {
  RxInternalOperatorsOperatorTimeInterval_initWithRxScheduler_(self, scheduler);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)subscriber {
  return new_RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(self, subscriber, subscriber);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxScheduler:", "OperatorTimeInterval", NULL, 0x1, NULL, NULL },
    { "callWithId:", "call", "Lrx.Subscriber;", 0x1, NULL, "(Lrx/Subscriber<-Lrx/schedulers/TimeInterval<TT;>;>;)Lrx/Subscriber<-TT;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "scheduler_", NULL, 0x12, "Lrx.Scheduler;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorTimeInterval = { 2, "OperatorTimeInterval", "rx.internal.operators", NULL, 0x11, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<Lrx/schedulers/TimeInterval<TT;>;TT;>;" };
  return &_RxInternalOperatorsOperatorTimeInterval;
}

@end

void RxInternalOperatorsOperatorTimeInterval_initWithRxScheduler_(RxInternalOperatorsOperatorTimeInterval *self, RxScheduler *scheduler) {
  NSObject_init(self);
  self->scheduler_ = scheduler;
}

RxInternalOperatorsOperatorTimeInterval *new_RxInternalOperatorsOperatorTimeInterval_initWithRxScheduler_(RxScheduler *scheduler) {
  RxInternalOperatorsOperatorTimeInterval *self = [RxInternalOperatorsOperatorTimeInterval alloc];
  RxInternalOperatorsOperatorTimeInterval_initWithRxScheduler_(self, scheduler);
  return self;
}

RxInternalOperatorsOperatorTimeInterval *create_RxInternalOperatorsOperatorTimeInterval_initWithRxScheduler_(RxScheduler *scheduler) {
  return new_RxInternalOperatorsOperatorTimeInterval_initWithRxScheduler_(scheduler);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorTimeInterval)

@implementation RxInternalOperatorsOperatorTimeInterval_$1

- (void)onNextWithId:(id)args {
  jlong nowTimestamp = [((RxScheduler *) nil_chk(this$0_->scheduler_)) now];
  [((RxSubscriber *) nil_chk(val$subscriber_)) onNextWithId:new_RxSchedulersTimeInterval_initWithLong_withId_(nowTimestamp - lastTimestamp_, args)];
  lastTimestamp_ = nowTimestamp;
}

- (void)onCompleted {
  [((RxSubscriber *) nil_chk(val$subscriber_)) onCompleted];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxSubscriber *) nil_chk(val$subscriber_)) onErrorWithNSException:e];
}

- (instancetype)initWithRxInternalOperatorsOperatorTimeInterval:(RxInternalOperatorsOperatorTimeInterval *)outer$
                                               withRxSubscriber:(RxSubscriber *)capture$0
                                               withRxSubscriber:(RxSubscriber *)arg$0 {
  RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(self, outer$, capture$0, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onNextWithId:", "onNext", "V", 0x1, NULL, "(TT;)V" },
    { "onCompleted", NULL, "V", 0x1, NULL, NULL },
    { "onErrorWithNSException:", "onError", "V", 0x1, NULL, NULL },
    { "initWithRxInternalOperatorsOperatorTimeInterval:withRxSubscriber:withRxSubscriber:", "", NULL, 0x0, NULL, "(Lrx/internal/operators/OperatorTimeInterval;Lrx/Subscriber<-Lrx/schedulers/TimeInterval<TT;>;>;Lrx/Subscriber<*>;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lrx.internal.operators.OperatorTimeInterval;", NULL, NULL, .constantValue.asLong = 0 },
    { "lastTimestamp_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "val$subscriber_", NULL, 0x1012, "Lrx.Subscriber;", NULL, "Lrx/Subscriber<-Lrx/schedulers/TimeInterval<TT;>;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TT;"};
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxInternalOperatorsOperatorTimeInterval", "callWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorTimeInterval_$1 = { 2, "", "rx.internal.operators", "OperatorTimeInterval", 0x8008, 4, methods, 3, fields, 1, superclass_type_args, 0, NULL, &enclosing_method, "Lrx/Subscriber<TT;>;" };
  return &_RxInternalOperatorsOperatorTimeInterval_$1;
}

@end

void RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorTimeInterval_$1 *self, RxInternalOperatorsOperatorTimeInterval *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  self->this$0_ = outer$;
  self->val$subscriber_ = capture$0;
  RxSubscriber_initWithRxSubscriber_(self, arg$0);
  self->lastTimestamp_ = [((RxScheduler *) nil_chk(outer$->scheduler_)) now];
}

RxInternalOperatorsOperatorTimeInterval_$1 *new_RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorTimeInterval *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  RxInternalOperatorsOperatorTimeInterval_$1 *self = [RxInternalOperatorsOperatorTimeInterval_$1 alloc];
  RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(self, outer$, capture$0, arg$0);
  return self;
}

RxInternalOperatorsOperatorTimeInterval_$1 *create_RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorTimeInterval *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  return new_RxInternalOperatorsOperatorTimeInterval_$1_initWithRxInternalOperatorsOperatorTimeInterval_withRxSubscriber_withRxSubscriber_(outer$, capture$0, arg$0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorTimeInterval_$1)
