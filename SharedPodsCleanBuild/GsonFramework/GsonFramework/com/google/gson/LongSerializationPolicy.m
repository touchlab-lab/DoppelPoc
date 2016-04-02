//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/gson/gson/src/main/java/com/google/gson/LongSerializationPolicy.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/gson/JsonElement.h"
#include "com/google/gson/JsonPrimitive.h"
#include "com/google/gson/LongSerializationPolicy.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Long.h"

__attribute__((unused)) static void ComGoogleGsonLongSerializationPolicy_initWithNSString_withInt_(ComGoogleGsonLongSerializationPolicy *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComGoogleGsonLongSerializationPolicy *new_ComGoogleGsonLongSerializationPolicy_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@interface ComGoogleGsonLongSerializationPolicy_$1 : ComGoogleGsonLongSerializationPolicy < NSCopying >

- (ComGoogleGsonJsonElement *)serializeWithJavaLangLong:(JavaLangLong *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonLongSerializationPolicy_$1)

__attribute__((unused)) static void ComGoogleGsonLongSerializationPolicy_$1_initWithNSString_withInt_(ComGoogleGsonLongSerializationPolicy_$1 *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComGoogleGsonLongSerializationPolicy_$1 *new_ComGoogleGsonLongSerializationPolicy_$1_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonLongSerializationPolicy_$1)

@interface ComGoogleGsonLongSerializationPolicy_$2 : ComGoogleGsonLongSerializationPolicy < NSCopying >

- (ComGoogleGsonJsonElement *)serializeWithJavaLangLong:(JavaLangLong *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonLongSerializationPolicy_$2)

__attribute__((unused)) static void ComGoogleGsonLongSerializationPolicy_$2_initWithNSString_withInt_(ComGoogleGsonLongSerializationPolicy_$2 *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComGoogleGsonLongSerializationPolicy_$2 *new_ComGoogleGsonLongSerializationPolicy_$2_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonLongSerializationPolicy_$2)

J2OBJC_INITIALIZED_DEFN(ComGoogleGsonLongSerializationPolicy)

ComGoogleGsonLongSerializationPolicy *ComGoogleGsonLongSerializationPolicy_values_[2];

@implementation ComGoogleGsonLongSerializationPolicy

- (ComGoogleGsonJsonElement *)serializeWithJavaLangLong:(JavaLangLong *)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (IOSObjectArray *)values {
  return ComGoogleGsonLongSerializationPolicy_values();
}

+ (ComGoogleGsonLongSerializationPolicy *)valueOfWithNSString:(NSString *)name {
  return ComGoogleGsonLongSerializationPolicy_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [ComGoogleGsonLongSerializationPolicy class]) {
    JreEnum(ComGoogleGsonLongSerializationPolicy, DEFAULT) = new_ComGoogleGsonLongSerializationPolicy_$1_initWithNSString_withInt_(@"DEFAULT", 0);
    JreEnum(ComGoogleGsonLongSerializationPolicy, STRING) = new_ComGoogleGsonLongSerializationPolicy_$2_initWithNSString_withInt_(@"STRING", 1);
    J2OBJC_SET_INITIALIZED(ComGoogleGsonLongSerializationPolicy)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "serializeWithJavaLangLong:", "serialize", "Lcom.google.gson.JsonElement;", 0x401, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT", "DEFAULT", 0x4019, "Lcom.google.gson.LongSerializationPolicy;", &JreEnum(ComGoogleGsonLongSerializationPolicy, DEFAULT), NULL, .constantValue.asLong = 0 },
    { "STRING", "STRING", 0x4019, "Lcom.google.gson.LongSerializationPolicy;", &JreEnum(ComGoogleGsonLongSerializationPolicy, STRING), NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lcom.google.gson.LongSerializationPolicy;"};
  static const J2ObjcClassInfo _ComGoogleGsonLongSerializationPolicy = { 2, "LongSerializationPolicy", "com.google.gson", NULL, 0x4401, 1, methods, 2, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lcom/google/gson/LongSerializationPolicy;>;" };
  return &_ComGoogleGsonLongSerializationPolicy;
}

@end

void ComGoogleGsonLongSerializationPolicy_initWithNSString_withInt_(ComGoogleGsonLongSerializationPolicy *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComGoogleGsonLongSerializationPolicy *new_ComGoogleGsonLongSerializationPolicy_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  ComGoogleGsonLongSerializationPolicy *self = [ComGoogleGsonLongSerializationPolicy alloc];
  ComGoogleGsonLongSerializationPolicy_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *ComGoogleGsonLongSerializationPolicy_values() {
  ComGoogleGsonLongSerializationPolicy_initialize();
  return [IOSObjectArray arrayWithObjects:ComGoogleGsonLongSerializationPolicy_values_ count:2 type:ComGoogleGsonLongSerializationPolicy_class_()];
}

ComGoogleGsonLongSerializationPolicy *ComGoogleGsonLongSerializationPolicy_valueOfWithNSString_(NSString *name) {
  ComGoogleGsonLongSerializationPolicy_initialize();
  for (int i = 0; i < 2; i++) {
    ComGoogleGsonLongSerializationPolicy *e = ComGoogleGsonLongSerializationPolicy_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

ComGoogleGsonLongSerializationPolicy *ComGoogleGsonLongSerializationPolicy_fromOrdinal(NSUInteger ordinal) {
  ComGoogleGsonLongSerializationPolicy_initialize();
  if (ordinal >= 2) {
    return nil;
  }
  return ComGoogleGsonLongSerializationPolicy_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonLongSerializationPolicy)

@implementation ComGoogleGsonLongSerializationPolicy_$1

- (ComGoogleGsonJsonElement *)serializeWithJavaLangLong:(JavaLangLong *)value {
  return new_ComGoogleGsonJsonPrimitive_initWithNSNumber_(value);
}

- (void)dealloc {
  JreCheckFinalize(self, [ComGoogleGsonLongSerializationPolicy_$1 class]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "serializeWithJavaLangLong:", "serialize", "Lcom.google.gson.JsonElement;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ComGoogleGsonLongSerializationPolicy_$1 = { 2, "", "com.google.gson", "LongSerializationPolicy", 0xc018, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonLongSerializationPolicy_$1;
}

@end

void ComGoogleGsonLongSerializationPolicy_$1_initWithNSString_withInt_(ComGoogleGsonLongSerializationPolicy_$1 *self, NSString *__name, jint __ordinal) {
  ComGoogleGsonLongSerializationPolicy_initWithNSString_withInt_(self, __name, __ordinal);
}

ComGoogleGsonLongSerializationPolicy_$1 *new_ComGoogleGsonLongSerializationPolicy_$1_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  ComGoogleGsonLongSerializationPolicy_$1 *self = [ComGoogleGsonLongSerializationPolicy_$1 alloc];
  ComGoogleGsonLongSerializationPolicy_$1_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonLongSerializationPolicy_$1)

@implementation ComGoogleGsonLongSerializationPolicy_$2

- (ComGoogleGsonJsonElement *)serializeWithJavaLangLong:(JavaLangLong *)value {
  return new_ComGoogleGsonJsonPrimitive_initWithNSString_(NSString_valueOf_(value));
}

- (void)dealloc {
  JreCheckFinalize(self, [ComGoogleGsonLongSerializationPolicy_$2 class]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "serializeWithJavaLangLong:", "serialize", "Lcom.google.gson.JsonElement;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ComGoogleGsonLongSerializationPolicy_$2 = { 2, "", "com.google.gson", "LongSerializationPolicy", 0xc018, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonLongSerializationPolicy_$2;
}

@end

void ComGoogleGsonLongSerializationPolicy_$2_initWithNSString_withInt_(ComGoogleGsonLongSerializationPolicy_$2 *self, NSString *__name, jint __ordinal) {
  ComGoogleGsonLongSerializationPolicy_initWithNSString_withInt_(self, __name, __ordinal);
}

ComGoogleGsonLongSerializationPolicy_$2 *new_ComGoogleGsonLongSerializationPolicy_$2_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  ComGoogleGsonLongSerializationPolicy_$2 *self = [ComGoogleGsonLongSerializationPolicy_$2 alloc];
  ComGoogleGsonLongSerializationPolicy_$2_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonLongSerializationPolicy_$2)