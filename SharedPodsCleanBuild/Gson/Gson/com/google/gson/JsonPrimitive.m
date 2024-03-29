//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/gson/gson/src/main/java/com/google/gson/JsonPrimitive.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/gson/JsonElement.h"
#include "com/google/gson/JsonPrimitive.h"
#include "com/google/gson/internal/$Gson$Preconditions.h"
#include "com/google/gson/internal/LazilyParsedNumber.h"
#include "java/lang/Boolean.h"
#include "java/lang/Byte.h"
#include "java/lang/Character.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/Short.h"
#include "java/math/BigDecimal.h"
#include "java/math/BigInteger.h"

@interface ComGoogleGsonJsonPrimitive () {
 @public
  id value_;
}

+ (jboolean)isPrimitiveOrStringWithId:(id)target;

+ (jboolean)isIntegralWithComGoogleGsonJsonPrimitive:(ComGoogleGsonJsonPrimitive *)primitive;

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonJsonPrimitive, value_, id)

inline IOSObjectArray *ComGoogleGsonJsonPrimitive_get_PRIMITIVE_TYPES();
static IOSObjectArray *ComGoogleGsonJsonPrimitive_PRIMITIVE_TYPES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleGsonJsonPrimitive, PRIMITIVE_TYPES, IOSObjectArray *)

__attribute__((unused)) static jboolean ComGoogleGsonJsonPrimitive_isPrimitiveOrStringWithId_(id target);

__attribute__((unused)) static jboolean ComGoogleGsonJsonPrimitive_isIntegralWithComGoogleGsonJsonPrimitive_(ComGoogleGsonJsonPrimitive *primitive);

J2OBJC_INITIALIZED_DEFN(ComGoogleGsonJsonPrimitive)

@implementation ComGoogleGsonJsonPrimitive

- (instancetype)initWithJavaLangBoolean:(JavaLangBoolean *)bool_ {
  ComGoogleGsonJsonPrimitive_initWithJavaLangBoolean_(self, bool_);
  return self;
}

- (instancetype)initWithNSNumber:(NSNumber *)number {
  ComGoogleGsonJsonPrimitive_initWithNSNumber_(self, number);
  return self;
}

- (instancetype)initWithNSString:(NSString *)string {
  ComGoogleGsonJsonPrimitive_initWithNSString_(self, string);
  return self;
}

- (instancetype)initWithJavaLangCharacter:(JavaLangCharacter *)c {
  ComGoogleGsonJsonPrimitive_initWithJavaLangCharacter_(self, c);
  return self;
}

- (instancetype)initWithId:(id)primitive {
  ComGoogleGsonJsonPrimitive_initWithId_(self, primitive);
  return self;
}

- (ComGoogleGsonJsonPrimitive *)deepCopy {
  return self;
}

- (void)setValueWithId:(id)primitive {
  if ([primitive isKindOfClass:[JavaLangCharacter class]]) {
    jchar c = [((JavaLangCharacter *) nil_chk(((JavaLangCharacter *) cast_chk(primitive, [JavaLangCharacter class])))) charValue];
    self->value_ = NSString_valueOfChar_(c);
  }
  else {
    ComGoogleGsonInternal$Gson$Preconditions_checkArgumentWithBoolean_([primitive isKindOfClass:[NSNumber class]] || ComGoogleGsonJsonPrimitive_isPrimitiveOrStringWithId_(primitive));
    self->value_ = primitive;
  }
}

- (jboolean)isBoolean {
  return [value_ isKindOfClass:[JavaLangBoolean class]];
}

- (JavaLangBoolean *)getAsBooleanWrapper {
  return (JavaLangBoolean *) cast_chk(value_, [JavaLangBoolean class]);
}

- (jboolean)getAsBoolean {
  if ([self isBoolean]) {
    return [((JavaLangBoolean *) nil_chk([self getAsBooleanWrapper])) booleanValue];
  }
  else {
    return JavaLangBoolean_parseBooleanWithNSString_([self getAsString]);
  }
}

- (jboolean)isNumber {
  return [value_ isKindOfClass:[NSNumber class]];
}

- (NSNumber *)getAsNumber {
  return [value_ isKindOfClass:[NSString class]] ? new_ComGoogleGsonInternalLazilyParsedNumber_initWithNSString_((NSString *) cast_chk(value_, [NSString class])) : (NSNumber *) cast_chk(value_, [NSNumber class]);
}

- (jboolean)isString {
  return [value_ isKindOfClass:[NSString class]];
}

- (NSString *)getAsString {
  if ([self isNumber]) {
    return [((NSNumber *) nil_chk([self getAsNumber])) description];
  }
  else if ([self isBoolean]) {
    return [((JavaLangBoolean *) nil_chk([self getAsBooleanWrapper])) description];
  }
  else {
    return (NSString *) cast_chk(value_, [NSString class]);
  }
}

- (jdouble)getAsDouble {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) doubleValue] : JavaLangDouble_parseDoubleWithNSString_([self getAsString]);
}

- (JavaMathBigDecimal *)getAsBigDecimal {
  return [value_ isKindOfClass:[JavaMathBigDecimal class]] ? (JavaMathBigDecimal *) cast_chk(value_, [JavaMathBigDecimal class]) : new_JavaMathBigDecimal_initWithNSString_([nil_chk(value_) description]);
}

- (JavaMathBigInteger *)getAsBigInteger {
  return [value_ isKindOfClass:[JavaMathBigInteger class]] ? (JavaMathBigInteger *) cast_chk(value_, [JavaMathBigInteger class]) : new_JavaMathBigInteger_initWithNSString_([nil_chk(value_) description]);
}

- (jfloat)getAsFloat {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) floatValue] : JavaLangFloat_parseFloatWithNSString_([self getAsString]);
}

- (jlong)getAsLong {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) longLongValue] : JavaLangLong_parseLongWithNSString_([self getAsString]);
}

- (jshort)getAsShort {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) shortValue] : JavaLangShort_parseShortWithNSString_([self getAsString]);
}

- (jint)getAsInt {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) intValue] : JavaLangInteger_parseIntWithNSString_([self getAsString]);
}

- (jbyte)getAsByte {
  return [self isNumber] ? [((NSNumber *) nil_chk([self getAsNumber])) charValue] : JavaLangByte_parseByteWithNSString_([self getAsString]);
}

- (jchar)getAsCharacter {
  return [((NSString *) nil_chk([self getAsString])) charAtWithInt:0];
}

+ (jboolean)isPrimitiveOrStringWithId:(id)target {
  return ComGoogleGsonJsonPrimitive_isPrimitiveOrStringWithId_(target);
}

- (NSUInteger)hash {
  if (value_ == nil) {
    return 31;
  }
  if (ComGoogleGsonJsonPrimitive_isIntegralWithComGoogleGsonJsonPrimitive_(self)) {
    jlong value = [((NSNumber *) nil_chk([self getAsNumber])) longLongValue];
    return (jint) (value ^ (JreURShift64(value, 32)));
  }
  if ([value_ isKindOfClass:[NSNumber class]]) {
    jlong value = JavaLangDouble_doubleToLongBitsWithDouble_([((NSNumber *) nil_chk([self getAsNumber])) doubleValue]);
    return (jint) (value ^ (JreURShift64(value, 32)));
  }
  return ((jint) [nil_chk(value_) hash]);
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) {
    return true;
  }
  if (obj == nil || [self getClass] != (id) [obj getClass]) {
    return false;
  }
  ComGoogleGsonJsonPrimitive *other = (ComGoogleGsonJsonPrimitive *) cast_chk(obj, [ComGoogleGsonJsonPrimitive class]);
  if (value_ == nil) {
    return ((ComGoogleGsonJsonPrimitive *) nil_chk(other))->value_ == nil;
  }
  if (ComGoogleGsonJsonPrimitive_isIntegralWithComGoogleGsonJsonPrimitive_(self) && ComGoogleGsonJsonPrimitive_isIntegralWithComGoogleGsonJsonPrimitive_(other)) {
    return [((NSNumber *) nil_chk([self getAsNumber])) longLongValue] == [((NSNumber *) nil_chk([((ComGoogleGsonJsonPrimitive *) nil_chk(other)) getAsNumber])) longLongValue];
  }
  if ([value_ isKindOfClass:[NSNumber class]] && [((ComGoogleGsonJsonPrimitive *) nil_chk(other))->value_ isKindOfClass:[NSNumber class]]) {
    jdouble a = [((NSNumber *) nil_chk([self getAsNumber])) doubleValue];
    jdouble b = [((NSNumber *) nil_chk([other getAsNumber])) doubleValue];
    return a == b || (JavaLangDouble_isNaNWithDouble_(a) && JavaLangDouble_isNaNWithDouble_(b));
  }
  return [nil_chk(value_) isEqual:((ComGoogleGsonJsonPrimitive *) nil_chk(other))->value_];
}

+ (jboolean)isIntegralWithComGoogleGsonJsonPrimitive:(ComGoogleGsonJsonPrimitive *)primitive {
  return ComGoogleGsonJsonPrimitive_isIntegralWithComGoogleGsonJsonPrimitive_(primitive);
}

+ (void)initialize {
  if (self == [ComGoogleGsonJsonPrimitive class]) {
    ComGoogleGsonJsonPrimitive_PRIMITIVE_TYPES = [IOSObjectArray newArrayWithObjects:(id[]){ [IOSClass intClass], [IOSClass longClass], [IOSClass shortClass], [IOSClass floatClass], [IOSClass doubleClass], [IOSClass byteClass], [IOSClass booleanClass], [IOSClass charClass], JavaLangInteger_class_(), JavaLangLong_class_(), JavaLangShort_class_(), JavaLangFloat_class_(), JavaLangDouble_class_(), JavaLangByte_class_(), JavaLangBoolean_class_(), JavaLangCharacter_class_() } count:16 type:IOSClass_class_()];
    J2OBJC_SET_INITIALIZED(ComGoogleGsonJsonPrimitive)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaLangBoolean:", "JsonPrimitive", NULL, 0x1, NULL, NULL },
    { "initWithNSNumber:", "JsonPrimitive", NULL, 0x1, NULL, NULL },
    { "initWithNSString:", "JsonPrimitive", NULL, 0x1, NULL, NULL },
    { "initWithJavaLangCharacter:", "JsonPrimitive", NULL, 0x1, NULL, NULL },
    { "initWithId:", "JsonPrimitive", NULL, 0x0, NULL, NULL },
    { "deepCopy", NULL, "Lcom.google.gson.JsonPrimitive;", 0x0, NULL, NULL },
    { "setValueWithId:", "setValue", "V", 0x0, NULL, NULL },
    { "isBoolean", NULL, "Z", 0x1, NULL, NULL },
    { "getAsBooleanWrapper", NULL, "Ljava.lang.Boolean;", 0x0, NULL, NULL },
    { "getAsBoolean", NULL, "Z", 0x1, NULL, NULL },
    { "isNumber", NULL, "Z", 0x1, NULL, NULL },
    { "getAsNumber", NULL, "Ljava.lang.Number;", 0x1, NULL, NULL },
    { "isString", NULL, "Z", 0x1, NULL, NULL },
    { "getAsString", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getAsDouble", NULL, "D", 0x1, NULL, NULL },
    { "getAsBigDecimal", NULL, "Ljava.math.BigDecimal;", 0x1, NULL, NULL },
    { "getAsBigInteger", NULL, "Ljava.math.BigInteger;", 0x1, NULL, NULL },
    { "getAsFloat", NULL, "F", 0x1, NULL, NULL },
    { "getAsLong", NULL, "J", 0x1, NULL, NULL },
    { "getAsShort", NULL, "S", 0x1, NULL, NULL },
    { "getAsInt", NULL, "I", 0x1, NULL, NULL },
    { "getAsByte", NULL, "B", 0x1, NULL, NULL },
    { "getAsCharacter", NULL, "C", 0x1, NULL, NULL },
    { "isPrimitiveOrStringWithId:", "isPrimitiveOrString", "Z", 0xa, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "isIntegralWithComGoogleGsonJsonPrimitive:", "isIntegral", "Z", 0xa, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "PRIMITIVE_TYPES", "PRIMITIVE_TYPES", 0x1a, "[Ljava.lang.Class;", &ComGoogleGsonJsonPrimitive_PRIMITIVE_TYPES, "[Ljava/lang/Class<*>;", .constantValue.asLong = 0 },
    { "value_", NULL, 0x2, "Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ComGoogleGsonJsonPrimitive = { 2, "JsonPrimitive", "com.google.gson", NULL, 0x11, 27, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonJsonPrimitive;
}

@end

void ComGoogleGsonJsonPrimitive_initWithJavaLangBoolean_(ComGoogleGsonJsonPrimitive *self, JavaLangBoolean *bool_) {
  ComGoogleGsonJsonElement_init(self);
  [self setValueWithId:bool_];
}

ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithJavaLangBoolean_(JavaLangBoolean *bool_) {
  ComGoogleGsonJsonPrimitive *self = [ComGoogleGsonJsonPrimitive alloc];
  ComGoogleGsonJsonPrimitive_initWithJavaLangBoolean_(self, bool_);
  return self;
}

ComGoogleGsonJsonPrimitive *create_ComGoogleGsonJsonPrimitive_initWithJavaLangBoolean_(JavaLangBoolean *bool_) {
  return new_ComGoogleGsonJsonPrimitive_initWithJavaLangBoolean_(bool_);
}

void ComGoogleGsonJsonPrimitive_initWithNSNumber_(ComGoogleGsonJsonPrimitive *self, NSNumber *number) {
  ComGoogleGsonJsonElement_init(self);
  [self setValueWithId:number];
}

ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithNSNumber_(NSNumber *number) {
  ComGoogleGsonJsonPrimitive *self = [ComGoogleGsonJsonPrimitive alloc];
  ComGoogleGsonJsonPrimitive_initWithNSNumber_(self, number);
  return self;
}

ComGoogleGsonJsonPrimitive *create_ComGoogleGsonJsonPrimitive_initWithNSNumber_(NSNumber *number) {
  return new_ComGoogleGsonJsonPrimitive_initWithNSNumber_(number);
}

void ComGoogleGsonJsonPrimitive_initWithNSString_(ComGoogleGsonJsonPrimitive *self, NSString *string) {
  ComGoogleGsonJsonElement_init(self);
  [self setValueWithId:string];
}

ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithNSString_(NSString *string) {
  ComGoogleGsonJsonPrimitive *self = [ComGoogleGsonJsonPrimitive alloc];
  ComGoogleGsonJsonPrimitive_initWithNSString_(self, string);
  return self;
}

ComGoogleGsonJsonPrimitive *create_ComGoogleGsonJsonPrimitive_initWithNSString_(NSString *string) {
  return new_ComGoogleGsonJsonPrimitive_initWithNSString_(string);
}

void ComGoogleGsonJsonPrimitive_initWithJavaLangCharacter_(ComGoogleGsonJsonPrimitive *self, JavaLangCharacter *c) {
  ComGoogleGsonJsonElement_init(self);
  [self setValueWithId:c];
}

ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithJavaLangCharacter_(JavaLangCharacter *c) {
  ComGoogleGsonJsonPrimitive *self = [ComGoogleGsonJsonPrimitive alloc];
  ComGoogleGsonJsonPrimitive_initWithJavaLangCharacter_(self, c);
  return self;
}

ComGoogleGsonJsonPrimitive *create_ComGoogleGsonJsonPrimitive_initWithJavaLangCharacter_(JavaLangCharacter *c) {
  return new_ComGoogleGsonJsonPrimitive_initWithJavaLangCharacter_(c);
}

void ComGoogleGsonJsonPrimitive_initWithId_(ComGoogleGsonJsonPrimitive *self, id primitive) {
  ComGoogleGsonJsonElement_init(self);
  [self setValueWithId:primitive];
}

ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithId_(id primitive) {
  ComGoogleGsonJsonPrimitive *self = [ComGoogleGsonJsonPrimitive alloc];
  ComGoogleGsonJsonPrimitive_initWithId_(self, primitive);
  return self;
}

ComGoogleGsonJsonPrimitive *create_ComGoogleGsonJsonPrimitive_initWithId_(id primitive) {
  return new_ComGoogleGsonJsonPrimitive_initWithId_(primitive);
}

jboolean ComGoogleGsonJsonPrimitive_isPrimitiveOrStringWithId_(id target) {
  ComGoogleGsonJsonPrimitive_initialize();
  if ([target isKindOfClass:[NSString class]]) {
    return true;
  }
  IOSClass *classOfPrimitive = [nil_chk(target) getClass];
  {
    IOSObjectArray *a__ = ComGoogleGsonJsonPrimitive_PRIMITIVE_TYPES;
    IOSClass * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    IOSClass * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      IOSClass *standardPrimitive = *b__++;
      if ([((IOSClass *) nil_chk(standardPrimitive)) isAssignableFrom:classOfPrimitive]) {
        return true;
      }
    }
  }
  return false;
}

jboolean ComGoogleGsonJsonPrimitive_isIntegralWithComGoogleGsonJsonPrimitive_(ComGoogleGsonJsonPrimitive *primitive) {
  ComGoogleGsonJsonPrimitive_initialize();
  if ([((ComGoogleGsonJsonPrimitive *) nil_chk(primitive))->value_ isKindOfClass:[NSNumber class]]) {
    NSNumber *number = (NSNumber *) cast_chk(primitive->value_, [NSNumber class]);
    return [number isKindOfClass:[JavaMathBigInteger class]] || [number isKindOfClass:[JavaLangLong class]] || [number isKindOfClass:[JavaLangInteger class]] || [number isKindOfClass:[JavaLangShort class]] || [number isKindOfClass:[JavaLangByte class]];
  }
  return false;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonJsonPrimitive)
