//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/squidb/squidb-ios/src/com/yahoo/android/sqlite/SQLiteDiskIOException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("ComYahooAndroidSqliteSQLiteDiskIOException_INCLUDE_ALL")
#ifdef ComYahooAndroidSqliteSQLiteDiskIOException_RESTRICT
#define ComYahooAndroidSqliteSQLiteDiskIOException_INCLUDE_ALL 0
#else
#define ComYahooAndroidSqliteSQLiteDiskIOException_INCLUDE_ALL 1
#endif
#undef ComYahooAndroidSqliteSQLiteDiskIOException_RESTRICT

#if !defined (ComYahooAndroidSqliteSQLiteDiskIOException_) && (ComYahooAndroidSqliteSQLiteDiskIOException_INCLUDE_ALL || defined(ComYahooAndroidSqliteSQLiteDiskIOException_INCLUDE))
#define ComYahooAndroidSqliteSQLiteDiskIOException_

#define ComYahooAndroidSqliteSQLiteException_RESTRICT 1
#define ComYahooAndroidSqliteSQLiteException_INCLUDE 1
#include "com/yahoo/android/sqlite/SQLiteException.h"

@interface ComYahooAndroidSqliteSQLiteDiskIOException : ComYahooAndroidSqliteSQLiteException

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)error;

@end

J2OBJC_EMPTY_STATIC_INIT(ComYahooAndroidSqliteSQLiteDiskIOException)

FOUNDATION_EXPORT void ComYahooAndroidSqliteSQLiteDiskIOException_init(ComYahooAndroidSqliteSQLiteDiskIOException *self);

FOUNDATION_EXPORT ComYahooAndroidSqliteSQLiteDiskIOException *new_ComYahooAndroidSqliteSQLiteDiskIOException_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComYahooAndroidSqliteSQLiteDiskIOException *create_ComYahooAndroidSqliteSQLiteDiskIOException_init();

FOUNDATION_EXPORT void ComYahooAndroidSqliteSQLiteDiskIOException_initWithNSString_(ComYahooAndroidSqliteSQLiteDiskIOException *self, NSString *error);

FOUNDATION_EXPORT ComYahooAndroidSqliteSQLiteDiskIOException *new_ComYahooAndroidSqliteSQLiteDiskIOException_initWithNSString_(NSString *error) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComYahooAndroidSqliteSQLiteDiskIOException *create_ComYahooAndroidSqliteSQLiteDiskIOException_initWithNSString_(NSString *error);

J2OBJC_TYPE_LITERAL_HEADER(ComYahooAndroidSqliteSQLiteDiskIOException)

#endif

#pragma pop_macro("ComYahooAndroidSqliteSQLiteDiskIOException_INCLUDE_ALL")
