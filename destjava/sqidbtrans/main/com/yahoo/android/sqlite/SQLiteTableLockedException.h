//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/squidb/squidb-ios/src/com/yahoo/android/sqlite/SQLiteTableLockedException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("ComYahooAndroidSqliteSQLiteTableLockedException_INCLUDE_ALL")
#ifdef ComYahooAndroidSqliteSQLiteTableLockedException_RESTRICT
#define ComYahooAndroidSqliteSQLiteTableLockedException_INCLUDE_ALL 0
#else
#define ComYahooAndroidSqliteSQLiteTableLockedException_INCLUDE_ALL 1
#endif
#undef ComYahooAndroidSqliteSQLiteTableLockedException_RESTRICT

#if !defined (ComYahooAndroidSqliteSQLiteTableLockedException_) && (ComYahooAndroidSqliteSQLiteTableLockedException_INCLUDE_ALL || defined(ComYahooAndroidSqliteSQLiteTableLockedException_INCLUDE))
#define ComYahooAndroidSqliteSQLiteTableLockedException_

#define ComYahooAndroidSqliteSQLiteException_RESTRICT 1
#define ComYahooAndroidSqliteSQLiteException_INCLUDE 1
#include "com/yahoo/android/sqlite/SQLiteException.h"

@interface ComYahooAndroidSqliteSQLiteTableLockedException : ComYahooAndroidSqliteSQLiteException

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)error;

@end

J2OBJC_EMPTY_STATIC_INIT(ComYahooAndroidSqliteSQLiteTableLockedException)

FOUNDATION_EXPORT void ComYahooAndroidSqliteSQLiteTableLockedException_init(ComYahooAndroidSqliteSQLiteTableLockedException *self);

FOUNDATION_EXPORT ComYahooAndroidSqliteSQLiteTableLockedException *new_ComYahooAndroidSqliteSQLiteTableLockedException_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComYahooAndroidSqliteSQLiteTableLockedException *create_ComYahooAndroidSqliteSQLiteTableLockedException_init();

FOUNDATION_EXPORT void ComYahooAndroidSqliteSQLiteTableLockedException_initWithNSString_(ComYahooAndroidSqliteSQLiteTableLockedException *self, NSString *error);

FOUNDATION_EXPORT ComYahooAndroidSqliteSQLiteTableLockedException *new_ComYahooAndroidSqliteSQLiteTableLockedException_initWithNSString_(NSString *error) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComYahooAndroidSqliteSQLiteTableLockedException *create_ComYahooAndroidSqliteSQLiteTableLockedException_initWithNSString_(NSString *error);

J2OBJC_TYPE_LITERAL_HEADER(ComYahooAndroidSqliteSQLiteTableLockedException)

#endif

#pragma pop_macro("ComYahooAndroidSqliteSQLiteTableLockedException_INCLUDE_ALL")
