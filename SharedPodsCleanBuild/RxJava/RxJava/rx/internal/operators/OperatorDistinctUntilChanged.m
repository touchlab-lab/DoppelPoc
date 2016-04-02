//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OperatorDistinctUntilChanged.java
//

#include "J2ObjC_source.h"
#include "rx/Subscriber.h"
#include "rx/functions/Func1.h"
#include "rx/internal/operators/OperatorDistinctUntilChanged.h"

@interface RxInternalOperatorsOperatorDistinctUntilChanged_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorDistinctUntilChanged *this$0_;
  id previousKey_;
  jboolean hasPrevious_;
  RxSubscriber *val$child_;
}

- (void)onNextWithId:(id)t;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)onCompleted;

- (instancetype)initWithRxInternalOperatorsOperatorDistinctUntilChanged:(RxInternalOperatorsOperatorDistinctUntilChanged *)outer$
                                                       withRxSubscriber:(RxSubscriber *)capture$0
                                                       withRxSubscriber:(RxSubscriber *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorDistinctUntilChanged_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorDistinctUntilChanged_$1, this$0_, RxInternalOperatorsOperatorDistinctUntilChanged *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorDistinctUntilChanged_$1, previousKey_, id)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorDistinctUntilChanged_$1, val$child_, RxSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorDistinctUntilChanged_$1_initWithRxInternalOperatorsOperatorDistinctUntilChanged_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorDistinctUntilChanged_$1 *self, RxInternalOperatorsOperatorDistinctUntilChanged *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0);

__attribute__((unused)) static RxInternalOperatorsOperatorDistinctUntilChanged_$1 *new_RxInternalOperatorsOperatorDistinctUntilChanged_$1_initWithRxInternalOperatorsOperatorDistinctUntilChanged_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorDistinctUntilChanged *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorDistinctUntilChanged_$1 *create_RxInternalOperatorsOperatorDistinctUntilChanged_$1_initWithRxInternalOperatorsOperatorDistinctUntilChanged_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorDistinctUntilChanged *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorDistinctUntilChanged_$1)

@implementation RxInternalOperatorsOperatorDistinctUntilChanged

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)keySelector {
  RxInternalOperatorsOperatorDistinctUntilChanged_initWithRxFunctionsFunc1_(self, keySelector);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)child {
  return new_RxInternalOperatorsOperatorDistinctUntilChanged_$1_initWithRxInternalOperatorsOperatorDistinctUntilChanged_withRxSubscriber_withRxSubscriber_(self, child, child);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxFunctionsFunc1:", "OperatorDistinctUntilChanged", NULL, 0x1, NULL, "(Lrx/functions/Func1<-TT;+TU;>;)V" },
    { "callWithId:", "call", "Lrx.Subscriber;", 0x1, NULL, "(Lrx/Subscriber<-TT;>;)Lrx/Subscriber<-TT;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "keySelector_", NULL, 0x10, "Lrx.functions.Func1;", NULL, "Lrx/functions/Func1<-TT;+TU;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorDistinctUntilChanged = { 2, "OperatorDistinctUntilChanged", "rx.internal.operators", NULL, 0x11, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;U:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<TT;TT;>;" };
  return &_RxInternalOperatorsOperatorDistinctUntilChanged;
}

@end

void RxInternalOperatorsOperatorDistinctUntilChanged_initWithRxFunctionsFunc1_(RxInternalOperatorsOperatorDistinctUntilChanged *self, id<RxFunctionsFunc1> keySelector) {
  NSObject_init(self);
  self->keySelector_ = keySelector;
}

RxInternalOperatorsOperatorDistinctUntilChanged *new_RxInternalOperatorsOperatorDistinctUntilChanged_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> keySelector) {
  RxInternalOperatorsOperatorDistinctUntilChanged *self = [RxInternalOperatorsOperatorDistinctUntilChanged alloc];
  RxInternalOperatorsOperatorDistinctUntilChanged_initWithRxFunctionsFunc1_(self, keySelector);
  return self;
}

RxInternalOperatorsOperatorDistinctUntilChanged *create_RxInternalOperatorsOperatorDistinctUntilChanged_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> keySelector) {
  return new_RxInternalOperatorsOperatorDistinctUntilChanged_initWithRxFunctionsFunc1_(keySelector);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorDistinctUntilChanged)

@implementation RxInternalOperatorsOperatorDistinctUntilChanged_$1

- (void)onNextWithId:(id)t {
  id currentKey = previousKey_;
  id key = [((id<RxFunctionsFunc1>) nil_chk(this$0_->keySelector_)) callWithId:t];
  previousKey_ = key;
  if (hasPrevious_) {
    if (!(currentKey == key || (key != nil && [key isEqual:currentKey]))) {
      [((RxSubscriber *) nil_chk(val$child_)) onNextWithId:t];
    }
    else {
      [self requestWithLong:1];
    }
  }
  else {
    hasPrevious_ = true;
    [((RxSubscriber *) nil_chk(val$child_)) onNextWithId:t];
  }
}

- (void)onErrorWithNSException:(NSException *)e {
  [((RxSubscriber *) nil_chk(val$child_)) onErrorWithNSException:e];
}

- (void)onCompleted {
  [((RxSubscriber *) nil_chk(val$child_)) onCompleted];
}

- (instancetype)initWithRxInternalOperatorsOperatorDistinctUntilChanged:(RxInternalOperatorsOperatorDistinctUntilChanged *)outer$
                                                       withRxSubscriber:(RxSubscriber *)capture$0
                                                       withRxSubscriber:(RxSubscriber *)arg$0 {
  RxInternalOperatorsOperatorDistinctUntilChanged_$1_initWithRxInternalOperatorsOperatorDistinctUntilChanged_withRxSubscriber_withRxSubscriber_(self, outer$, capture$0, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onNextWithId:", "onNext", "V", 0x1, NULL, "(TT;)V" },
    { "onErrorWithNSException:", "onError", "V", 0x1, NULL, NULL },
    { "onCompleted", NULL, "V", 0x1, NULL, NULL },
    { "initWithRxInternalOperatorsOperatorDistinctUntilChanged:withRxSubscriber:withRxSubscriber:", "", NULL, 0x0, NULL, "(Lrx/internal/operators/OperatorDistinctUntilChanged;Lrx/Subscriber<-TT;>;Lrx/Subscriber<*>;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lrx.internal.operators.OperatorDistinctUntilChanged;", NULL, NULL, .constantValue.asLong = 0 },
    { "previousKey_", NULL, 0x0, "TU;", NULL, "TU;", .constantValue.asLong = 0 },
    { "hasPrevious_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "val$child_", NULL, 0x1012, "Lrx.Subscriber;", NULL, "Lrx/Subscriber<-TT;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TT;"};
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxInternalOperatorsOperatorDistinctUntilChanged", "callWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorDistinctUntilChanged_$1 = { 2, "", "rx.internal.operators", "OperatorDistinctUntilChanged", 0x8008, 4, methods, 4, fields, 1, superclass_type_args, 0, NULL, &enclosing_method, "Lrx/Subscriber<TT;>;" };
  return &_RxInternalOperatorsOperatorDistinctUntilChanged_$1;
}

@end

void RxInternalOperatorsOperatorDistinctUntilChanged_$1_initWithRxInternalOperatorsOperatorDistinctUntilChanged_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorDistinctUntilChanged_$1 *self, RxInternalOperatorsOperatorDistinctUntilChanged *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  self->this$0_ = outer$;
  self->val$child_ = capture$0;
  RxSubscriber_initWithRxSubscriber_(self, arg$0);
}

RxInternalOperatorsOperatorDistinctUntilChanged_$1 *new_RxInternalOperatorsOperatorDistinctUntilChanged_$1_initWithRxInternalOperatorsOperatorDistinctUntilChanged_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorDistinctUntilChanged *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  RxInternalOperatorsOperatorDistinctUntilChanged_$1 *self = [RxInternalOperatorsOperatorDistinctUntilChanged_$1 alloc];
  RxInternalOperatorsOperatorDistinctUntilChanged_$1_initWithRxInternalOperatorsOperatorDistinctUntilChanged_withRxSubscriber_withRxSubscriber_(self, outer$, capture$0, arg$0);
  return self;
}

RxInternalOperatorsOperatorDistinctUntilChanged_$1 *create_RxInternalOperatorsOperatorDistinctUntilChanged_$1_initWithRxInternalOperatorsOperatorDistinctUntilChanged_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorDistinctUntilChanged *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  return new_RxInternalOperatorsOperatorDistinctUntilChanged_$1_initWithRxInternalOperatorsOperatorDistinctUntilChanged_withRxSubscriber_withRxSubscriber_(outer$, capture$0, arg$0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorDistinctUntilChanged_$1)
