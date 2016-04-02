//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/observers/SerializedSubscriber.java
//

#include "J2ObjC_source.h"
#include "rx/Observer.h"
#include "rx/Subscriber.h"
#include "rx/observers/SerializedObserver.h"
#include "rx/observers/SerializedSubscriber.h"

@interface RxObserversSerializedSubscriber () {
 @public
  id<RxObserver> s_;
}

@end

J2OBJC_FIELD_SETTER(RxObserversSerializedSubscriber, s_, id<RxObserver>)

@implementation RxObserversSerializedSubscriber

- (instancetype)initWithRxSubscriber:(RxSubscriber *)s {
  RxObserversSerializedSubscriber_initWithRxSubscriber_(self, s);
  return self;
}

- (void)onCompleted {
  [((id<RxObserver>) nil_chk(s_)) onCompleted];
}

- (void)onErrorWithNSException:(NSException *)e {
  [((id<RxObserver>) nil_chk(s_)) onErrorWithNSException:e];
}

- (void)onNextWithId:(id)t {
  [((id<RxObserver>) nil_chk(s_)) onNextWithId:t];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxSubscriber:", "SerializedSubscriber", NULL, 0x1, NULL, "(Lrx/Subscriber<-TT;>;)V" },
    { "onCompleted", NULL, "V", 0x1, NULL, NULL },
    { "onErrorWithNSException:", "onError", "V", 0x1, NULL, NULL },
    { "onNextWithId:", "onNext", "V", 0x1, NULL, "(TT;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "s_", NULL, 0x12, "Lrx.Observer;", NULL, "Lrx/Observer<TT;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TT;"};
  static const J2ObjcClassInfo _RxObserversSerializedSubscriber = { 2, "SerializedSubscriber", "rx.observers", NULL, 0x1, 4, methods, 1, fields, 1, superclass_type_args, 0, NULL, NULL, "<T:Ljava/lang/Object;>Lrx/Subscriber<TT;>;" };
  return &_RxObserversSerializedSubscriber;
}

@end

void RxObserversSerializedSubscriber_initWithRxSubscriber_(RxObserversSerializedSubscriber *self, RxSubscriber *s) {
  RxSubscriber_initWithRxSubscriber_(self, s);
  self->s_ = new_RxObserversSerializedObserver_initWithRxObserver_(s);
}

RxObserversSerializedSubscriber *new_RxObserversSerializedSubscriber_initWithRxSubscriber_(RxSubscriber *s) {
  RxObserversSerializedSubscriber *self = [RxObserversSerializedSubscriber alloc];
  RxObserversSerializedSubscriber_initWithRxSubscriber_(self, s);
  return self;
}

RxObserversSerializedSubscriber *create_RxObserversSerializedSubscriber_initWithRxSubscriber_(RxSubscriber *s) {
  return new_RxObserversSerializedSubscriber_initWithRxSubscriber_(s);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxObserversSerializedSubscriber)
