//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OnSubscribeDefer.java
//

#include "J2ObjC_source.h"
#include "rx/Observable.h"
#include "rx/Subscriber.h"
#include "rx/Subscription.h"
#include "rx/functions/Func0.h"
#include "rx/internal/operators/OnSubscribeDefer.h"

@implementation RxInternalOperatorsOnSubscribeDefer

- (instancetype)initWithRxFunctionsFunc0:(id<RxFunctionsFunc0>)observableFactory {
  RxInternalOperatorsOnSubscribeDefer_initWithRxFunctionsFunc0_(self, observableFactory);
  return self;
}

- (void)callWithId:(RxSubscriber *)s {
  RxObservable *o;
  @try {
    o = [((id<RxFunctionsFunc0>) nil_chk(observableFactory_)) call];
  }
  @catch (NSException *t) {
    [((RxSubscriber *) nil_chk(s)) onErrorWithNSException:t];
    return;
  }
  (void) [((RxObservable *) nil_chk(o)) unsafeSubscribeWithRxSubscriber:s];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxFunctionsFunc0:", "OnSubscribeDefer", NULL, 0x1, NULL, "(Lrx/functions/Func0<+Lrx/Observable<+TT;>;>;)V" },
    { "callWithId:", "call", "V", 0x1, NULL, "(Lrx/Subscriber<-TT;>;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "observableFactory_", NULL, 0x10, "Lrx.functions.Func0;", NULL, "Lrx/functions/Func0<+Lrx/Observable<+TT;>;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _RxInternalOperatorsOnSubscribeDefer = { 2, "OnSubscribeDefer", "rx.internal.operators", NULL, 0x11, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$OnSubscribe<TT;>;" };
  return &_RxInternalOperatorsOnSubscribeDefer;
}

@end

void RxInternalOperatorsOnSubscribeDefer_initWithRxFunctionsFunc0_(RxInternalOperatorsOnSubscribeDefer *self, id<RxFunctionsFunc0> observableFactory) {
  NSObject_init(self);
  self->observableFactory_ = observableFactory;
}

RxInternalOperatorsOnSubscribeDefer *new_RxInternalOperatorsOnSubscribeDefer_initWithRxFunctionsFunc0_(id<RxFunctionsFunc0> observableFactory) {
  RxInternalOperatorsOnSubscribeDefer *self = [RxInternalOperatorsOnSubscribeDefer alloc];
  RxInternalOperatorsOnSubscribeDefer_initWithRxFunctionsFunc0_(self, observableFactory);
  return self;
}

RxInternalOperatorsOnSubscribeDefer *create_RxInternalOperatorsOnSubscribeDefer_initWithRxFunctionsFunc0_(id<RxFunctionsFunc0> observableFactory) {
  return new_RxInternalOperatorsOnSubscribeDefer_initWithRxFunctionsFunc0_(observableFactory);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOnSubscribeDefer)
