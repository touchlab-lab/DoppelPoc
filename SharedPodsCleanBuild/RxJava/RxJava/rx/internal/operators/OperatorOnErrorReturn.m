//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OperatorOnErrorReturn.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "rx/Producer.h"
#include "rx/Subscriber.h"
#include "rx/exceptions/CompositeException.h"
#include "rx/exceptions/Exceptions.h"
#include "rx/functions/Func1.h"
#include "rx/internal/operators/OperatorOnErrorReturn.h"
#include "rx/plugins/RxJavaErrorHandler.h"
#include "rx/plugins/RxJavaPlugins.h"

@interface RxInternalOperatorsOperatorOnErrorReturn_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorOnErrorReturn *this$0_;
  jboolean done_;
  RxSubscriber *val$child_;
}

- (void)onNextWithId:(id)t;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)onCompleted;

- (void)setProducerWithRxProducer:(id<RxProducer>)producer;

- (instancetype)initWithRxInternalOperatorsOperatorOnErrorReturn:(RxInternalOperatorsOperatorOnErrorReturn *)outer$
                                                withRxSubscriber:(RxSubscriber *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorOnErrorReturn_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorOnErrorReturn_$1, this$0_, RxInternalOperatorsOperatorOnErrorReturn *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorOnErrorReturn_$1, val$child_, RxSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorOnErrorReturn_$1_initWithRxInternalOperatorsOperatorOnErrorReturn_withRxSubscriber_(RxInternalOperatorsOperatorOnErrorReturn_$1 *self, RxInternalOperatorsOperatorOnErrorReturn *outer$, RxSubscriber *capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorOnErrorReturn_$1 *new_RxInternalOperatorsOperatorOnErrorReturn_$1_initWithRxInternalOperatorsOperatorOnErrorReturn_withRxSubscriber_(RxInternalOperatorsOperatorOnErrorReturn *outer$, RxSubscriber *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorOnErrorReturn_$1 *create_RxInternalOperatorsOperatorOnErrorReturn_$1_initWithRxInternalOperatorsOperatorOnErrorReturn_withRxSubscriber_(RxInternalOperatorsOperatorOnErrorReturn *outer$, RxSubscriber *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorOnErrorReturn_$1)

@interface RxInternalOperatorsOperatorOnErrorReturn_$1_$1 : NSObject < RxProducer > {
 @public
  id<RxProducer> val$producer_;
}

- (void)requestWithLong:(jlong)n;

- (instancetype)initWithRxProducer:(id<RxProducer>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorOnErrorReturn_$1_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorOnErrorReturn_$1_$1, val$producer_, id<RxProducer>)

__attribute__((unused)) static void RxInternalOperatorsOperatorOnErrorReturn_$1_$1_initWithRxProducer_(RxInternalOperatorsOperatorOnErrorReturn_$1_$1 *self, id<RxProducer> capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorOnErrorReturn_$1_$1 *new_RxInternalOperatorsOperatorOnErrorReturn_$1_$1_initWithRxProducer_(id<RxProducer> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorOnErrorReturn_$1_$1 *create_RxInternalOperatorsOperatorOnErrorReturn_$1_$1_initWithRxProducer_(id<RxProducer> capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorOnErrorReturn_$1_$1)

@implementation RxInternalOperatorsOperatorOnErrorReturn

- (instancetype)initWithRxFunctionsFunc1:(id<RxFunctionsFunc1>)resultFunction {
  RxInternalOperatorsOperatorOnErrorReturn_initWithRxFunctionsFunc1_(self, resultFunction);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)child {
  RxSubscriber *parent = new_RxInternalOperatorsOperatorOnErrorReturn_$1_initWithRxInternalOperatorsOperatorOnErrorReturn_withRxSubscriber_(self, child);
  [((RxSubscriber *) nil_chk(child)) addWithRxSubscription:parent];
  return parent;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxFunctionsFunc1:", "OperatorOnErrorReturn", NULL, 0x1, NULL, "(Lrx/functions/Func1<Ljava/lang/Throwable;+TT;>;)V" },
    { "callWithId:", "call", "Lrx.Subscriber;", 0x1, NULL, "(Lrx/Subscriber<-TT;>;)Lrx/Subscriber<-TT;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "resultFunction_", NULL, 0x10, "Lrx.functions.Func1;", NULL, "Lrx/functions/Func1<Ljava/lang/Throwable;+TT;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorOnErrorReturn = { 2, "OperatorOnErrorReturn", "rx.internal.operators", NULL, 0x11, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<TT;TT;>;" };
  return &_RxInternalOperatorsOperatorOnErrorReturn;
}

@end

void RxInternalOperatorsOperatorOnErrorReturn_initWithRxFunctionsFunc1_(RxInternalOperatorsOperatorOnErrorReturn *self, id<RxFunctionsFunc1> resultFunction) {
  NSObject_init(self);
  self->resultFunction_ = resultFunction;
}

RxInternalOperatorsOperatorOnErrorReturn *new_RxInternalOperatorsOperatorOnErrorReturn_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> resultFunction) {
  RxInternalOperatorsOperatorOnErrorReturn *self = [RxInternalOperatorsOperatorOnErrorReturn alloc];
  RxInternalOperatorsOperatorOnErrorReturn_initWithRxFunctionsFunc1_(self, resultFunction);
  return self;
}

RxInternalOperatorsOperatorOnErrorReturn *create_RxInternalOperatorsOperatorOnErrorReturn_initWithRxFunctionsFunc1_(id<RxFunctionsFunc1> resultFunction) {
  return new_RxInternalOperatorsOperatorOnErrorReturn_initWithRxFunctionsFunc1_(resultFunction);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorOnErrorReturn)

@implementation RxInternalOperatorsOperatorOnErrorReturn_$1

- (void)onNextWithId:(id)t {
  if (done_) {
    return;
  }
  [((RxSubscriber *) nil_chk(val$child_)) onNextWithId:t];
}

- (void)onErrorWithNSException:(NSException *)e {
  if (done_) {
    RxExceptionsExceptions_throwIfFatalWithNSException_(e);
    return;
  }
  done_ = true;
  @try {
    [((RxPluginsRxJavaErrorHandler *) nil_chk([((RxPluginsRxJavaPlugins *) nil_chk(RxPluginsRxJavaPlugins_getInstance())) getErrorHandler])) handleErrorWithNSException:e];
    [self unsubscribe];
    id result = [((id<RxFunctionsFunc1>) nil_chk(this$0_->resultFunction_)) callWithId:e];
    [((RxSubscriber *) nil_chk(val$child_)) onNextWithId:result];
  }
  @catch (NSException *x) {
    [((RxSubscriber *) nil_chk(val$child_)) onErrorWithNSException:new_RxExceptionsCompositeException_initWithJavaUtilCollection_(JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray newArrayWithObjects:(id[]){ e, x } count:2 type:NSException_class_()]))];
    return;
  }
  [((RxSubscriber *) nil_chk(val$child_)) onCompleted];
}

- (void)onCompleted {
  if (done_) {
    return;
  }
  done_ = true;
  [((RxSubscriber *) nil_chk(val$child_)) onCompleted];
}

- (void)setProducerWithRxProducer:(id<RxProducer>)producer {
  [((RxSubscriber *) nil_chk(val$child_)) setProducerWithRxProducer:new_RxInternalOperatorsOperatorOnErrorReturn_$1_$1_initWithRxProducer_(producer)];
}

- (instancetype)initWithRxInternalOperatorsOperatorOnErrorReturn:(RxInternalOperatorsOperatorOnErrorReturn *)outer$
                                                withRxSubscriber:(RxSubscriber *)capture$0 {
  RxInternalOperatorsOperatorOnErrorReturn_$1_initWithRxInternalOperatorsOperatorOnErrorReturn_withRxSubscriber_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onNextWithId:", "onNext", "V", 0x1, NULL, "(TT;)V" },
    { "onErrorWithNSException:", "onError", "V", 0x1, NULL, NULL },
    { "onCompleted", NULL, "V", 0x1, NULL, NULL },
    { "setProducerWithRxProducer:", "setProducer", "V", 0x1, NULL, NULL },
    { "initWithRxInternalOperatorsOperatorOnErrorReturn:withRxSubscriber:", "", NULL, 0x0, NULL, "(Lrx/internal/operators/OperatorOnErrorReturn;Lrx/Subscriber<-TT;>;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lrx.internal.operators.OperatorOnErrorReturn;", NULL, NULL, .constantValue.asLong = 0 },
    { "done_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "val$child_", NULL, 0x1012, "Lrx.Subscriber;", NULL, "Lrx/Subscriber<-TT;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TT;"};
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxInternalOperatorsOperatorOnErrorReturn", "callWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorOnErrorReturn_$1 = { 2, "", "rx.internal.operators", "OperatorOnErrorReturn", 0x8008, 5, methods, 3, fields, 1, superclass_type_args, 0, NULL, &enclosing_method, "Lrx/Subscriber<TT;>;" };
  return &_RxInternalOperatorsOperatorOnErrorReturn_$1;
}

@end

void RxInternalOperatorsOperatorOnErrorReturn_$1_initWithRxInternalOperatorsOperatorOnErrorReturn_withRxSubscriber_(RxInternalOperatorsOperatorOnErrorReturn_$1 *self, RxInternalOperatorsOperatorOnErrorReturn *outer$, RxSubscriber *capture$0) {
  self->this$0_ = outer$;
  self->val$child_ = capture$0;
  RxSubscriber_init(self);
  self->done_ = false;
}

RxInternalOperatorsOperatorOnErrorReturn_$1 *new_RxInternalOperatorsOperatorOnErrorReturn_$1_initWithRxInternalOperatorsOperatorOnErrorReturn_withRxSubscriber_(RxInternalOperatorsOperatorOnErrorReturn *outer$, RxSubscriber *capture$0) {
  RxInternalOperatorsOperatorOnErrorReturn_$1 *self = [RxInternalOperatorsOperatorOnErrorReturn_$1 alloc];
  RxInternalOperatorsOperatorOnErrorReturn_$1_initWithRxInternalOperatorsOperatorOnErrorReturn_withRxSubscriber_(self, outer$, capture$0);
  return self;
}

RxInternalOperatorsOperatorOnErrorReturn_$1 *create_RxInternalOperatorsOperatorOnErrorReturn_$1_initWithRxInternalOperatorsOperatorOnErrorReturn_withRxSubscriber_(RxInternalOperatorsOperatorOnErrorReturn *outer$, RxSubscriber *capture$0) {
  return new_RxInternalOperatorsOperatorOnErrorReturn_$1_initWithRxInternalOperatorsOperatorOnErrorReturn_withRxSubscriber_(outer$, capture$0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorOnErrorReturn_$1)

@implementation RxInternalOperatorsOperatorOnErrorReturn_$1_$1

- (void)requestWithLong:(jlong)n {
  [((id<RxProducer>) nil_chk(val$producer_)) requestWithLong:n];
}

- (instancetype)initWithRxProducer:(id<RxProducer>)capture$0 {
  RxInternalOperatorsOperatorOnErrorReturn_$1_$1_initWithRxProducer_(self, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "requestWithLong:", "request", "V", 0x1, NULL, NULL },
    { "initWithRxProducer:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$producer_", NULL, 0x1012, "Lrx.Producer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxInternalOperatorsOperatorOnErrorReturn_$1", "setProducerWithRxProducer:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorOnErrorReturn_$1_$1 = { 2, "", "rx.internal.operators", "OperatorOnErrorReturn$", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_RxInternalOperatorsOperatorOnErrorReturn_$1_$1;
}

@end

void RxInternalOperatorsOperatorOnErrorReturn_$1_$1_initWithRxProducer_(RxInternalOperatorsOperatorOnErrorReturn_$1_$1 *self, id<RxProducer> capture$0) {
  self->val$producer_ = capture$0;
  NSObject_init(self);
}

RxInternalOperatorsOperatorOnErrorReturn_$1_$1 *new_RxInternalOperatorsOperatorOnErrorReturn_$1_$1_initWithRxProducer_(id<RxProducer> capture$0) {
  RxInternalOperatorsOperatorOnErrorReturn_$1_$1 *self = [RxInternalOperatorsOperatorOnErrorReturn_$1_$1 alloc];
  RxInternalOperatorsOperatorOnErrorReturn_$1_$1_initWithRxProducer_(self, capture$0);
  return self;
}

RxInternalOperatorsOperatorOnErrorReturn_$1_$1 *create_RxInternalOperatorsOperatorOnErrorReturn_$1_$1_initWithRxProducer_(id<RxProducer> capture$0) {
  return new_RxInternalOperatorsOperatorOnErrorReturn_$1_$1_initWithRxProducer_(capture$0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorOnErrorReturn_$1_$1)
