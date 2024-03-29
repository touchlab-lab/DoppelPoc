//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OnSubscribeRange.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/util/concurrent/atomic/AtomicLongFieldUpdater.h"
#include "rx/Producer.h"
#include "rx/Subscriber.h"
#include "rx/internal/operators/OnSubscribeRange.h"

@interface RxInternalOperatorsOnSubscribeRange () {
 @public
  jint start_;
  jint end_;
}

@end

@interface RxInternalOperatorsOnSubscribeRange_RangeProducer : NSObject < RxProducer > {
 @public
  RxSubscriber *o_;
  volatile_jlong requested_;
  jlong index_;
  jint end_;
}

- (instancetype)initWithRxSubscriber:(RxSubscriber *)o
                             withInt:(jint)start
                             withInt:(jint)end;

- (void)requestWithLong:(jlong)n;

@end

J2OBJC_STATIC_INIT(RxInternalOperatorsOnSubscribeRange_RangeProducer)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOnSubscribeRange_RangeProducer, o_, RxSubscriber *)

inline JavaUtilConcurrentAtomicAtomicLongFieldUpdater *RxInternalOperatorsOnSubscribeRange_RangeProducer_get_REQUESTED_UPDATER();
static JavaUtilConcurrentAtomicAtomicLongFieldUpdater *RxInternalOperatorsOnSubscribeRange_RangeProducer_REQUESTED_UPDATER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalOperatorsOnSubscribeRange_RangeProducer, REQUESTED_UPDATER, JavaUtilConcurrentAtomicAtomicLongFieldUpdater *)

__attribute__((unused)) static void RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(RxInternalOperatorsOnSubscribeRange_RangeProducer *self, RxSubscriber *o, jint start, jint end);

__attribute__((unused)) static RxInternalOperatorsOnSubscribeRange_RangeProducer *new_RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(RxSubscriber *o, jint start, jint end) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOnSubscribeRange_RangeProducer *create_RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(RxSubscriber *o, jint start, jint end);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeRange_RangeProducer)

@implementation RxInternalOperatorsOnSubscribeRange

- (instancetype)initWithInt:(jint)start
                    withInt:(jint)end {
  RxInternalOperatorsOnSubscribeRange_initWithInt_withInt_(self, start, end);
  return self;
}

- (void)callWithId:(RxSubscriber *)o {
  [((RxSubscriber *) nil_chk(o)) setProducerWithRxProducer:new_RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(o, start_, end_)];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:", "OnSubscribeRange", NULL, 0x1, NULL, NULL },
    { "callWithId:", "call", "V", 0x1, NULL, "(Lrx/Subscriber<-Ljava/lang/Integer;>;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "start_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "end_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lrx.internal.operators.OnSubscribeRange$RangeProducer;"};
  static const J2ObjcClassInfo _RxInternalOperatorsOnSubscribeRange = { 2, "OnSubscribeRange", "rx.internal.operators", NULL, 0x11, 2, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, "Ljava/lang/Object;Lrx/Observable$OnSubscribe<Ljava/lang/Integer;>;" };
  return &_RxInternalOperatorsOnSubscribeRange;
}

@end

void RxInternalOperatorsOnSubscribeRange_initWithInt_withInt_(RxInternalOperatorsOnSubscribeRange *self, jint start, jint end) {
  NSObject_init(self);
  self->start_ = start;
  self->end_ = end;
}

RxInternalOperatorsOnSubscribeRange *new_RxInternalOperatorsOnSubscribeRange_initWithInt_withInt_(jint start, jint end) {
  RxInternalOperatorsOnSubscribeRange *self = [RxInternalOperatorsOnSubscribeRange alloc];
  RxInternalOperatorsOnSubscribeRange_initWithInt_withInt_(self, start, end);
  return self;
}

RxInternalOperatorsOnSubscribeRange *create_RxInternalOperatorsOnSubscribeRange_initWithInt_withInt_(jint start, jint end) {
  return new_RxInternalOperatorsOnSubscribeRange_initWithInt_withInt_(start, end);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOnSubscribeRange)

J2OBJC_INITIALIZED_DEFN(RxInternalOperatorsOnSubscribeRange_RangeProducer)

@implementation RxInternalOperatorsOnSubscribeRange_RangeProducer

- (instancetype)initWithRxSubscriber:(RxSubscriber *)o
                             withInt:(jint)start
                             withInt:(jint)end {
  RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(self, o, start, end);
  return self;
}

- (void)requestWithLong:(jlong)n {
  if ([((JavaUtilConcurrentAtomicAtomicLongFieldUpdater *) nil_chk(RxInternalOperatorsOnSubscribeRange_RangeProducer_REQUESTED_UPDATER)) getWithId:self] == JavaLangLong_MAX_VALUE) {
    return;
  }
  if (n == JavaLangLong_MAX_VALUE) {
    [RxInternalOperatorsOnSubscribeRange_RangeProducer_REQUESTED_UPDATER setWithId:self withLong:n];
    for (jlong i = index_; i <= end_; i++) {
      if ([((RxSubscriber *) nil_chk(o_)) isUnsubscribed]) {
        return;
      }
      [o_ onNextWithId:JavaLangInteger_valueOfWithInt_((jint) i)];
    }
    if (![((RxSubscriber *) nil_chk(o_)) isUnsubscribed]) {
      [o_ onCompleted];
    }
  }
  else if (n > 0) {
    jlong _c = [RxInternalOperatorsOnSubscribeRange_RangeProducer_REQUESTED_UPDATER getAndAddWithId:self withLong:n];
    if (_c == 0) {
      while (true) {
        jlong r = JreLoadVolatileLong(&requested_);
        jlong idx = index_;
        jlong numLeft = end_ - idx + 1;
        jlong e = JavaLangMath_minWithLong_withLong_(numLeft, r);
        jboolean completeOnFinish = numLeft <= r;
        jlong stopAt = e + idx;
        for (jlong i = idx; i < stopAt; i++) {
          if ([((RxSubscriber *) nil_chk(o_)) isUnsubscribed]) {
            return;
          }
          [o_ onNextWithId:JavaLangInteger_valueOfWithInt_((jint) i)];
        }
        index_ = stopAt;
        if (completeOnFinish) {
          [((RxSubscriber *) nil_chk(o_)) onCompleted];
          return;
        }
        if ([RxInternalOperatorsOnSubscribeRange_RangeProducer_REQUESTED_UPDATER addAndGetWithId:self withLong:-e] == 0) {
          return;
        }
      }
    }
  }
}

+ (void)initialize {
  if (self == [RxInternalOperatorsOnSubscribeRange_RangeProducer class]) {
    RxInternalOperatorsOnSubscribeRange_RangeProducer_REQUESTED_UPDATER = JavaUtilConcurrentAtomicAtomicLongFieldUpdater_newUpdaterWithIOSClass_withNSString_(RxInternalOperatorsOnSubscribeRange_RangeProducer_class_(), @"requested");
    J2OBJC_SET_INITIALIZED(RxInternalOperatorsOnSubscribeRange_RangeProducer)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxSubscriber:withInt:withInt:", "RangeProducer", NULL, 0x2, NULL, "(Lrx/Subscriber<-Ljava/lang/Integer;>;II)V" },
    { "requestWithLong:", "request", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "o_", NULL, 0x12, "Lrx.Subscriber;", NULL, "Lrx/Subscriber<-Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "requested_", NULL, 0x42, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "REQUESTED_UPDATER", "REQUESTED_UPDATER", 0x1a, "Ljava.util.concurrent.atomic.AtomicLongFieldUpdater;", &RxInternalOperatorsOnSubscribeRange_RangeProducer_REQUESTED_UPDATER, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<Lrx/internal/operators/OnSubscribeRange$RangeProducer;>;", .constantValue.asLong = 0 },
    { "index_", NULL, 0x2, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "end_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _RxInternalOperatorsOnSubscribeRange_RangeProducer = { 2, "RangeProducer", "rx.internal.operators", "OnSubscribeRange", 0x1a, 2, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_RxInternalOperatorsOnSubscribeRange_RangeProducer;
}

@end

void RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(RxInternalOperatorsOnSubscribeRange_RangeProducer *self, RxSubscriber *o, jint start, jint end) {
  NSObject_init(self);
  self->o_ = o;
  self->index_ = start;
  self->end_ = end;
}

RxInternalOperatorsOnSubscribeRange_RangeProducer *new_RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(RxSubscriber *o, jint start, jint end) {
  RxInternalOperatorsOnSubscribeRange_RangeProducer *self = [RxInternalOperatorsOnSubscribeRange_RangeProducer alloc];
  RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(self, o, start, end);
  return self;
}

RxInternalOperatorsOnSubscribeRange_RangeProducer *create_RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(RxSubscriber *o, jint start, jint end) {
  return new_RxInternalOperatorsOnSubscribeRange_RangeProducer_initWithRxSubscriber_withInt_withInt_(o, start, end);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOnSubscribeRange_RangeProducer)
