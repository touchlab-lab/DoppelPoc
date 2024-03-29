//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/okhttp/okhttp/src/main/java/com/squareup/okhttp/internal/http/CacheStrategy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("ComSquareupOkhttpInternalHttpCacheStrategy_INCLUDE_ALL")
#ifdef ComSquareupOkhttpInternalHttpCacheStrategy_RESTRICT
#define ComSquareupOkhttpInternalHttpCacheStrategy_INCLUDE_ALL 0
#else
#define ComSquareupOkhttpInternalHttpCacheStrategy_INCLUDE_ALL 1
#endif
#undef ComSquareupOkhttpInternalHttpCacheStrategy_RESTRICT

#if !defined (ComSquareupOkhttpInternalHttpCacheStrategy_) && (ComSquareupOkhttpInternalHttpCacheStrategy_INCLUDE_ALL || defined(ComSquareupOkhttpInternalHttpCacheStrategy_INCLUDE))
#define ComSquareupOkhttpInternalHttpCacheStrategy_

@class ComSquareupOkhttpRequest;
@class ComSquareupOkhttpResponse;

@interface ComSquareupOkhttpInternalHttpCacheStrategy : NSObject {
 @public
  ComSquareupOkhttpRequest *networkRequest_;
  ComSquareupOkhttpResponse *cacheResponse_;
}

#pragma mark Public

+ (jboolean)isCacheableWithComSquareupOkhttpResponse:(ComSquareupOkhttpResponse *)response
                        withComSquareupOkhttpRequest:(ComSquareupOkhttpRequest *)request;

@end

J2OBJC_EMPTY_STATIC_INIT(ComSquareupOkhttpInternalHttpCacheStrategy)

J2OBJC_FIELD_SETTER(ComSquareupOkhttpInternalHttpCacheStrategy, networkRequest_, ComSquareupOkhttpRequest *)
J2OBJC_FIELD_SETTER(ComSquareupOkhttpInternalHttpCacheStrategy, cacheResponse_, ComSquareupOkhttpResponse *)

FOUNDATION_EXPORT jboolean ComSquareupOkhttpInternalHttpCacheStrategy_isCacheableWithComSquareupOkhttpResponse_withComSquareupOkhttpRequest_(ComSquareupOkhttpResponse *response, ComSquareupOkhttpRequest *request);

J2OBJC_TYPE_LITERAL_HEADER(ComSquareupOkhttpInternalHttpCacheStrategy)

#endif

#if !defined (ComSquareupOkhttpInternalHttpCacheStrategy_Factory_) && (ComSquareupOkhttpInternalHttpCacheStrategy_INCLUDE_ALL || defined(ComSquareupOkhttpInternalHttpCacheStrategy_Factory_INCLUDE))
#define ComSquareupOkhttpInternalHttpCacheStrategy_Factory_

@class ComSquareupOkhttpInternalHttpCacheStrategy;
@class ComSquareupOkhttpRequest;
@class ComSquareupOkhttpResponse;

@interface ComSquareupOkhttpInternalHttpCacheStrategy_Factory : NSObject {
 @public
  jlong nowMillis_;
  ComSquareupOkhttpRequest *request_;
  ComSquareupOkhttpResponse *cacheResponse_;
}

#pragma mark Public

- (instancetype)initWithLong:(jlong)nowMillis
withComSquareupOkhttpRequest:(ComSquareupOkhttpRequest *)request
withComSquareupOkhttpResponse:(ComSquareupOkhttpResponse *)cacheResponse;

- (ComSquareupOkhttpInternalHttpCacheStrategy *)get;

@end

J2OBJC_EMPTY_STATIC_INIT(ComSquareupOkhttpInternalHttpCacheStrategy_Factory)

J2OBJC_FIELD_SETTER(ComSquareupOkhttpInternalHttpCacheStrategy_Factory, request_, ComSquareupOkhttpRequest *)
J2OBJC_FIELD_SETTER(ComSquareupOkhttpInternalHttpCacheStrategy_Factory, cacheResponse_, ComSquareupOkhttpResponse *)

FOUNDATION_EXPORT void ComSquareupOkhttpInternalHttpCacheStrategy_Factory_initWithLong_withComSquareupOkhttpRequest_withComSquareupOkhttpResponse_(ComSquareupOkhttpInternalHttpCacheStrategy_Factory *self, jlong nowMillis, ComSquareupOkhttpRequest *request, ComSquareupOkhttpResponse *cacheResponse);

FOUNDATION_EXPORT ComSquareupOkhttpInternalHttpCacheStrategy_Factory *new_ComSquareupOkhttpInternalHttpCacheStrategy_Factory_initWithLong_withComSquareupOkhttpRequest_withComSquareupOkhttpResponse_(jlong nowMillis, ComSquareupOkhttpRequest *request, ComSquareupOkhttpResponse *cacheResponse) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComSquareupOkhttpInternalHttpCacheStrategy_Factory *create_ComSquareupOkhttpInternalHttpCacheStrategy_Factory_initWithLong_withComSquareupOkhttpRequest_withComSquareupOkhttpResponse_(jlong nowMillis, ComSquareupOkhttpRequest *request, ComSquareupOkhttpResponse *cacheResponse);

J2OBJC_TYPE_LITERAL_HEADER(ComSquareupOkhttpInternalHttpCacheStrategy_Factory)

#endif

#pragma pop_macro("ComSquareupOkhttpInternalHttpCacheStrategy_INCLUDE_ALL")
