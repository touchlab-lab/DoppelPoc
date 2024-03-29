//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/squidb/squidb-ios/src/com/yahoo/android/sqlite/CloseGuard.java
//

#include "J2ObjC_header.h"

#pragma push_macro("ComYahooAndroidSqliteCloseGuard_INCLUDE_ALL")
#ifdef ComYahooAndroidSqliteCloseGuard_RESTRICT
#define ComYahooAndroidSqliteCloseGuard_INCLUDE_ALL 0
#else
#define ComYahooAndroidSqliteCloseGuard_INCLUDE_ALL 1
#endif
#undef ComYahooAndroidSqliteCloseGuard_RESTRICT

#if !defined (ComYahooAndroidSqliteCloseGuard_) && (ComYahooAndroidSqliteCloseGuard_INCLUDE_ALL || defined(ComYahooAndroidSqliteCloseGuard_INCLUDE))
#define ComYahooAndroidSqliteCloseGuard_

@protocol ComYahooAndroidSqliteCloseGuard_Reporter;

@interface ComYahooAndroidSqliteCloseGuard : NSObject

#pragma mark Public

- (void)close;

+ (ComYahooAndroidSqliteCloseGuard *)get;

+ (id<ComYahooAndroidSqliteCloseGuard_Reporter>)getReporter;

- (void)openWithNSString:(NSString *)closer;

+ (void)setEnabledWithBoolean:(jboolean)enabled;

+ (void)setReporterWithComYahooAndroidSqliteCloseGuard_Reporter:(id<ComYahooAndroidSqliteCloseGuard_Reporter>)reporter;

- (void)warnIfOpen;

@end

J2OBJC_STATIC_INIT(ComYahooAndroidSqliteCloseGuard)

FOUNDATION_EXPORT ComYahooAndroidSqliteCloseGuard *ComYahooAndroidSqliteCloseGuard_get();

FOUNDATION_EXPORT void ComYahooAndroidSqliteCloseGuard_setEnabledWithBoolean_(jboolean enabled);

FOUNDATION_EXPORT void ComYahooAndroidSqliteCloseGuard_setReporterWithComYahooAndroidSqliteCloseGuard_Reporter_(id<ComYahooAndroidSqliteCloseGuard_Reporter> reporter);

FOUNDATION_EXPORT id<ComYahooAndroidSqliteCloseGuard_Reporter> ComYahooAndroidSqliteCloseGuard_getReporter();

J2OBJC_TYPE_LITERAL_HEADER(ComYahooAndroidSqliteCloseGuard)

#endif

#if !defined (ComYahooAndroidSqliteCloseGuard_Reporter_) && (ComYahooAndroidSqliteCloseGuard_INCLUDE_ALL || defined(ComYahooAndroidSqliteCloseGuard_Reporter_INCLUDE))
#define ComYahooAndroidSqliteCloseGuard_Reporter_

@protocol ComYahooAndroidSqliteCloseGuard_Reporter < NSObject, JavaObject >

- (void)reportWithNSString:(NSString *)message
           withNSException:(NSException *)allocationSite;
#ifdef J2OBJC_RENAME_ALIASES
#define withJavaLangThrowable withNSException
#endif // J2OBJC_RENAME_ALIASES

@end

J2OBJC_EMPTY_STATIC_INIT(ComYahooAndroidSqliteCloseGuard_Reporter)

J2OBJC_TYPE_LITERAL_HEADER(ComYahooAndroidSqliteCloseGuard_Reporter)

#endif

#pragma pop_macro("ComYahooAndroidSqliteCloseGuard_INCLUDE_ALL")
