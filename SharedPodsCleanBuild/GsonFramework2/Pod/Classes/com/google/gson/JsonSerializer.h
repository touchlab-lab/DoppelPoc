//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/gson/gson/src/main/java/com/google/gson/JsonSerializer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("ComGoogleGsonJsonSerializer_INCLUDE_ALL")
#ifdef ComGoogleGsonJsonSerializer_RESTRICT
#define ComGoogleGsonJsonSerializer_INCLUDE_ALL 0
#else
#define ComGoogleGsonJsonSerializer_INCLUDE_ALL 1
#endif
#undef ComGoogleGsonJsonSerializer_RESTRICT

#if !defined (ComGoogleGsonJsonSerializer_) && (ComGoogleGsonJsonSerializer_INCLUDE_ALL || defined(ComGoogleGsonJsonSerializer_INCLUDE))
#define ComGoogleGsonJsonSerializer_

@class ComGoogleGsonJsonElement;
@protocol ComGoogleGsonJsonSerializationContext;
@protocol JavaLangReflectType;

@protocol ComGoogleGsonJsonSerializer < NSObject, JavaObject >

- (ComGoogleGsonJsonElement *)serializeWithId:(id)src
                      withJavaLangReflectType:(id<JavaLangReflectType>)typeOfSrc
    withComGoogleGsonJsonSerializationContext:(id<ComGoogleGsonJsonSerializationContext>)context;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonJsonSerializer)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonJsonSerializer)

#endif

#pragma pop_macro("ComGoogleGsonJsonSerializer_INCLUDE_ALL")
