//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/androidbase/AndroidBase/lib/src/main/java/android/database/sqlite/SQLiteFullException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidDatabaseSqliteSQLiteFullException")
#ifdef RESTRICT_AndroidDatabaseSqliteSQLiteFullException
#define INCLUDE_ALL_AndroidDatabaseSqliteSQLiteFullException 0
#else
#define INCLUDE_ALL_AndroidDatabaseSqliteSQLiteFullException 1
#endif
#undef RESTRICT_AndroidDatabaseSqliteSQLiteFullException

#if !defined (AndroidDatabaseSqliteSQLiteFullException_) && (INCLUDE_ALL_AndroidDatabaseSqliteSQLiteFullException || defined(INCLUDE_AndroidDatabaseSqliteSQLiteFullException))
#define AndroidDatabaseSqliteSQLiteFullException_

#define RESTRICT_AndroidDatabaseSqliteSQLiteException 1
#define INCLUDE_AndroidDatabaseSqliteSQLiteException 1
#include "android/database/sqlite/SQLiteException.h"

@interface AndroidDatabaseSqliteSQLiteFullException : AndroidDatabaseSqliteSQLiteException

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)error;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidDatabaseSqliteSQLiteFullException)

FOUNDATION_EXPORT void AndroidDatabaseSqliteSQLiteFullException_init(AndroidDatabaseSqliteSQLiteFullException *self);

FOUNDATION_EXPORT AndroidDatabaseSqliteSQLiteFullException *new_AndroidDatabaseSqliteSQLiteFullException_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidDatabaseSqliteSQLiteFullException *create_AndroidDatabaseSqliteSQLiteFullException_init();

FOUNDATION_EXPORT void AndroidDatabaseSqliteSQLiteFullException_initWithNSString_(AndroidDatabaseSqliteSQLiteFullException *self, NSString *error);

FOUNDATION_EXPORT AndroidDatabaseSqliteSQLiteFullException *new_AndroidDatabaseSqliteSQLiteFullException_initWithNSString_(NSString *error) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidDatabaseSqliteSQLiteFullException *create_AndroidDatabaseSqliteSQLiteFullException_initWithNSString_(NSString *error);

J2OBJC_TYPE_LITERAL_HEADER(AndroidDatabaseSqliteSQLiteFullException)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidDatabaseSqliteSQLiteFullException")