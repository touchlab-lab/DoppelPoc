//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OperatorTakeUntil.java
//

#include "J2ObjC_source.h"
#include "rx/Observable.h"
#include "rx/Subscriber.h"
#include "rx/Subscription.h"
#include "rx/internal/operators/OperatorTakeUntil.h"
#include "rx/observers/SerializedSubscriber.h"

@interface RxInternalOperatorsOperatorTakeUntil () {
 @public
  RxObservable *other_;
}

@end

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTakeUntil, other_, RxObservable *)

@interface RxInternalOperatorsOperatorTakeUntil_$1 : RxSubscriber {
 @public
  RxSubscriber *val$parent_;
}

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)onNextWithId:(id)t;

- (instancetype)initWithRxSubscriber:(RxSubscriber *)capture$0
                    withRxSubscriber:(RxSubscriber *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorTakeUntil_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorTakeUntil_$1, val$parent_, RxSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorTakeUntil_$1_initWithRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorTakeUntil_$1 *self, RxSubscriber *capture$0, RxSubscriber *arg$0);

__attribute__((unused)) static RxInternalOperatorsOperatorTakeUntil_$1 *new_RxInternalOperatorsOperatorTakeUntil_$1_initWithRxSubscriber_withRxSubscriber_(RxSubscriber *capture$0, RxSubscriber *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorTakeUntil_$1 *create_RxInternalOperatorsOperatorTakeUntil_$1_initWithRxSubscriber_withRxSubscriber_(RxSubscriber *capture$0, RxSubscriber *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorTakeUntil_$1)

@implementation RxInternalOperatorsOperatorTakeUntil

- (instancetype)initWithRxObservable:(RxObservable *)other {
  RxInternalOperatorsOperatorTakeUntil_initWithRxObservable_(self, other);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)child {
  RxSubscriber *parent = new_RxObserversSerializedSubscriber_initWithRxSubscriber_(child);
  (void) [((RxObservable *) nil_chk(other_)) unsafeSubscribeWithRxSubscriber:new_RxInternalOperatorsOperatorTakeUntil_$1_initWithRxSubscriber_withRxSubscriber_(parent, child)];
  return parent;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxObservable:", "OperatorTakeUntil", NULL, 0x1, NULL, "(Lrx/Observable<+TE;>;)V" },
    { "callWithId:", "call", "Lrx.Subscriber;", 0x1, NULL, "(Lrx/Subscriber<-TT;>;)Lrx/Subscriber<-TT;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "other_", NULL, 0x12, "Lrx.Observable;", NULL, "Lrx/Observable<+TE;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorTakeUntil = { 2, "OperatorTakeUntil", "rx.internal.operators", NULL, 0x11, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;E:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<TT;TT;>;" };
  return &_RxInternalOperatorsOperatorTakeUntil;
}

@end

void RxInternalOperatorsOperatorTakeUntil_initWithRxObservable_(RxInternalOperatorsOperatorTakeUntil *self, RxObservable *other) {
  NSObject_init(self);
  self->other_ = other;
}

RxInternalOperatorsOperatorTakeUntil *new_RxInternalOperatorsOperatorTakeUntil_initWithRxObservable_(RxObservable *other) {
  RxInternalOperatorsOperatorTakeUntil *self = [RxInternalOperatorsOperatorTakeUntil alloc];
  RxInternalOperatorsOperatorTakeUntil_initWithRxObservable_(self, other);
  return self;
}

RxInternalOperatorsOperatorTakeUntil *create_RxInternalOperatorsOperatorTakeUntil_initWithRxObservable_(RxObservable *other) {
  return new_RxInternalOperatorsOperatorTakeUntil_initWithRxObservable_(other);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorTakeUntil)

@implementation RxInternalOperatorsOperatorTakeUntil_$1

- (void)onCompleted {
  [((RxSubscriber *) nil_chk(val$parent_)) onCompleted];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxSubscriber *) nil_chk(val$parent_)) onErrorWithNSException:e];
}

- (void)onNextWithId:(id)t {
  [((RxSubscriber *) nil_chk(val$parent_)) onCompleted];
}

- (instancetype)initWithRxSubscriber:(RxSubscriber *)capture$0
                    withRxSubscriber:(RxSubscriber *)arg$0 {
  RxInternalOperatorsOperatorTakeUntil_$1_initWithRxSubscriber_withRxSubscriber_(self, capture$0, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onCompleted", NULL, "V", 0x1, NULL, NULL },
    { "onErrorWithNSException:", "onError", "V", 0x1, NULL, NULL },
    { "onNextWithId:", "onNext", "V", 0x1, NULL, "(TE;)V" },
    { "initWithRxSubscriber:withRxSubscriber:", "", NULL, 0x0, NULL, "(Lrx/Subscriber<TT;>;Lrx/Subscriber<*>;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$parent_", NULL, 0x1012, "Lrx.Subscriber;", NULL, "Lrx/Subscriber<TT;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TE;"};
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxInternalOperatorsOperatorTakeUntil", "callWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorTakeUntil_$1 = { 2, "", "rx.internal.operators", "OperatorTakeUntil", 0x8008, 4, methods, 1, fields, 1, superclass_type_args, 0, NULL, &enclosing_method, "Lrx/Subscriber<TE;>;" };
  return &_RxInternalOperatorsOperatorTakeUntil_$1;
}

@end

void RxInternalOperatorsOperatorTakeUntil_$1_initWithRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorTakeUntil_$1 *self, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  self->val$parent_ = capture$0;
  RxSubscriber_initWithRxSubscriber_(self, arg$0);
}

RxInternalOperatorsOperatorTakeUntil_$1 *new_RxInternalOperatorsOperatorTakeUntil_$1_initWithRxSubscriber_withRxSubscriber_(RxSubscriber *capture$0, RxSubscriber *arg$0) {
  RxInternalOperatorsOperatorTakeUntil_$1 *self = [RxInternalOperatorsOperatorTakeUntil_$1 alloc];
  RxInternalOperatorsOperatorTakeUntil_$1_initWithRxSubscriber_withRxSubscriber_(self, capture$0, arg$0);
  return self;
}

RxInternalOperatorsOperatorTakeUntil_$1 *create_RxInternalOperatorsOperatorTakeUntil_$1_initWithRxSubscriber_withRxSubscriber_(RxSubscriber *capture$0, RxSubscriber *arg$0) {
  return new_RxInternalOperatorsOperatorTakeUntil_$1_initWithRxSubscriber_withRxSubscriber_(capture$0, arg$0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorTakeUntil_$1)
