//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/gson/gson/src/main/java/com/google/gson/internal/bind/CollectionTypeAdapterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("ComGoogleGsonInternalBindCollectionTypeAdapterFactory_INCLUDE_ALL")
#ifdef ComGoogleGsonInternalBindCollectionTypeAdapterFactory_RESTRICT
#define ComGoogleGsonInternalBindCollectionTypeAdapterFactory_INCLUDE_ALL 0
#else
#define ComGoogleGsonInternalBindCollectionTypeAdapterFactory_INCLUDE_ALL 1
#endif
#undef ComGoogleGsonInternalBindCollectionTypeAdapterFactory_RESTRICT

#if !defined (ComGoogleGsonInternalBindCollectionTypeAdapterFactory_) && (ComGoogleGsonInternalBindCollectionTypeAdapterFactory_INCLUDE_ALL || defined(ComGoogleGsonInternalBindCollectionTypeAdapterFactory_INCLUDE))
#define ComGoogleGsonInternalBindCollectionTypeAdapterFactory_

#define ComGoogleGsonTypeAdapterFactory_RESTRICT 1
#define ComGoogleGsonTypeAdapterFactory_INCLUDE 1
#include "com/google/gson/TypeAdapterFactory.h"

@class ComGoogleGsonGson;
@class ComGoogleGsonInternalConstructorConstructor;
@class ComGoogleGsonReflectTypeToken;
@class ComGoogleGsonTypeAdapter;

@interface ComGoogleGsonInternalBindCollectionTypeAdapterFactory : NSObject < ComGoogleGsonTypeAdapterFactory >

#pragma mark Public

- (instancetype)initWithComGoogleGsonInternalConstructorConstructor:(ComGoogleGsonInternalConstructorConstructor *)constructorConstructor;

- (ComGoogleGsonTypeAdapter *)createWithComGoogleGsonGson:(ComGoogleGsonGson *)gson
                        withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)typeToken;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternalBindCollectionTypeAdapterFactory)

FOUNDATION_EXPORT void ComGoogleGsonInternalBindCollectionTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_(ComGoogleGsonInternalBindCollectionTypeAdapterFactory *self, ComGoogleGsonInternalConstructorConstructor *constructorConstructor);

FOUNDATION_EXPORT ComGoogleGsonInternalBindCollectionTypeAdapterFactory *new_ComGoogleGsonInternalBindCollectionTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_(ComGoogleGsonInternalConstructorConstructor *constructorConstructor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleGsonInternalBindCollectionTypeAdapterFactory *create_ComGoogleGsonInternalBindCollectionTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_(ComGoogleGsonInternalConstructorConstructor *constructorConstructor);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalBindCollectionTypeAdapterFactory)

#endif

#pragma pop_macro("ComGoogleGsonInternalBindCollectionTypeAdapterFactory_INCLUDE_ALL")
