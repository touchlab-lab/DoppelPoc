//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OperatorBufferWithSize.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/LinkedList.h"
#include "java/util/List.h"
#include "rx/Producer.h"
#include "rx/Subscriber.h"
#include "rx/internal/operators/OperatorBufferWithSize.h"

@interface RxInternalOperatorsOperatorBufferWithSize_$1 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorBufferWithSize *this$0_;
  id<JavaUtilList> buffer_;
  RxSubscriber *val$child_;
}

- (void)setProducerWithRxProducer:(id<RxProducer>)producer;

- (void)onNextWithId:(id)t;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)onCompleted;

- (instancetype)initWithRxInternalOperatorsOperatorBufferWithSize:(RxInternalOperatorsOperatorBufferWithSize *)outer$
                                                 withRxSubscriber:(RxSubscriber *)capture$0
                                                 withRxSubscriber:(RxSubscriber *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorBufferWithSize_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithSize_$1, this$0_, RxInternalOperatorsOperatorBufferWithSize *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithSize_$1, buffer_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithSize_$1, val$child_, RxSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorBufferWithSize_$1_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithSize_$1 *self, RxInternalOperatorsOperatorBufferWithSize *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0);

__attribute__((unused)) static RxInternalOperatorsOperatorBufferWithSize_$1 *new_RxInternalOperatorsOperatorBufferWithSize_$1_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithSize *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorBufferWithSize_$1 *create_RxInternalOperatorsOperatorBufferWithSize_$1_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithSize *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorBufferWithSize_$1)

@interface RxInternalOperatorsOperatorBufferWithSize_$1_$1 : NSObject < RxProducer > {
 @public
  RxInternalOperatorsOperatorBufferWithSize_$1 *this$0_;
  volatile_jboolean infinite_;
  id<RxProducer> val$producer_;
}

- (void)requestWithLong:(jlong)n;

- (instancetype)initWithRxInternalOperatorsOperatorBufferWithSize_$1:(RxInternalOperatorsOperatorBufferWithSize_$1 *)outer$
                                                      withRxProducer:(id<RxProducer>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorBufferWithSize_$1_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithSize_$1_$1, this$0_, RxInternalOperatorsOperatorBufferWithSize_$1 *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithSize_$1_$1, val$producer_, id<RxProducer>)

__attribute__((unused)) static void RxInternalOperatorsOperatorBufferWithSize_$1_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$1_withRxProducer_(RxInternalOperatorsOperatorBufferWithSize_$1_$1 *self, RxInternalOperatorsOperatorBufferWithSize_$1 *outer$, id<RxProducer> capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorBufferWithSize_$1_$1 *new_RxInternalOperatorsOperatorBufferWithSize_$1_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$1_withRxProducer_(RxInternalOperatorsOperatorBufferWithSize_$1 *outer$, id<RxProducer> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorBufferWithSize_$1_$1 *create_RxInternalOperatorsOperatorBufferWithSize_$1_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$1_withRxProducer_(RxInternalOperatorsOperatorBufferWithSize_$1 *outer$, id<RxProducer> capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorBufferWithSize_$1_$1)

@interface RxInternalOperatorsOperatorBufferWithSize_$2 : RxSubscriber {
 @public
  RxInternalOperatorsOperatorBufferWithSize *this$0_;
  id<JavaUtilList> chunks_;
  jint index_;
  RxSubscriber *val$child_;
}

- (void)setProducerWithRxProducer:(id<RxProducer>)producer;

- (void)onNextWithId:(id)t;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)onCompleted;

- (instancetype)initWithRxInternalOperatorsOperatorBufferWithSize:(RxInternalOperatorsOperatorBufferWithSize *)outer$
                                                 withRxSubscriber:(RxSubscriber *)capture$0
                                                 withRxSubscriber:(RxSubscriber *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorBufferWithSize_$2)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithSize_$2, this$0_, RxInternalOperatorsOperatorBufferWithSize *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithSize_$2, chunks_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithSize_$2, val$child_, RxSubscriber *)

__attribute__((unused)) static void RxInternalOperatorsOperatorBufferWithSize_$2_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithSize_$2 *self, RxInternalOperatorsOperatorBufferWithSize *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0);

__attribute__((unused)) static RxInternalOperatorsOperatorBufferWithSize_$2 *new_RxInternalOperatorsOperatorBufferWithSize_$2_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithSize *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorBufferWithSize_$2 *create_RxInternalOperatorsOperatorBufferWithSize_$2_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithSize *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorBufferWithSize_$2)

@interface RxInternalOperatorsOperatorBufferWithSize_$2_$1 : NSObject < RxProducer > {
 @public
  RxInternalOperatorsOperatorBufferWithSize_$2 *this$0_;
  volatile_jboolean firstRequest_;
  volatile_jboolean infinite_;
  id<RxProducer> val$producer_;
}

- (void)requestInfinite;

- (void)requestWithLong:(jlong)n;

- (instancetype)initWithRxInternalOperatorsOperatorBufferWithSize_$2:(RxInternalOperatorsOperatorBufferWithSize_$2 *)outer$
                                                      withRxProducer:(id<RxProducer>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorBufferWithSize_$2_$1)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithSize_$2_$1, this$0_, RxInternalOperatorsOperatorBufferWithSize_$2 *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithSize_$2_$1, val$producer_, id<RxProducer>)

__attribute__((unused)) static void RxInternalOperatorsOperatorBufferWithSize_$2_$1_requestInfinite(RxInternalOperatorsOperatorBufferWithSize_$2_$1 *self);

__attribute__((unused)) static void RxInternalOperatorsOperatorBufferWithSize_$2_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$2_withRxProducer_(RxInternalOperatorsOperatorBufferWithSize_$2_$1 *self, RxInternalOperatorsOperatorBufferWithSize_$2 *outer$, id<RxProducer> capture$0);

__attribute__((unused)) static RxInternalOperatorsOperatorBufferWithSize_$2_$1 *new_RxInternalOperatorsOperatorBufferWithSize_$2_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$2_withRxProducer_(RxInternalOperatorsOperatorBufferWithSize_$2 *outer$, id<RxProducer> capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxInternalOperatorsOperatorBufferWithSize_$2_$1 *create_RxInternalOperatorsOperatorBufferWithSize_$2_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$2_withRxProducer_(RxInternalOperatorsOperatorBufferWithSize_$2 *outer$, id<RxProducer> capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorBufferWithSize_$2_$1)

@implementation RxInternalOperatorsOperatorBufferWithSize

- (instancetype)initWithInt:(jint)count
                    withInt:(jint)skip {
  RxInternalOperatorsOperatorBufferWithSize_initWithInt_withInt_(self, count, skip);
  return self;
}

- (RxSubscriber *)callWithId:(RxSubscriber *)child {
  if (count_ == skip_) {
    return new_RxInternalOperatorsOperatorBufferWithSize_$1_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(self, child, child);
  }
  return new_RxInternalOperatorsOperatorBufferWithSize_$2_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(self, child, child);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:", "OperatorBufferWithSize", NULL, 0x1, NULL, NULL },
    { "callWithId:", "call", "Lrx.Subscriber;", 0x1, NULL, "(Lrx/Subscriber<-Ljava/util/List<TT;>;>;)Lrx/Subscriber<-TT;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "count_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "skip_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorBufferWithSize = { 2, "OperatorBufferWithSize", "rx.internal.operators", NULL, 0x11, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;Lrx/Observable$Operator<Ljava/util/List<TT;>;TT;>;" };
  return &_RxInternalOperatorsOperatorBufferWithSize;
}

@end

void RxInternalOperatorsOperatorBufferWithSize_initWithInt_withInt_(RxInternalOperatorsOperatorBufferWithSize *self, jint count, jint skip) {
  NSObject_init(self);
  if (count <= 0) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"count must be greater than 0");
  }
  if (skip <= 0) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"skip must be greater than 0");
  }
  self->count_ = count;
  self->skip_ = skip;
}

RxInternalOperatorsOperatorBufferWithSize *new_RxInternalOperatorsOperatorBufferWithSize_initWithInt_withInt_(jint count, jint skip) {
  RxInternalOperatorsOperatorBufferWithSize *self = [RxInternalOperatorsOperatorBufferWithSize alloc];
  RxInternalOperatorsOperatorBufferWithSize_initWithInt_withInt_(self, count, skip);
  return self;
}

RxInternalOperatorsOperatorBufferWithSize *create_RxInternalOperatorsOperatorBufferWithSize_initWithInt_withInt_(jint count, jint skip) {
  return new_RxInternalOperatorsOperatorBufferWithSize_initWithInt_withInt_(count, skip);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorBufferWithSize)

@implementation RxInternalOperatorsOperatorBufferWithSize_$1

- (void)setProducerWithRxProducer:(id<RxProducer>)producer {
  [((RxSubscriber *) nil_chk(val$child_)) setProducerWithRxProducer:new_RxInternalOperatorsOperatorBufferWithSize_$1_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$1_withRxProducer_(self, producer)];
}

- (void)onNextWithId:(id)t {
  if (buffer_ == nil) {
    buffer_ = new_JavaUtilArrayList_initWithInt_(this$0_->count_);
  }
  [((id<JavaUtilList>) nil_chk(buffer_)) addWithId:t];
  if ([buffer_ size] == this$0_->count_) {
    id<JavaUtilList> oldBuffer = buffer_;
    buffer_ = nil;
    [((RxSubscriber *) nil_chk(val$child_)) onNextWithId:oldBuffer];
  }
}

- (void)onErrorWithNSException:(NSException *)e {
  buffer_ = nil;
  [((RxSubscriber *) nil_chk(val$child_)) onErrorWithNSException:e];
}

- (void)onCompleted {
  id<JavaUtilList> oldBuffer = buffer_;
  buffer_ = nil;
  if (oldBuffer != nil) {
    @try {
      [((RxSubscriber *) nil_chk(val$child_)) onNextWithId:oldBuffer];
    }
    @catch (NSException *t) {
      [self onErrorWithNSException:t];
      return;
    }
  }
  [((RxSubscriber *) nil_chk(val$child_)) onCompleted];
}

- (instancetype)initWithRxInternalOperatorsOperatorBufferWithSize:(RxInternalOperatorsOperatorBufferWithSize *)outer$
                                                 withRxSubscriber:(RxSubscriber *)capture$0
                                                 withRxSubscriber:(RxSubscriber *)arg$0 {
  RxInternalOperatorsOperatorBufferWithSize_$1_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(self, outer$, capture$0, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setProducerWithRxProducer:", "setProducer", "V", 0x1, NULL, NULL },
    { "onNextWithId:", "onNext", "V", 0x1, NULL, "(TT;)V" },
    { "onErrorWithNSException:", "onError", "V", 0x1, NULL, NULL },
    { "onCompleted", NULL, "V", 0x1, NULL, NULL },
    { "initWithRxInternalOperatorsOperatorBufferWithSize:withRxSubscriber:withRxSubscriber:", "", NULL, 0x0, NULL, "(Lrx/internal/operators/OperatorBufferWithSize;Lrx/Subscriber<-Ljava/util/List<TT;>;>;Lrx/Subscriber<*>;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lrx.internal.operators.OperatorBufferWithSize;", NULL, NULL, .constantValue.asLong = 0 },
    { "buffer_", NULL, 0x0, "Ljava.util.List;", NULL, "Ljava/util/List<TT;>;", .constantValue.asLong = 0 },
    { "val$child_", NULL, 0x1012, "Lrx.Subscriber;", NULL, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TT;"};
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxInternalOperatorsOperatorBufferWithSize", "callWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorBufferWithSize_$1 = { 2, "", "rx.internal.operators", "OperatorBufferWithSize", 0x8008, 5, methods, 3, fields, 1, superclass_type_args, 0, NULL, &enclosing_method, "Lrx/Subscriber<TT;>;" };
  return &_RxInternalOperatorsOperatorBufferWithSize_$1;
}

@end

void RxInternalOperatorsOperatorBufferWithSize_$1_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithSize_$1 *self, RxInternalOperatorsOperatorBufferWithSize *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  self->this$0_ = outer$;
  self->val$child_ = capture$0;
  RxSubscriber_initWithRxSubscriber_(self, arg$0);
}

RxInternalOperatorsOperatorBufferWithSize_$1 *new_RxInternalOperatorsOperatorBufferWithSize_$1_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithSize *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  RxInternalOperatorsOperatorBufferWithSize_$1 *self = [RxInternalOperatorsOperatorBufferWithSize_$1 alloc];
  RxInternalOperatorsOperatorBufferWithSize_$1_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(self, outer$, capture$0, arg$0);
  return self;
}

RxInternalOperatorsOperatorBufferWithSize_$1 *create_RxInternalOperatorsOperatorBufferWithSize_$1_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithSize *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  return new_RxInternalOperatorsOperatorBufferWithSize_$1_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(outer$, capture$0, arg$0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorBufferWithSize_$1)

@implementation RxInternalOperatorsOperatorBufferWithSize_$1_$1

- (void)requestWithLong:(jlong)n {
  if (JreLoadVolatileBoolean(&infinite_)) {
    return;
  }
  if (n >= JavaLangLong_MAX_VALUE / this$0_->this$0_->count_) {
    JreAssignVolatileBoolean(&infinite_, true);
    [((id<RxProducer>) nil_chk(val$producer_)) requestWithLong:JavaLangLong_MAX_VALUE];
  }
  else {
    [((id<RxProducer>) nil_chk(val$producer_)) requestWithLong:n * this$0_->this$0_->count_];
  }
}

- (instancetype)initWithRxInternalOperatorsOperatorBufferWithSize_$1:(RxInternalOperatorsOperatorBufferWithSize_$1 *)outer$
                                                      withRxProducer:(id<RxProducer>)capture$0 {
  RxInternalOperatorsOperatorBufferWithSize_$1_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$1_withRxProducer_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "requestWithLong:", "request", "V", 0x1, NULL, NULL },
    { "initWithRxInternalOperatorsOperatorBufferWithSize_$1:withRxProducer:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lrx.internal.operators.OperatorBufferWithSize$1;", NULL, NULL, .constantValue.asLong = 0 },
    { "infinite_", NULL, 0x42, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "val$producer_", NULL, 0x1012, "Lrx.Producer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxInternalOperatorsOperatorBufferWithSize_$1", "setProducerWithRxProducer:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorBufferWithSize_$1_$1 = { 2, "", "rx.internal.operators", "OperatorBufferWithSize$", 0x8008, 2, methods, 3, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_RxInternalOperatorsOperatorBufferWithSize_$1_$1;
}

@end

void RxInternalOperatorsOperatorBufferWithSize_$1_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$1_withRxProducer_(RxInternalOperatorsOperatorBufferWithSize_$1_$1 *self, RxInternalOperatorsOperatorBufferWithSize_$1 *outer$, id<RxProducer> capture$0) {
  self->this$0_ = outer$;
  self->val$producer_ = capture$0;
  NSObject_init(self);
  JreAssignVolatileBoolean(&self->infinite_, false);
}

RxInternalOperatorsOperatorBufferWithSize_$1_$1 *new_RxInternalOperatorsOperatorBufferWithSize_$1_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$1_withRxProducer_(RxInternalOperatorsOperatorBufferWithSize_$1 *outer$, id<RxProducer> capture$0) {
  RxInternalOperatorsOperatorBufferWithSize_$1_$1 *self = [RxInternalOperatorsOperatorBufferWithSize_$1_$1 alloc];
  RxInternalOperatorsOperatorBufferWithSize_$1_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$1_withRxProducer_(self, outer$, capture$0);
  return self;
}

RxInternalOperatorsOperatorBufferWithSize_$1_$1 *create_RxInternalOperatorsOperatorBufferWithSize_$1_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$1_withRxProducer_(RxInternalOperatorsOperatorBufferWithSize_$1 *outer$, id<RxProducer> capture$0) {
  return new_RxInternalOperatorsOperatorBufferWithSize_$1_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$1_withRxProducer_(outer$, capture$0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorBufferWithSize_$1_$1)

@implementation RxInternalOperatorsOperatorBufferWithSize_$2

- (void)setProducerWithRxProducer:(id<RxProducer>)producer {
  [((RxSubscriber *) nil_chk(val$child_)) setProducerWithRxProducer:new_RxInternalOperatorsOperatorBufferWithSize_$2_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$2_withRxProducer_(self, producer)];
}

- (void)onNextWithId:(id)t {
  if (index_++ % this$0_->skip_ == 0) {
    [((id<JavaUtilList>) nil_chk(chunks_)) addWithId:new_JavaUtilArrayList_initWithInt_(this$0_->count_)];
  }
  id<JavaUtilIterator> it = [((id<JavaUtilList>) nil_chk(chunks_)) iterator];
  while ([((id<JavaUtilIterator>) nil_chk(it)) hasNext]) {
    id<JavaUtilList> chunk = [it next];
    [((id<JavaUtilList>) nil_chk(chunk)) addWithId:t];
    if ([chunk size] == this$0_->count_) {
      [it remove];
      [((RxSubscriber *) nil_chk(val$child_)) onNextWithId:chunk];
    }
  }
}

- (void)onErrorWithNSException:(NSException *)e {
  [((id<JavaUtilList>) nil_chk(chunks_)) clear];
  [((RxSubscriber *) nil_chk(val$child_)) onErrorWithNSException:e];
}

- (void)onCompleted {
  @try {
    for (id<JavaUtilList> __strong chunk in nil_chk(chunks_)) {
      @try {
        [((RxSubscriber *) nil_chk(val$child_)) onNextWithId:chunk];
      }
      @catch (NSException *t) {
        [self onErrorWithNSException:t];
        return;
      }
    }
    [((RxSubscriber *) nil_chk(val$child_)) onCompleted];
  }
  @finally {
    [((id<JavaUtilList>) nil_chk(chunks_)) clear];
  }
}

- (instancetype)initWithRxInternalOperatorsOperatorBufferWithSize:(RxInternalOperatorsOperatorBufferWithSize *)outer$
                                                 withRxSubscriber:(RxSubscriber *)capture$0
                                                 withRxSubscriber:(RxSubscriber *)arg$0 {
  RxInternalOperatorsOperatorBufferWithSize_$2_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(self, outer$, capture$0, arg$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setProducerWithRxProducer:", "setProducer", "V", 0x1, NULL, NULL },
    { "onNextWithId:", "onNext", "V", 0x1, NULL, "(TT;)V" },
    { "onErrorWithNSException:", "onError", "V", 0x1, NULL, NULL },
    { "onCompleted", NULL, "V", 0x1, NULL, NULL },
    { "initWithRxInternalOperatorsOperatorBufferWithSize:withRxSubscriber:withRxSubscriber:", "", NULL, 0x0, NULL, "(Lrx/internal/operators/OperatorBufferWithSize;Lrx/Subscriber<-Ljava/util/List<TT;>;>;Lrx/Subscriber<*>;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lrx.internal.operators.OperatorBufferWithSize;", NULL, NULL, .constantValue.asLong = 0 },
    { "chunks_", NULL, 0x10, "Ljava.util.List;", NULL, "Ljava/util/List<Ljava/util/List<TT;>;>;", .constantValue.asLong = 0 },
    { "index_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "val$child_", NULL, 0x1012, "Lrx.Subscriber;", NULL, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TT;"};
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxInternalOperatorsOperatorBufferWithSize", "callWithId:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorBufferWithSize_$2 = { 2, "", "rx.internal.operators", "OperatorBufferWithSize", 0x8008, 5, methods, 4, fields, 1, superclass_type_args, 0, NULL, &enclosing_method, "Lrx/Subscriber<TT;>;" };
  return &_RxInternalOperatorsOperatorBufferWithSize_$2;
}

@end

void RxInternalOperatorsOperatorBufferWithSize_$2_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithSize_$2 *self, RxInternalOperatorsOperatorBufferWithSize *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  self->this$0_ = outer$;
  self->val$child_ = capture$0;
  RxSubscriber_initWithRxSubscriber_(self, arg$0);
  self->chunks_ = new_JavaUtilLinkedList_init();
}

RxInternalOperatorsOperatorBufferWithSize_$2 *new_RxInternalOperatorsOperatorBufferWithSize_$2_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithSize *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  RxInternalOperatorsOperatorBufferWithSize_$2 *self = [RxInternalOperatorsOperatorBufferWithSize_$2 alloc];
  RxInternalOperatorsOperatorBufferWithSize_$2_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(self, outer$, capture$0, arg$0);
  return self;
}

RxInternalOperatorsOperatorBufferWithSize_$2 *create_RxInternalOperatorsOperatorBufferWithSize_$2_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithSize *outer$, RxSubscriber *capture$0, RxSubscriber *arg$0) {
  return new_RxInternalOperatorsOperatorBufferWithSize_$2_initWithRxInternalOperatorsOperatorBufferWithSize_withRxSubscriber_withRxSubscriber_(outer$, capture$0, arg$0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorBufferWithSize_$2)

@implementation RxInternalOperatorsOperatorBufferWithSize_$2_$1

- (void)requestInfinite {
  RxInternalOperatorsOperatorBufferWithSize_$2_$1_requestInfinite(self);
}

- (void)requestWithLong:(jlong)n {
  if (JreLoadVolatileBoolean(&infinite_)) {
    return;
  }
  if (n == JavaLangLong_MAX_VALUE) {
    RxInternalOperatorsOperatorBufferWithSize_$2_$1_requestInfinite(self);
    return;
  }
  else {
    if (JreLoadVolatileBoolean(&firstRequest_)) {
      JreAssignVolatileBoolean(&firstRequest_, false);
      if (n - 1 >= (JavaLangLong_MAX_VALUE - this$0_->this$0_->count_) / this$0_->this$0_->skip_) {
        RxInternalOperatorsOperatorBufferWithSize_$2_$1_requestInfinite(self);
        return;
      }
      [((id<RxProducer>) nil_chk(val$producer_)) requestWithLong:this$0_->this$0_->count_ + this$0_->this$0_->skip_ * (n - 1)];
    }
    else {
      if (n >= JavaLangLong_MAX_VALUE / this$0_->this$0_->skip_) {
        RxInternalOperatorsOperatorBufferWithSize_$2_$1_requestInfinite(self);
        return;
      }
      [((id<RxProducer>) nil_chk(val$producer_)) requestWithLong:this$0_->this$0_->skip_ * n];
    }
  }
}

- (instancetype)initWithRxInternalOperatorsOperatorBufferWithSize_$2:(RxInternalOperatorsOperatorBufferWithSize_$2 *)outer$
                                                      withRxProducer:(id<RxProducer>)capture$0 {
  RxInternalOperatorsOperatorBufferWithSize_$2_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$2_withRxProducer_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "requestInfinite", NULL, "V", 0x2, NULL, NULL },
    { "requestWithLong:", "request", "V", 0x1, NULL, NULL },
    { "initWithRxInternalOperatorsOperatorBufferWithSize_$2:withRxProducer:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lrx.internal.operators.OperatorBufferWithSize$2;", NULL, NULL, .constantValue.asLong = 0 },
    { "firstRequest_", NULL, 0x42, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "infinite_", NULL, 0x42, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "val$producer_", NULL, 0x1012, "Lrx.Producer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxInternalOperatorsOperatorBufferWithSize_$2", "setProducerWithRxProducer:" };
  static const J2ObjcClassInfo _RxInternalOperatorsOperatorBufferWithSize_$2_$1 = { 2, "", "rx.internal.operators", "OperatorBufferWithSize$", 0x8008, 3, methods, 4, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_RxInternalOperatorsOperatorBufferWithSize_$2_$1;
}

@end

void RxInternalOperatorsOperatorBufferWithSize_$2_$1_requestInfinite(RxInternalOperatorsOperatorBufferWithSize_$2_$1 *self) {
  JreAssignVolatileBoolean(&self->infinite_, true);
  [((id<RxProducer>) nil_chk(self->val$producer_)) requestWithLong:JavaLangLong_MAX_VALUE];
}

void RxInternalOperatorsOperatorBufferWithSize_$2_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$2_withRxProducer_(RxInternalOperatorsOperatorBufferWithSize_$2_$1 *self, RxInternalOperatorsOperatorBufferWithSize_$2 *outer$, id<RxProducer> capture$0) {
  self->this$0_ = outer$;
  self->val$producer_ = capture$0;
  NSObject_init(self);
  JreAssignVolatileBoolean(&self->firstRequest_, true);
  JreAssignVolatileBoolean(&self->infinite_, false);
}

RxInternalOperatorsOperatorBufferWithSize_$2_$1 *new_RxInternalOperatorsOperatorBufferWithSize_$2_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$2_withRxProducer_(RxInternalOperatorsOperatorBufferWithSize_$2 *outer$, id<RxProducer> capture$0) {
  RxInternalOperatorsOperatorBufferWithSize_$2_$1 *self = [RxInternalOperatorsOperatorBufferWithSize_$2_$1 alloc];
  RxInternalOperatorsOperatorBufferWithSize_$2_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$2_withRxProducer_(self, outer$, capture$0);
  return self;
}

RxInternalOperatorsOperatorBufferWithSize_$2_$1 *create_RxInternalOperatorsOperatorBufferWithSize_$2_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$2_withRxProducer_(RxInternalOperatorsOperatorBufferWithSize_$2 *outer$, id<RxProducer> capture$0) {
  return new_RxInternalOperatorsOperatorBufferWithSize_$2_$1_initWithRxInternalOperatorsOperatorBufferWithSize_$2_withRxProducer_(outer$, capture$0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalOperatorsOperatorBufferWithSize_$2_$1)
