//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/gson/gson/src/main/java/com/google/gson/JsonPrimitive.java
//

#include "J2ObjC_header.h"

#pragma push_macro("ComGoogleGsonJsonPrimitive_INCLUDE_ALL")
#ifdef ComGoogleGsonJsonPrimitive_RESTRICT
#define ComGoogleGsonJsonPrimitive_INCLUDE_ALL 0
#else
#define ComGoogleGsonJsonPrimitive_INCLUDE_ALL 1
#endif
#undef ComGoogleGsonJsonPrimitive_RESTRICT

#if !defined (ComGoogleGsonJsonPrimitive_) && (ComGoogleGsonJsonPrimitive_INCLUDE_ALL || defined(ComGoogleGsonJsonPrimitive_INCLUDE))
#define ComGoogleGsonJsonPrimitive_

#define ComGoogleGsonJsonElement_RESTRICT 1
#define ComGoogleGsonJsonElement_INCLUDE 1
#include "com/google/gson/JsonElement.h"

@class JavaLangBoolean;
@class JavaLangCharacter;
@class JavaMathBigDecimal;
@class JavaMathBigInteger;

@interface ComGoogleGsonJsonPrimitive : ComGoogleGsonJsonElement

#pragma mark Public

- (instancetype)initWithJavaLangBoolean:(JavaLangBoolean *)bool_;

- (instancetype)initWithJavaLangCharacter:(JavaLangCharacter *)c;

- (instancetype)initWithNSNumber:(NSNumber *)number;

- (instancetype)initWithNSString:(NSString *)string;

- (jboolean)isEqual:(id)obj;

- (JavaMathBigDecimal *)getAsBigDecimal;

- (JavaMathBigInteger *)getAsBigInteger;

- (jboolean)getAsBoolean;

- (jbyte)getAsByte;

- (jchar)getAsCharacter;

- (jdouble)getAsDouble;

- (jfloat)getAsFloat;

- (jint)getAsInt;

- (jlong)getAsLong;

- (NSNumber *)getAsNumber;

- (jshort)getAsShort;

- (NSString *)getAsString;

- (NSUInteger)hash;

- (jboolean)isBoolean;

- (jboolean)isNumber;

- (jboolean)isString;

#pragma mark Package-Private

- (instancetype)initWithId:(id)primitive;

- (ComGoogleGsonJsonPrimitive *)deepCopy;

- (JavaLangBoolean *)getAsBooleanWrapper;

- (void)setValueWithId:(id)primitive;

@end

J2OBJC_STATIC_INIT(ComGoogleGsonJsonPrimitive)

FOUNDATION_EXPORT void ComGoogleGsonJsonPrimitive_initWithJavaLangBoolean_(ComGoogleGsonJsonPrimitive *self, JavaLangBoolean *bool_);

FOUNDATION_EXPORT ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithJavaLangBoolean_(JavaLangBoolean *bool_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonJsonPrimitive *create_ComGoogleGsonJsonPrimitive_initWithJavaLangBoolean_(JavaLangBoolean *bool_);

FOUNDATION_EXPORT void ComGoogleGsonJsonPrimitive_initWithNSNumber_(ComGoogleGsonJsonPrimitive *self, NSNumber *number);

FOUNDATION_EXPORT ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithNSNumber_(NSNumber *number) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonJsonPrimitive *create_ComGoogleGsonJsonPrimitive_initWithNSNumber_(NSNumber *number);

FOUNDATION_EXPORT void ComGoogleGsonJsonPrimitive_initWithNSString_(ComGoogleGsonJsonPrimitive *self, NSString *string);

FOUNDATION_EXPORT ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithNSString_(NSString *string) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonJsonPrimitive *create_ComGoogleGsonJsonPrimitive_initWithNSString_(NSString *string);

FOUNDATION_EXPORT void ComGoogleGsonJsonPrimitive_initWithJavaLangCharacter_(ComGoogleGsonJsonPrimitive *self, JavaLangCharacter *c);

FOUNDATION_EXPORT ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithJavaLangCharacter_(JavaLangCharacter *c) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonJsonPrimitive *create_ComGoogleGsonJsonPrimitive_initWithJavaLangCharacter_(JavaLangCharacter *c);

FOUNDATION_EXPORT void ComGoogleGsonJsonPrimitive_initWithId_(ComGoogleGsonJsonPrimitive *self, id primitive);

FOUNDATION_EXPORT ComGoogleGsonJsonPrimitive *new_ComGoogleGsonJsonPrimitive_initWithId_(id primitive) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonJsonPrimitive *create_ComGoogleGsonJsonPrimitive_initWithId_(id primitive);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonJsonPrimitive)

#endif

#pragma pop_macro("ComGoogleGsonJsonPrimitive_INCLUDE_ALL")
