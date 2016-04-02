//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/util/unsafe/MpmcArrayQueue.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "java/lang/NoSuchFieldException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/reflect/Field.h"
#include "rx/internal/util/unsafe/ConcurrentCircularArrayQueue.h"
#include "rx/internal/util/unsafe/ConcurrentSequencedCircularArrayQueue.h"
#include "rx/internal/util/unsafe/MpmcArrayQueue.h"
#include "rx/internal/util/unsafe/UnsafeAccess.h"
#include "sun/misc/Unsafe.h"

@interface RxInternalUtilUnsafeMpmcArrayQueueProducerField () {
 @public
  volatile_jlong producerIndex_;
}

@end

inline jlong RxInternalUtilUnsafeMpmcArrayQueueProducerField_get_P_INDEX_OFFSET();
static jlong RxInternalUtilUnsafeMpmcArrayQueueProducerField_P_INDEX_OFFSET;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(RxInternalUtilUnsafeMpmcArrayQueueProducerField, P_INDEX_OFFSET, jlong)

__attribute__((unused)) static jlong RxInternalUtilUnsafeMpmcArrayQueueProducerField_lvProducerIndex(RxInternalUtilUnsafeMpmcArrayQueueProducerField *self);

__attribute__((unused)) static jboolean RxInternalUtilUnsafeMpmcArrayQueueProducerField_casProducerIndexWithLong_withLong_(RxInternalUtilUnsafeMpmcArrayQueueProducerField *self, jlong expect, jlong newValue);

@interface RxInternalUtilUnsafeMpmcArrayQueueConsumerField () {
 @public
  volatile_jlong consumerIndex_;
}

@end

inline jlong RxInternalUtilUnsafeMpmcArrayQueueConsumerField_get_C_INDEX_OFFSET();
static jlong RxInternalUtilUnsafeMpmcArrayQueueConsumerField_C_INDEX_OFFSET;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(RxInternalUtilUnsafeMpmcArrayQueueConsumerField, C_INDEX_OFFSET, jlong)

__attribute__((unused)) static jlong RxInternalUtilUnsafeMpmcArrayQueueConsumerField_lvConsumerIndex(RxInternalUtilUnsafeMpmcArrayQueueConsumerField *self);

__attribute__((unused)) static jboolean RxInternalUtilUnsafeMpmcArrayQueueConsumerField_casConsumerIndexWithLong_withLong_(RxInternalUtilUnsafeMpmcArrayQueueConsumerField *self, jlong expect, jlong newValue);

@implementation RxInternalUtilUnsafeMpmcArrayQueueL1Pad

- (instancetype)initWithInt:(jint)capacity {
  RxInternalUtilUnsafeMpmcArrayQueueL1Pad_initWithInt_(self, capacity);
  return self;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "MpmcArrayQueueL1Pad", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "p10_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p11_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p12_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p13_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p14_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p15_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p16_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p30_MpmcArrayQueueL1Pad_", "p30", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p31_MpmcArrayQueueL1Pad_", "p31", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p32_MpmcArrayQueueL1Pad_", "p32", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p33_MpmcArrayQueueL1Pad_", "p33", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p34_MpmcArrayQueueL1Pad_", "p34", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p35_MpmcArrayQueueL1Pad_", "p35", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p36_MpmcArrayQueueL1Pad_", "p36", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p37_MpmcArrayQueueL1Pad_", "p37", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TE;"};
  static const J2ObjcClassInfo _RxInternalUtilUnsafeMpmcArrayQueueL1Pad = { 2, "MpmcArrayQueueL1Pad", "rx.internal.util.unsafe", NULL, 0x400, 1, methods, 15, fields, 1, superclass_type_args, 0, NULL, NULL, "<E:Ljava/lang/Object;>Lrx/internal/util/unsafe/ConcurrentSequencedCircularArrayQueue<TE;>;" };
  return &_RxInternalUtilUnsafeMpmcArrayQueueL1Pad;
}

@end

void RxInternalUtilUnsafeMpmcArrayQueueL1Pad_initWithInt_(RxInternalUtilUnsafeMpmcArrayQueueL1Pad *self, jint capacity) {
  RxInternalUtilUnsafeConcurrentSequencedCircularArrayQueue_initWithInt_(self, capacity);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilUnsafeMpmcArrayQueueL1Pad)

J2OBJC_INITIALIZED_DEFN(RxInternalUtilUnsafeMpmcArrayQueueProducerField)

@implementation RxInternalUtilUnsafeMpmcArrayQueueProducerField

- (instancetype)initWithInt:(jint)capacity {
  RxInternalUtilUnsafeMpmcArrayQueueProducerField_initWithInt_(self, capacity);
  return self;
}

- (jlong)lvProducerIndex {
  return RxInternalUtilUnsafeMpmcArrayQueueProducerField_lvProducerIndex(self);
}

- (jboolean)casProducerIndexWithLong:(jlong)expect
                            withLong:(jlong)newValue {
  return RxInternalUtilUnsafeMpmcArrayQueueProducerField_casProducerIndexWithLong_withLong_(self, expect, newValue);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (void)initialize {
  if (self == [RxInternalUtilUnsafeMpmcArrayQueueProducerField class]) {
    {
      @try {
        RxInternalUtilUnsafeMpmcArrayQueueProducerField_P_INDEX_OFFSET = [((SunMiscUnsafe *) nil_chk(JreLoadStatic(RxInternalUtilUnsafeUnsafeAccess, UNSAFE))) objectFieldOffsetWithJavaLangReflectField:[RxInternalUtilUnsafeMpmcArrayQueueProducerField_class_() getDeclaredField:@"producerIndex"]];
      }
      @catch (JavaLangNoSuchFieldException *e) {
        @throw new_JavaLangRuntimeException_initWithNSException_(e);
      }
    }
    J2OBJC_SET_INITIALIZED(RxInternalUtilUnsafeMpmcArrayQueueProducerField)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "MpmcArrayQueueProducerField", NULL, 0x1, NULL, NULL },
    { "lvProducerIndex", NULL, "J", 0x14, NULL, NULL },
    { "casProducerIndexWithLong:withLong:", "casProducerIndex", "Z", 0x14, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "P_INDEX_OFFSET", "P_INDEX_OFFSET", 0x1a, "J", &RxInternalUtilUnsafeMpmcArrayQueueProducerField_P_INDEX_OFFSET, NULL, .constantValue.asLong = 0 },
    { "producerIndex_", NULL, 0x42, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TE;"};
  static const J2ObjcClassInfo _RxInternalUtilUnsafeMpmcArrayQueueProducerField = { 2, "MpmcArrayQueueProducerField", "rx.internal.util.unsafe", NULL, 0x400, 3, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "<E:Ljava/lang/Object;>Lrx/internal/util/unsafe/MpmcArrayQueueL1Pad<TE;>;" };
  return &_RxInternalUtilUnsafeMpmcArrayQueueProducerField;
}

@end

void RxInternalUtilUnsafeMpmcArrayQueueProducerField_initWithInt_(RxInternalUtilUnsafeMpmcArrayQueueProducerField *self, jint capacity) {
  RxInternalUtilUnsafeMpmcArrayQueueL1Pad_initWithInt_(self, capacity);
}

jlong RxInternalUtilUnsafeMpmcArrayQueueProducerField_lvProducerIndex(RxInternalUtilUnsafeMpmcArrayQueueProducerField *self) {
  return JreLoadVolatileLong(&self->producerIndex_);
}

jboolean RxInternalUtilUnsafeMpmcArrayQueueProducerField_casProducerIndexWithLong_withLong_(RxInternalUtilUnsafeMpmcArrayQueueProducerField *self, jlong expect, jlong newValue) {
  return [((SunMiscUnsafe *) nil_chk(JreLoadStatic(RxInternalUtilUnsafeUnsafeAccess, UNSAFE))) compareAndSwapLongWithId:self withLong:RxInternalUtilUnsafeMpmcArrayQueueProducerField_P_INDEX_OFFSET withLong:expect withLong:newValue];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilUnsafeMpmcArrayQueueProducerField)

@implementation RxInternalUtilUnsafeMpmcArrayQueueL2Pad

- (instancetype)initWithInt:(jint)capacity {
  RxInternalUtilUnsafeMpmcArrayQueueL2Pad_initWithInt_(self, capacity);
  return self;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "MpmcArrayQueueL2Pad", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "p20_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p21_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p22_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p23_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p24_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p25_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p26_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p30_MpmcArrayQueueL2Pad_", "p30", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p31_MpmcArrayQueueL2Pad_", "p31", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p32_MpmcArrayQueueL2Pad_", "p32", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p33_MpmcArrayQueueL2Pad_", "p33", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p34_MpmcArrayQueueL2Pad_", "p34", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p35_MpmcArrayQueueL2Pad_", "p35", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p36_MpmcArrayQueueL2Pad_", "p36", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p37_MpmcArrayQueueL2Pad_", "p37", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TE;"};
  static const J2ObjcClassInfo _RxInternalUtilUnsafeMpmcArrayQueueL2Pad = { 2, "MpmcArrayQueueL2Pad", "rx.internal.util.unsafe", NULL, 0x400, 1, methods, 15, fields, 1, superclass_type_args, 0, NULL, NULL, "<E:Ljava/lang/Object;>Lrx/internal/util/unsafe/MpmcArrayQueueProducerField<TE;>;" };
  return &_RxInternalUtilUnsafeMpmcArrayQueueL2Pad;
}

@end

void RxInternalUtilUnsafeMpmcArrayQueueL2Pad_initWithInt_(RxInternalUtilUnsafeMpmcArrayQueueL2Pad *self, jint capacity) {
  RxInternalUtilUnsafeMpmcArrayQueueProducerField_initWithInt_(self, capacity);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilUnsafeMpmcArrayQueueL2Pad)

J2OBJC_INITIALIZED_DEFN(RxInternalUtilUnsafeMpmcArrayQueueConsumerField)

@implementation RxInternalUtilUnsafeMpmcArrayQueueConsumerField

- (instancetype)initWithInt:(jint)capacity {
  RxInternalUtilUnsafeMpmcArrayQueueConsumerField_initWithInt_(self, capacity);
  return self;
}

- (jlong)lvConsumerIndex {
  return RxInternalUtilUnsafeMpmcArrayQueueConsumerField_lvConsumerIndex(self);
}

- (jboolean)casConsumerIndexWithLong:(jlong)expect
                            withLong:(jlong)newValue {
  return RxInternalUtilUnsafeMpmcArrayQueueConsumerField_casConsumerIndexWithLong_withLong_(self, expect, newValue);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (void)initialize {
  if (self == [RxInternalUtilUnsafeMpmcArrayQueueConsumerField class]) {
    {
      @try {
        RxInternalUtilUnsafeMpmcArrayQueueConsumerField_C_INDEX_OFFSET = [((SunMiscUnsafe *) nil_chk(JreLoadStatic(RxInternalUtilUnsafeUnsafeAccess, UNSAFE))) objectFieldOffsetWithJavaLangReflectField:[RxInternalUtilUnsafeMpmcArrayQueueConsumerField_class_() getDeclaredField:@"consumerIndex"]];
      }
      @catch (JavaLangNoSuchFieldException *e) {
        @throw new_JavaLangRuntimeException_initWithNSException_(e);
      }
    }
    J2OBJC_SET_INITIALIZED(RxInternalUtilUnsafeMpmcArrayQueueConsumerField)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "MpmcArrayQueueConsumerField", NULL, 0x1, NULL, NULL },
    { "lvConsumerIndex", NULL, "J", 0x14, NULL, NULL },
    { "casConsumerIndexWithLong:withLong:", "casConsumerIndex", "Z", 0x14, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "C_INDEX_OFFSET", "C_INDEX_OFFSET", 0x1a, "J", &RxInternalUtilUnsafeMpmcArrayQueueConsumerField_C_INDEX_OFFSET, NULL, .constantValue.asLong = 0 },
    { "consumerIndex_", NULL, 0x42, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TE;"};
  static const J2ObjcClassInfo _RxInternalUtilUnsafeMpmcArrayQueueConsumerField = { 2, "MpmcArrayQueueConsumerField", "rx.internal.util.unsafe", NULL, 0x400, 3, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "<E:Ljava/lang/Object;>Lrx/internal/util/unsafe/MpmcArrayQueueL2Pad<TE;>;" };
  return &_RxInternalUtilUnsafeMpmcArrayQueueConsumerField;
}

@end

void RxInternalUtilUnsafeMpmcArrayQueueConsumerField_initWithInt_(RxInternalUtilUnsafeMpmcArrayQueueConsumerField *self, jint capacity) {
  RxInternalUtilUnsafeMpmcArrayQueueL2Pad_initWithInt_(self, capacity);
}

jlong RxInternalUtilUnsafeMpmcArrayQueueConsumerField_lvConsumerIndex(RxInternalUtilUnsafeMpmcArrayQueueConsumerField *self) {
  return JreLoadVolatileLong(&self->consumerIndex_);
}

jboolean RxInternalUtilUnsafeMpmcArrayQueueConsumerField_casConsumerIndexWithLong_withLong_(RxInternalUtilUnsafeMpmcArrayQueueConsumerField *self, jlong expect, jlong newValue) {
  return [((SunMiscUnsafe *) nil_chk(JreLoadStatic(RxInternalUtilUnsafeUnsafeAccess, UNSAFE))) compareAndSwapLongWithId:self withLong:RxInternalUtilUnsafeMpmcArrayQueueConsumerField_C_INDEX_OFFSET withLong:expect withLong:newValue];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilUnsafeMpmcArrayQueueConsumerField)

@implementation RxInternalUtilUnsafeMpmcArrayQueue

- (instancetype)initWithInt:(jint)capacity {
  RxInternalUtilUnsafeMpmcArrayQueue_initWithInt_(self, capacity);
  return self;
}

- (jboolean)offerWithId:(id)e {
  if (nil == e) {
    @throw new_JavaLangNullPointerException_initWithNSString_(@"Null is not a valid element");
  }
  IOSLongArray *lSequenceBuffer = sequenceBuffer_;
  jlong currentProducerIndex;
  jlong seqOffset;
  while (true) {
    currentProducerIndex = RxInternalUtilUnsafeMpmcArrayQueueProducerField_lvProducerIndex(self);
    seqOffset = [self calcSequenceOffsetWithLong:currentProducerIndex];
    jlong seq = [self lvSequenceWithLongArray:lSequenceBuffer withLong:seqOffset];
    jlong delta = seq - currentProducerIndex;
    if (delta == 0) {
      if (RxInternalUtilUnsafeMpmcArrayQueueProducerField_casProducerIndexWithLong_withLong_(self, currentProducerIndex, currentProducerIndex + 1)) {
        break;
      }
    }
    else if (delta < 0) {
      return false;
    }
  }
  jlong elementOffset = [self calcElementOffsetWithLong:currentProducerIndex];
  [self spElementWithLong:elementOffset withId:e];
  [self soSequenceWithLongArray:lSequenceBuffer withLong:seqOffset withLong:currentProducerIndex + 1];
  return true;
}

- (id)poll {
  IOSLongArray *lSequenceBuffer = sequenceBuffer_;
  jlong currentConsumerIndex;
  jlong seqOffset;
  while (true) {
    currentConsumerIndex = RxInternalUtilUnsafeMpmcArrayQueueConsumerField_lvConsumerIndex(self);
    seqOffset = [self calcSequenceOffsetWithLong:currentConsumerIndex];
    jlong seq = [self lvSequenceWithLongArray:lSequenceBuffer withLong:seqOffset];
    jlong delta = seq - (currentConsumerIndex + 1);
    if (delta == 0) {
      if (RxInternalUtilUnsafeMpmcArrayQueueConsumerField_casConsumerIndexWithLong_withLong_(self, currentConsumerIndex, currentConsumerIndex + 1)) {
        break;
      }
    }
    else if (delta < 0) {
      return nil;
    }
  }
  jlong offset = [self calcElementOffsetWithLong:currentConsumerIndex];
  id e = [self lpElementWithLong:offset];
  [self spElementWithLong:offset withId:nil];
  [self soSequenceWithLongArray:lSequenceBuffer withLong:seqOffset withLong:currentConsumerIndex + capacity_];
  return e;
}

- (id)peek {
  return [self lpElementWithLong:[self calcElementOffsetWithLong:RxInternalUtilUnsafeMpmcArrayQueueConsumerField_lvConsumerIndex(self)]];
}

- (jint)size {
  jlong after = RxInternalUtilUnsafeMpmcArrayQueueConsumerField_lvConsumerIndex(self);
  while (true) {
    jlong before = after;
    jlong currentProducerIndex = RxInternalUtilUnsafeMpmcArrayQueueProducerField_lvProducerIndex(self);
    after = RxInternalUtilUnsafeMpmcArrayQueueConsumerField_lvConsumerIndex(self);
    if (before == after) {
      return (jint) (currentProducerIndex - after);
    }
  }
}

- (jboolean)isEmpty {
  return RxInternalUtilUnsafeMpmcArrayQueueConsumerField_lvConsumerIndex(self) == RxInternalUtilUnsafeMpmcArrayQueueProducerField_lvProducerIndex(self);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "MpmcArrayQueue", NULL, 0x1, NULL, NULL },
    { "offerWithId:", "offer", "Z", 0x1, NULL, "(TE;)Z" },
    { "poll", NULL, "TE;", 0x1, NULL, "()TE;" },
    { "peek", NULL, "TE;", 0x1, NULL, "()TE;" },
    { "size", NULL, "I", 0x1, NULL, NULL },
    { "isEmpty", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "p40_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p41_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p42_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p43_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p44_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p45_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p46_", NULL, 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p30_MpmcArrayQueue_", "p30", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p31_MpmcArrayQueue_", "p31", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p32_MpmcArrayQueue_", "p32", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p33_MpmcArrayQueue_", "p33", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p34_MpmcArrayQueue_", "p34", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p35_MpmcArrayQueue_", "p35", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p36_MpmcArrayQueue_", "p36", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "p37_MpmcArrayQueue_", "p37", 0x0, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TE;"};
  static const J2ObjcClassInfo _RxInternalUtilUnsafeMpmcArrayQueue = { 2, "MpmcArrayQueue", "rx.internal.util.unsafe", NULL, 0x1, 6, methods, 15, fields, 1, superclass_type_args, 0, NULL, NULL, "<E:Ljava/lang/Object;>Lrx/internal/util/unsafe/MpmcArrayQueueConsumerField<TE;>;" };
  return &_RxInternalUtilUnsafeMpmcArrayQueue;
}

@end

void RxInternalUtilUnsafeMpmcArrayQueue_initWithInt_(RxInternalUtilUnsafeMpmcArrayQueue *self, jint capacity) {
  RxInternalUtilUnsafeMpmcArrayQueueConsumerField_initWithInt_(self, JavaLangMath_maxWithInt_withInt_(2, capacity));
}

RxInternalUtilUnsafeMpmcArrayQueue *new_RxInternalUtilUnsafeMpmcArrayQueue_initWithInt_(jint capacity) {
  RxInternalUtilUnsafeMpmcArrayQueue *self = [RxInternalUtilUnsafeMpmcArrayQueue alloc];
  RxInternalUtilUnsafeMpmcArrayQueue_initWithInt_(self, capacity);
  return self;
}

RxInternalUtilUnsafeMpmcArrayQueue *create_RxInternalUtilUnsafeMpmcArrayQueue_initWithInt_(jint capacity) {
  return new_RxInternalUtilUnsafeMpmcArrayQueue_initWithInt_(capacity);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxInternalUtilUnsafeMpmcArrayQueue)
