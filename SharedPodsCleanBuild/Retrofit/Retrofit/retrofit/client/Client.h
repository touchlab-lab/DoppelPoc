//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/retrofit/retrofit/src/main/java/retrofit/client/Client.java
//

#include "J2ObjC_header.h"

#pragma push_macro("RetrofitClientClient_INCLUDE_ALL")
#ifdef RetrofitClientClient_RESTRICT
#define RetrofitClientClient_INCLUDE_ALL 0
#else
#define RetrofitClientClient_INCLUDE_ALL 1
#endif
#undef RetrofitClientClient_RESTRICT

#if !defined (RetrofitClientClient_) && (RetrofitClientClient_INCLUDE_ALL || defined(RetrofitClientClient_INCLUDE))
#define RetrofitClientClient_

@class RetrofitClientRequest;
@class RetrofitClientResponse;

@protocol RetrofitClientClient < NSObject, JavaObject >

- (RetrofitClientResponse *)executeWithRetrofitClientRequest:(RetrofitClientRequest *)request;

@end

J2OBJC_EMPTY_STATIC_INIT(RetrofitClientClient)

J2OBJC_TYPE_LITERAL_HEADER(RetrofitClientClient)

#endif

#if !defined (RetrofitClientClient_Provider_) && (RetrofitClientClient_INCLUDE_ALL || defined(RetrofitClientClient_Provider_INCLUDE))
#define RetrofitClientClient_Provider_

@protocol RetrofitClientClient;

@protocol RetrofitClientClient_Provider < NSObject, JavaObject >

- (id<RetrofitClientClient>)get;

@end

J2OBJC_EMPTY_STATIC_INIT(RetrofitClientClient_Provider)

J2OBJC_TYPE_LITERAL_HEADER(RetrofitClientClient_Provider)

#endif

#pragma pop_macro("RetrofitClientClient_INCLUDE_ALL")
