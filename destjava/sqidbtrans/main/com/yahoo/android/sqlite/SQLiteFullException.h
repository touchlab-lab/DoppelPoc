//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/squidb/squidb-ios/src/com/yahoo/android/sqlite/SQLiteFullException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("ComYahooAndroidSqliteSQLiteFullException_INCLUDE_ALL")
#ifdef ComYahooAndroidSqliteSQLiteFullException_RESTRICT
#define ComYahooAndroidSqliteSQLiteFullException_INCLUDE_ALL 0
#else
#define ComYahooAndroidSqliteSQLiteFullException_INCLUDE_ALL 1
#endif
#undef ComYahooAndroidSqliteSQLiteFullException_RESTRICT

#if !defined (ComYahooAndroidSqliteSQLiteFullException_) && (ComYahooAndroidSqliteSQLiteFullException_INCLUDE_ALL || defined(ComYahooAndroidSqliteSQLiteFullException_INCLUDE))
#define ComYahooAndroidSqliteSQLiteFullException_

#define ComYahooAndroidSqliteSQLiteException_RESTRICT 1
#define ComYahooAndroidSqliteSQLiteException_INCLUDE 1
#include "com/yahoo/android/sqlite/SQLiteException.h"

@interface ComYahooAndroidSqliteSQLiteFullException : ComYahooAndroidSqliteSQLiteException

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)error;

@end

J2OBJC_EMPTY_STATIC_INIT(ComYahooAndroidSqliteSQLiteFullException)

FOUNDATION_EXPORT void ComYahooAndroidSqliteSQLiteFullException_init(ComYahooAndroidSqliteSQLiteFullException *self);

FOUNDATION_EXPORT ComYahooAndroidSqliteSQLiteFullException *new_ComYahooAndroidSqliteSQLiteFullException_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComYahooAndroidSqliteSQLiteFullException *create_ComYahooAndroidSqliteSQLiteFullException_init();

FOUNDATION_EXPORT void ComYahooAndroidSqliteSQLiteFullException_initWithNSString_(ComYahooAndroidSqliteSQLiteFullException *self, NSString *error);

FOUNDATION_EXPORT ComYahooAndroidSqliteSQLiteFullException *new_ComYahooAndroidSqliteSQLiteFullException_initWithNSString_(NSString *error) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComYahooAndroidSqliteSQLiteFullException *create_ComYahooAndroidSqliteSQLiteFullException_initWithNSString_(NSString *error);

J2OBJC_TYPE_LITERAL_HEADER(ComYahooAndroidSqliteSQLiteFullException)

#endif

#pragma pop_macro("ComYahooAndroidSqliteSQLiteFullException_INCLUDE_ALL")
