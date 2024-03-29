//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/gson/gson/src/main/java/com/google/gson/Gson.java
//

#include "J2ObjC_header.h"

#pragma push_macro("ComGoogleGsonGson_INCLUDE_ALL")
#ifdef ComGoogleGsonGson_RESTRICT
#define ComGoogleGsonGson_INCLUDE_ALL 0
#else
#define ComGoogleGsonGson_INCLUDE_ALL 1
#endif
#undef ComGoogleGsonGson_RESTRICT

#if !defined (ComGoogleGsonGson_) && (ComGoogleGsonGson_INCLUDE_ALL || defined(ComGoogleGsonGson_INCLUDE))
#define ComGoogleGsonGson_

@class ComGoogleGsonInternalExcluder;
@class ComGoogleGsonJsonElement;
@class ComGoogleGsonLongSerializationPolicy;
@class ComGoogleGsonReflectTypeToken;
@class ComGoogleGsonStreamJsonReader;
@class ComGoogleGsonStreamJsonWriter;
@class ComGoogleGsonTypeAdapter;
@class IOSClass;
@class JavaIoReader;
@class JavaIoWriter;
@protocol ComGoogleGsonFieldNamingStrategy;
@protocol ComGoogleGsonJsonDeserializationContext;
@protocol ComGoogleGsonJsonSerializationContext;
@protocol ComGoogleGsonTypeAdapterFactory;
@protocol JavaLangAppendable;
@protocol JavaLangReflectType;
@protocol JavaUtilList;
@protocol JavaUtilMap;

@interface ComGoogleGsonGson : NSObject {
 @public
  id<ComGoogleGsonJsonDeserializationContext> deserializationContext_;
  id<ComGoogleGsonJsonSerializationContext> serializationContext_;
}

#pragma mark Public

- (instancetype)init;

- (id)fromJsonWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)json
                              withIOSClass:(IOSClass *)classOfT;

- (id)fromJsonWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)json
                   withJavaLangReflectType:(id<JavaLangReflectType>)typeOfT;

- (id)fromJsonWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)reader
                        withJavaLangReflectType:(id<JavaLangReflectType>)typeOfT;

- (id)fromJsonWithJavaIoReader:(JavaIoReader *)json
                  withIOSClass:(IOSClass *)classOfT;

- (id)fromJsonWithJavaIoReader:(JavaIoReader *)json
       withJavaLangReflectType:(id<JavaLangReflectType>)typeOfT;

- (id)fromJsonWithNSString:(NSString *)json
              withIOSClass:(IOSClass *)classOfT;

- (id)fromJsonWithNSString:(NSString *)json
   withJavaLangReflectType:(id<JavaLangReflectType>)typeOfT;

- (ComGoogleGsonTypeAdapter *)getAdapterWithIOSClass:(IOSClass *)type;

- (ComGoogleGsonTypeAdapter *)getAdapterWithComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)type;

- (ComGoogleGsonTypeAdapter *)getDelegateAdapterWithComGoogleGsonTypeAdapterFactory:(id<ComGoogleGsonTypeAdapterFactory>)skipPast
                                                  withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)type;

- (ComGoogleGsonStreamJsonReader *)newJsonReaderWithJavaIoReader:(JavaIoReader *)reader OBJC_METHOD_FAMILY_NONE;

- (ComGoogleGsonStreamJsonWriter *)newJsonWriterWithJavaIoWriter:(JavaIoWriter *)writer OBJC_METHOD_FAMILY_NONE;

- (NSString *)toJsonWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)jsonElement;

- (void)toJsonWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)jsonElement
                    withJavaLangAppendable:(id<JavaLangAppendable>)writer;

- (void)toJsonWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)jsonElement
         withComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)writer;

- (NSString *)toJsonWithId:(id)src;

- (void)toJsonWithId:(id)src
withJavaLangAppendable:(id<JavaLangAppendable>)writer;

- (NSString *)toJsonWithId:(id)src
   withJavaLangReflectType:(id<JavaLangReflectType>)typeOfSrc;

- (void)toJsonWithId:(id)src
withJavaLangReflectType:(id<JavaLangReflectType>)typeOfSrc
withJavaLangAppendable:(id<JavaLangAppendable>)writer;

- (void)toJsonWithId:(id)src
withJavaLangReflectType:(id<JavaLangReflectType>)typeOfSrc
withComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)writer;

- (ComGoogleGsonJsonElement *)toJsonTreeWithId:(id)src;

- (ComGoogleGsonJsonElement *)toJsonTreeWithId:(id)src
                       withJavaLangReflectType:(id<JavaLangReflectType>)typeOfSrc;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithComGoogleGsonInternalExcluder:(ComGoogleGsonInternalExcluder *)excluder
                 withComGoogleGsonFieldNamingStrategy:(id<ComGoogleGsonFieldNamingStrategy>)fieldNamingPolicy
                                      withJavaUtilMap:(id<JavaUtilMap>)instanceCreators
                                          withBoolean:(jboolean)serializeNulls
                                          withBoolean:(jboolean)complexMapKeySerialization
                                          withBoolean:(jboolean)generateNonExecutableGson
                                          withBoolean:(jboolean)htmlSafe
                                          withBoolean:(jboolean)prettyPrinting
                                          withBoolean:(jboolean)lenient
                                          withBoolean:(jboolean)serializeSpecialFloatingPointValues
             withComGoogleGsonLongSerializationPolicy:(ComGoogleGsonLongSerializationPolicy *)longSerializationPolicy
                                     withJavaUtilList:(id<JavaUtilList>)typeAdapterFactories;

+ (void)checkValidFloatingPointWithDouble:(jdouble)value;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonGson)

J2OBJC_FIELD_SETTER(ComGoogleGsonGson, deserializationContext_, id<ComGoogleGsonJsonDeserializationContext>)
J2OBJC_FIELD_SETTER(ComGoogleGsonGson, serializationContext_, id<ComGoogleGsonJsonSerializationContext>)

inline jboolean ComGoogleGsonGson_get_DEFAULT_JSON_NON_EXECUTABLE();
#define ComGoogleGsonGson_DEFAULT_JSON_NON_EXECUTABLE false
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleGsonGson, DEFAULT_JSON_NON_EXECUTABLE, jboolean)

inline jboolean ComGoogleGsonGson_get_DEFAULT_LENIENT();
#define ComGoogleGsonGson_DEFAULT_LENIENT false
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleGsonGson, DEFAULT_LENIENT, jboolean)

inline jboolean ComGoogleGsonGson_get_DEFAULT_PRETTY_PRINT();
#define ComGoogleGsonGson_DEFAULT_PRETTY_PRINT false
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleGsonGson, DEFAULT_PRETTY_PRINT, jboolean)

inline jboolean ComGoogleGsonGson_get_DEFAULT_ESCAPE_HTML();
#define ComGoogleGsonGson_DEFAULT_ESCAPE_HTML true
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleGsonGson, DEFAULT_ESCAPE_HTML, jboolean)

inline jboolean ComGoogleGsonGson_get_DEFAULT_SERIALIZE_NULLS();
#define ComGoogleGsonGson_DEFAULT_SERIALIZE_NULLS false
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleGsonGson, DEFAULT_SERIALIZE_NULLS, jboolean)

inline jboolean ComGoogleGsonGson_get_DEFAULT_COMPLEX_MAP_KEYS();
#define ComGoogleGsonGson_DEFAULT_COMPLEX_MAP_KEYS false
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleGsonGson, DEFAULT_COMPLEX_MAP_KEYS, jboolean)

inline jboolean ComGoogleGsonGson_get_DEFAULT_SPECIALIZE_FLOAT_VALUES();
#define ComGoogleGsonGson_DEFAULT_SPECIALIZE_FLOAT_VALUES false
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleGsonGson, DEFAULT_SPECIALIZE_FLOAT_VALUES, jboolean)

FOUNDATION_EXPORT void ComGoogleGsonGson_init(ComGoogleGsonGson *self);

FOUNDATION_EXPORT ComGoogleGsonGson *new_ComGoogleGsonGson_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonGson *create_ComGoogleGsonGson_init();

FOUNDATION_EXPORT void ComGoogleGsonGson_initWithComGoogleGsonInternalExcluder_withComGoogleGsonFieldNamingStrategy_withJavaUtilMap_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withComGoogleGsonLongSerializationPolicy_withJavaUtilList_(ComGoogleGsonGson *self, ComGoogleGsonInternalExcluder *excluder, id<ComGoogleGsonFieldNamingStrategy> fieldNamingPolicy, id<JavaUtilMap> instanceCreators, jboolean serializeNulls, jboolean complexMapKeySerialization, jboolean generateNonExecutableGson, jboolean htmlSafe, jboolean prettyPrinting, jboolean lenient, jboolean serializeSpecialFloatingPointValues, ComGoogleGsonLongSerializationPolicy *longSerializationPolicy, id<JavaUtilList> typeAdapterFactories);

FOUNDATION_EXPORT ComGoogleGsonGson *new_ComGoogleGsonGson_initWithComGoogleGsonInternalExcluder_withComGoogleGsonFieldNamingStrategy_withJavaUtilMap_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withComGoogleGsonLongSerializationPolicy_withJavaUtilList_(ComGoogleGsonInternalExcluder *excluder, id<ComGoogleGsonFieldNamingStrategy> fieldNamingPolicy, id<JavaUtilMap> instanceCreators, jboolean serializeNulls, jboolean complexMapKeySerialization, jboolean generateNonExecutableGson, jboolean htmlSafe, jboolean prettyPrinting, jboolean lenient, jboolean serializeSpecialFloatingPointValues, ComGoogleGsonLongSerializationPolicy *longSerializationPolicy, id<JavaUtilList> typeAdapterFactories) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonGson *create_ComGoogleGsonGson_initWithComGoogleGsonInternalExcluder_withComGoogleGsonFieldNamingStrategy_withJavaUtilMap_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withBoolean_withComGoogleGsonLongSerializationPolicy_withJavaUtilList_(ComGoogleGsonInternalExcluder *excluder, id<ComGoogleGsonFieldNamingStrategy> fieldNamingPolicy, id<JavaUtilMap> instanceCreators, jboolean serializeNulls, jboolean complexMapKeySerialization, jboolean generateNonExecutableGson, jboolean htmlSafe, jboolean prettyPrinting, jboolean lenient, jboolean serializeSpecialFloatingPointValues, ComGoogleGsonLongSerializationPolicy *longSerializationPolicy, id<JavaUtilList> typeAdapterFactories);

FOUNDATION_EXPORT void ComGoogleGsonGson_checkValidFloatingPointWithDouble_(jdouble value);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonGson)

#endif

#if !defined (ComGoogleGsonGson_FutureTypeAdapter_) && (ComGoogleGsonGson_INCLUDE_ALL || defined(ComGoogleGsonGson_FutureTypeAdapter_INCLUDE))
#define ComGoogleGsonGson_FutureTypeAdapter_

#define ComGoogleGsonTypeAdapter_RESTRICT 1
#define ComGoogleGsonTypeAdapter_INCLUDE 1
#include "com/google/gson/TypeAdapter.h"

@class ComGoogleGsonStreamJsonReader;
@class ComGoogleGsonStreamJsonWriter;

@interface ComGoogleGsonGson_FutureTypeAdapter : ComGoogleGsonTypeAdapter

#pragma mark Public

- (id)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)inArg;

- (void)setDelegateWithComGoogleGsonTypeAdapter:(ComGoogleGsonTypeAdapter *)typeAdapter;

- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(id)value;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonGson_FutureTypeAdapter)

FOUNDATION_EXPORT void ComGoogleGsonGson_FutureTypeAdapter_init(ComGoogleGsonGson_FutureTypeAdapter *self);

FOUNDATION_EXPORT ComGoogleGsonGson_FutureTypeAdapter *new_ComGoogleGsonGson_FutureTypeAdapter_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonGson_FutureTypeAdapter *create_ComGoogleGsonGson_FutureTypeAdapter_init();

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonGson_FutureTypeAdapter)

#endif

#pragma pop_macro("ComGoogleGsonGson_INCLUDE_ALL")
