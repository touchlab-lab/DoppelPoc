//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/exceptions/OnErrorFailedException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("RxExceptionsOnErrorFailedException_INCLUDE_ALL")
#ifdef RxExceptionsOnErrorFailedException_RESTRICT
#define RxExceptionsOnErrorFailedException_INCLUDE_ALL 0
#else
#define RxExceptionsOnErrorFailedException_INCLUDE_ALL 1
#endif
#undef RxExceptionsOnErrorFailedException_RESTRICT

#if !defined (RxExceptionsOnErrorFailedException_) && (RxExceptionsOnErrorFailedException_INCLUDE_ALL || defined(RxExceptionsOnErrorFailedException_INCLUDE))
#define RxExceptionsOnErrorFailedException_

#define JavaLangRuntimeException_RESTRICT 1
#define JavaLangRuntimeException_INCLUDE 1
#include "java/lang/RuntimeException.h"

@interface RxExceptionsOnErrorFailedException : JavaLangRuntimeException

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)message
                 withNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define withJavaLangThrowable withNSException
#endif // J2OBJC_RENAME_ALIASES

- (instancetype)initWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define initWithJavaLangThrowable initWithNSException
#endif // J2OBJC_RENAME_ALIASES

@end

J2OBJC_EMPTY_STATIC_INIT(RxExceptionsOnErrorFailedException)

FOUNDATION_EXPORT void RxExceptionsOnErrorFailedException_initWithNSString_withNSException_(RxExceptionsOnErrorFailedException *self, NSString *message, NSException *e);

FOUNDATION_EXPORT RxExceptionsOnErrorFailedException *new_RxExceptionsOnErrorFailedException_initWithNSString_withNSException_(NSString *message, NSException *e) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxExceptionsOnErrorFailedException *create_RxExceptionsOnErrorFailedException_initWithNSString_withNSException_(NSString *message, NSException *e);

FOUNDATION_EXPORT void RxExceptionsOnErrorFailedException_initWithNSException_(RxExceptionsOnErrorFailedException *self, NSException *e);

FOUNDATION_EXPORT RxExceptionsOnErrorFailedException *new_RxExceptionsOnErrorFailedException_initWithNSException_(NSException *e) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxExceptionsOnErrorFailedException *create_RxExceptionsOnErrorFailedException_initWithNSException_(NSException *e);

J2OBJC_TYPE_LITERAL_HEADER(RxExceptionsOnErrorFailedException)

#endif

#pragma pop_macro("RxExceptionsOnErrorFailedException_INCLUDE_ALL")
