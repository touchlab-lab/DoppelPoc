//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/androidbase/AndroidBase/lib/src/main/java/android/database/sqlite/SQLiteDoneException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("AndroidDatabaseSqliteSQLiteDoneException_INCLUDE_ALL")
#ifdef AndroidDatabaseSqliteSQLiteDoneException_RESTRICT
#define AndroidDatabaseSqliteSQLiteDoneException_INCLUDE_ALL 0
#else
#define AndroidDatabaseSqliteSQLiteDoneException_INCLUDE_ALL 1
#endif
#undef AndroidDatabaseSqliteSQLiteDoneException_RESTRICT

#if !defined (AndroidDatabaseSqliteSQLiteDoneException_) && (AndroidDatabaseSqliteSQLiteDoneException_INCLUDE_ALL || defined(AndroidDatabaseSqliteSQLiteDoneException_INCLUDE))
#define AndroidDatabaseSqliteSQLiteDoneException_

#define AndroidDatabaseSqliteSQLiteException_RESTRICT 1
#define AndroidDatabaseSqliteSQLiteException_INCLUDE 1
#include "android/database/sqlite/SQLiteException.h"

@interface AndroidDatabaseSqliteSQLiteDoneException : AndroidDatabaseSqliteSQLiteException

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)error;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidDatabaseSqliteSQLiteDoneException)

FOUNDATION_EXPORT void AndroidDatabaseSqliteSQLiteDoneException_init(AndroidDatabaseSqliteSQLiteDoneException *self);

FOUNDATION_EXPORT AndroidDatabaseSqliteSQLiteDoneException *new_AndroidDatabaseSqliteSQLiteDoneException_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidDatabaseSqliteSQLiteDoneException *create_AndroidDatabaseSqliteSQLiteDoneException_init();

FOUNDATION_EXPORT void AndroidDatabaseSqliteSQLiteDoneException_initWithNSString_(AndroidDatabaseSqliteSQLiteDoneException *self, NSString *error);

FOUNDATION_EXPORT AndroidDatabaseSqliteSQLiteDoneException *new_AndroidDatabaseSqliteSQLiteDoneException_initWithNSString_(NSString *error) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidDatabaseSqliteSQLiteDoneException *create_AndroidDatabaseSqliteSQLiteDoneException_initWithNSString_(NSString *error);

J2OBJC_TYPE_LITERAL_HEADER(AndroidDatabaseSqliteSQLiteDoneException)

#endif

#pragma pop_macro("AndroidDatabaseSqliteSQLiteDoneException_INCLUDE_ALL")
