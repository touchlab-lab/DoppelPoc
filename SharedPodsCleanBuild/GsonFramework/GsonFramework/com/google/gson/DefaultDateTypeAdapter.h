//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/gson/gson/src/main/java/com/google/gson/DefaultDateTypeAdapter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("ComGoogleGsonDefaultDateTypeAdapter_INCLUDE_ALL")
#ifdef ComGoogleGsonDefaultDateTypeAdapter_RESTRICT
#define ComGoogleGsonDefaultDateTypeAdapter_INCLUDE_ALL 0
#else
#define ComGoogleGsonDefaultDateTypeAdapter_INCLUDE_ALL 1
#endif
#undef ComGoogleGsonDefaultDateTypeAdapter_RESTRICT

#if !defined (ComGoogleGsonDefaultDateTypeAdapter_) && (ComGoogleGsonDefaultDateTypeAdapter_INCLUDE_ALL || defined(ComGoogleGsonDefaultDateTypeAdapter_INCLUDE))
#define ComGoogleGsonDefaultDateTypeAdapter_

#define ComGoogleGsonJsonSerializer_RESTRICT 1
#define ComGoogleGsonJsonSerializer_INCLUDE 1
#include "com/google/gson/JsonSerializer.h"

#define ComGoogleGsonJsonDeserializer_RESTRICT 1
#define ComGoogleGsonJsonDeserializer_INCLUDE 1
#include "com/google/gson/JsonDeserializer.h"

@class ComGoogleGsonJsonElement;
@class JavaTextDateFormat;
@class JavaUtilDate;
@protocol ComGoogleGsonJsonDeserializationContext;
@protocol ComGoogleGsonJsonSerializationContext;
@protocol JavaLangReflectType;

@interface ComGoogleGsonDefaultDateTypeAdapter : NSObject < ComGoogleGsonJsonSerializer, ComGoogleGsonJsonDeserializer >

#pragma mark Public

- (instancetype)initWithInt:(jint)dateStyle
                    withInt:(jint)timeStyle;

- (JavaUtilDate *)deserializeWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)json
                                  withJavaLangReflectType:(id<JavaLangReflectType>)typeOfT
              withComGoogleGsonJsonDeserializationContext:(id<ComGoogleGsonJsonDeserializationContext>)context;

- (ComGoogleGsonJsonElement *)serializeWithId:(JavaUtilDate *)src
                      withJavaLangReflectType:(id<JavaLangReflectType>)typeOfSrc
    withComGoogleGsonJsonSerializationContext:(id<ComGoogleGsonJsonSerializationContext>)context;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)init;

- (instancetype)initWithJavaTextDateFormat:(JavaTextDateFormat *)enUsFormat
                    withJavaTextDateFormat:(JavaTextDateFormat *)localFormat;

- (instancetype)initWithInt:(jint)style;

- (instancetype)initWithNSString:(NSString *)datePattern;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonDefaultDateTypeAdapter)

FOUNDATION_EXPORT void ComGoogleGsonDefaultDateTypeAdapter_init(ComGoogleGsonDefaultDateTypeAdapter *self);

FOUNDATION_EXPORT ComGoogleGsonDefaultDateTypeAdapter *new_ComGoogleGsonDefaultDateTypeAdapter_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonDefaultDateTypeAdapter *create_ComGoogleGsonDefaultDateTypeAdapter_init();

FOUNDATION_EXPORT void ComGoogleGsonDefaultDateTypeAdapter_initWithNSString_(ComGoogleGsonDefaultDateTypeAdapter *self, NSString *datePattern);

FOUNDATION_EXPORT ComGoogleGsonDefaultDateTypeAdapter *new_ComGoogleGsonDefaultDateTypeAdapter_initWithNSString_(NSString *datePattern) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonDefaultDateTypeAdapter *create_ComGoogleGsonDefaultDateTypeAdapter_initWithNSString_(NSString *datePattern);

FOUNDATION_EXPORT void ComGoogleGsonDefaultDateTypeAdapter_initWithInt_(ComGoogleGsonDefaultDateTypeAdapter *self, jint style);

FOUNDATION_EXPORT ComGoogleGsonDefaultDateTypeAdapter *new_ComGoogleGsonDefaultDateTypeAdapter_initWithInt_(jint style) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonDefaultDateTypeAdapter *create_ComGoogleGsonDefaultDateTypeAdapter_initWithInt_(jint style);

FOUNDATION_EXPORT void ComGoogleGsonDefaultDateTypeAdapter_initWithInt_withInt_(ComGoogleGsonDefaultDateTypeAdapter *self, jint dateStyle, jint timeStyle);

FOUNDATION_EXPORT ComGoogleGsonDefaultDateTypeAdapter *new_ComGoogleGsonDefaultDateTypeAdapter_initWithInt_withInt_(jint dateStyle, jint timeStyle) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonDefaultDateTypeAdapter *create_ComGoogleGsonDefaultDateTypeAdapter_initWithInt_withInt_(jint dateStyle, jint timeStyle);

FOUNDATION_EXPORT void ComGoogleGsonDefaultDateTypeAdapter_initWithJavaTextDateFormat_withJavaTextDateFormat_(ComGoogleGsonDefaultDateTypeAdapter *self, JavaTextDateFormat *enUsFormat, JavaTextDateFormat *localFormat);

FOUNDATION_EXPORT ComGoogleGsonDefaultDateTypeAdapter *new_ComGoogleGsonDefaultDateTypeAdapter_initWithJavaTextDateFormat_withJavaTextDateFormat_(JavaTextDateFormat *enUsFormat, JavaTextDateFormat *localFormat) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonDefaultDateTypeAdapter *create_ComGoogleGsonDefaultDateTypeAdapter_initWithJavaTextDateFormat_withJavaTextDateFormat_(JavaTextDateFormat *enUsFormat, JavaTextDateFormat *localFormat);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonDefaultDateTypeAdapter)

#endif

#pragma pop_macro("ComGoogleGsonDefaultDateTypeAdapter_INCLUDE_ALL")
