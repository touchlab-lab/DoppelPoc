//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/gson/gson/src/main/java/com/google/gson/GsonBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("ComGoogleGsonGsonBuilder_INCLUDE_ALL")
#ifdef ComGoogleGsonGsonBuilder_RESTRICT
#define ComGoogleGsonGsonBuilder_INCLUDE_ALL 0
#else
#define ComGoogleGsonGsonBuilder_INCLUDE_ALL 1
#endif
#undef ComGoogleGsonGsonBuilder_RESTRICT

#if !defined (ComGoogleGsonGsonBuilder_) && (ComGoogleGsonGsonBuilder_INCLUDE_ALL || defined(ComGoogleGsonGsonBuilder_INCLUDE))
#define ComGoogleGsonGsonBuilder_

@class ComGoogleGsonFieldNamingPolicy;
@class ComGoogleGsonGson;
@class ComGoogleGsonLongSerializationPolicy;
@class IOSClass;
@class IOSIntArray;
@class IOSObjectArray;
@protocol ComGoogleGsonExclusionStrategy;
@protocol ComGoogleGsonFieldNamingStrategy;
@protocol ComGoogleGsonTypeAdapterFactory;
@protocol JavaLangReflectType;

@interface ComGoogleGsonGsonBuilder : NSObject

#pragma mark Public

- (instancetype)init;

- (ComGoogleGsonGsonBuilder *)addDeserializationExclusionStrategyWithComGoogleGsonExclusionStrategy:(id<ComGoogleGsonExclusionStrategy>)strategy;

- (ComGoogleGsonGsonBuilder *)addSerializationExclusionStrategyWithComGoogleGsonExclusionStrategy:(id<ComGoogleGsonExclusionStrategy>)strategy;

- (ComGoogleGsonGson *)create;

- (ComGoogleGsonGsonBuilder *)disableHtmlEscaping;

- (ComGoogleGsonGsonBuilder *)disableInnerClassSerialization;

- (ComGoogleGsonGsonBuilder *)enableComplexMapKeySerialization;

- (ComGoogleGsonGsonBuilder *)excludeFieldsWithModifiersWithIntArray:(IOSIntArray *)modifiers;

- (ComGoogleGsonGsonBuilder *)excludeFieldsWithoutExposeAnnotation;

- (ComGoogleGsonGsonBuilder *)generateNonExecutableJson;

- (ComGoogleGsonGsonBuilder *)registerTypeAdapterWithJavaLangReflectType:(id<JavaLangReflectType>)type
                                                                  withId:(id)typeAdapter;

- (ComGoogleGsonGsonBuilder *)registerTypeAdapterFactoryWithComGoogleGsonTypeAdapterFactory:(id<ComGoogleGsonTypeAdapterFactory>)factory;

- (ComGoogleGsonGsonBuilder *)registerTypeHierarchyAdapterWithIOSClass:(IOSClass *)baseType
                                                                withId:(id)typeAdapter;

- (ComGoogleGsonGsonBuilder *)serializeNulls;

- (ComGoogleGsonGsonBuilder *)serializeSpecialFloatingPointValues;

- (ComGoogleGsonGsonBuilder *)setDateFormatWithInt:(jint)style;

- (ComGoogleGsonGsonBuilder *)setDateFormatWithInt:(jint)dateStyle
                                           withInt:(jint)timeStyle;

- (ComGoogleGsonGsonBuilder *)setDateFormatWithNSString:(NSString *)pattern;

- (ComGoogleGsonGsonBuilder *)setExclusionStrategiesWithComGoogleGsonExclusionStrategyArray:(IOSObjectArray *)strategies;

- (ComGoogleGsonGsonBuilder *)setFieldNamingPolicyWithComGoogleGsonFieldNamingPolicy:(ComGoogleGsonFieldNamingPolicy *)namingConvention;

- (ComGoogleGsonGsonBuilder *)setFieldNamingStrategyWithComGoogleGsonFieldNamingStrategy:(id<ComGoogleGsonFieldNamingStrategy>)fieldNamingStrategy;

- (ComGoogleGsonGsonBuilder *)setLenient;

- (ComGoogleGsonGsonBuilder *)setLongSerializationPolicyWithComGoogleGsonLongSerializationPolicy:(ComGoogleGsonLongSerializationPolicy *)serializationPolicy;

- (ComGoogleGsonGsonBuilder *)setPrettyPrinting;

- (ComGoogleGsonGsonBuilder *)setVersionWithDouble:(jdouble)ignoreVersionsAfter;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonGsonBuilder)

FOUNDATION_EXPORT void ComGoogleGsonGsonBuilder_init(ComGoogleGsonGsonBuilder *self);

FOUNDATION_EXPORT ComGoogleGsonGsonBuilder *new_ComGoogleGsonGsonBuilder_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonGsonBuilder *create_ComGoogleGsonGsonBuilder_init();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonGsonBuilder)

#endif

#pragma pop_macro("ComGoogleGsonGsonBuilder_INCLUDE_ALL")
