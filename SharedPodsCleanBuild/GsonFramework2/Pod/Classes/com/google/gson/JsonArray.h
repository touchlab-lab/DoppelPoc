//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/gson/gson/src/main/java/com/google/gson/JsonArray.java
//

#include "J2ObjC_header.h"

#pragma push_macro("ComGoogleGsonJsonArray_INCLUDE_ALL")
#ifdef ComGoogleGsonJsonArray_RESTRICT
#define ComGoogleGsonJsonArray_INCLUDE_ALL 0
#else
#define ComGoogleGsonJsonArray_INCLUDE_ALL 1
#endif
#undef ComGoogleGsonJsonArray_RESTRICT

#if !defined (ComGoogleGsonJsonArray_) && (ComGoogleGsonJsonArray_INCLUDE_ALL || defined(ComGoogleGsonJsonArray_INCLUDE))
#define ComGoogleGsonJsonArray_

#define ComGoogleGsonJsonElement_RESTRICT 1
#define ComGoogleGsonJsonElement_INCLUDE 1
#include "com/google/gson/JsonElement.h"

#define JavaLangIterable_RESTRICT 1
#define JavaLangIterable_INCLUDE 1
#include "java/lang/Iterable.h"

@class JavaLangBoolean;
@class JavaLangCharacter;
@class JavaMathBigDecimal;
@class JavaMathBigInteger;
@protocol JavaUtilIterator;

@interface ComGoogleGsonJsonArray : ComGoogleGsonJsonElement < JavaLangIterable >

#pragma mark Public

- (instancetype)init;

- (void)addWithJavaLangBoolean:(JavaLangBoolean *)bool_;

- (void)addWithJavaLangCharacter:(JavaLangCharacter *)character;

- (void)addWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)element;

- (void)addWithNSNumber:(NSNumber *)number;

- (void)addWithNSString:(NSString *)string;

- (void)addAllWithComGoogleGsonJsonArray:(ComGoogleGsonJsonArray *)array;

- (jboolean)containsWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)element;

- (jboolean)isEqual:(id)o;

- (ComGoogleGsonJsonElement *)getWithInt:(jint)i;

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

- (id<JavaUtilIterator>)iterator;

- (ComGoogleGsonJsonElement *)removeWithInt:(jint)index;

- (jboolean)removeWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)element;

- (ComGoogleGsonJsonElement *)setWithInt:(jint)index
            withComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)element;

- (jint)size;

#pragma mark Package-Private

- (ComGoogleGsonJsonArray *)deepCopy;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonJsonArray)

FOUNDATION_EXPORT void ComGoogleGsonJsonArray_init(ComGoogleGsonJsonArray *self);

FOUNDATION_EXPORT ComGoogleGsonJsonArray *new_ComGoogleGsonJsonArray_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonJsonArray *create_ComGoogleGsonJsonArray_init();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonJsonArray)

#endif

#pragma pop_macro("ComGoogleGsonJsonArray_INCLUDE_ALL")
