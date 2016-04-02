//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/magicthreads/library/src/main/java/co/touchlab/android/threading/tasks/persisted/storage/sqlite/ClearSQLiteDatabase.java
//

#include "J2ObjC_header.h"

#pragma push_macro("CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_INCLUDE_ALL")
#ifdef CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_RESTRICT
#define CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_INCLUDE_ALL 0
#else
#define CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_INCLUDE_ALL 1
#endif
#undef CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_RESTRICT

#if !defined (CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_) && (CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_INCLUDE_ALL || defined(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_INCLUDE))
#define CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_

#define CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSQLiteDatabaseIntf_RESTRICT 1
#define CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSQLiteDatabaseIntf_INCLUDE 1
#include "co/touchlab/android/threading/tasks/persisted/storage/sqlite/SQLiteDatabaseIntf.h"

@class AndroidContentContentValues;
@class AndroidDatabaseSqliteSQLiteDatabase;
@class IOSObjectArray;
@protocol CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf;

@interface CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase : NSObject < CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSQLiteDatabaseIntf >

#pragma mark Public

- (instancetype)initWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)db;

- (void)beginTransaction;

- (jint)delete__WithNSString:(NSString *)tableName
                withNSString:(NSString *)query
           withNSStringArray:(IOSObjectArray *)params;

- (void)endTransaction;

- (void)execSQLWithNSString:(NSString *)sql;

- (jlong)insertOrThrowWithNSString:(NSString *)tableName
                      withNSString:(NSString *)nullColHack
   withAndroidContentContentValues:(AndroidContentContentValues *)values;

- (id<CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf>)queryWithNSString:(NSString *)tableName
                                                                       withNSStringArray:(IOSObjectArray *)columnList;

- (void)setTransactionSuccessful;

- (jint)updateWithNSString:(NSString *)tableName
withAndroidContentContentValues:(AndroidContentContentValues *)values
              withNSString:(NSString *)whereClause
         withNSStringArray:(IOSObjectArray *)whereArgs;

@end

J2OBJC_EMPTY_STATIC_INIT(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase)

FOUNDATION_EXPORT void CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_initWithAndroidDatabaseSqliteSQLiteDatabase_(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase *self, AndroidDatabaseSqliteSQLiteDatabase *db);

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase *new_CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_initWithAndroidDatabaseSqliteSQLiteDatabase_(AndroidDatabaseSqliteSQLiteDatabase *db) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase *create_CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_initWithAndroidDatabaseSqliteSQLiteDatabase_(AndroidDatabaseSqliteSQLiteDatabase *db);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase)

#endif

#if !defined (CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_ClearCursor_) && (CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_INCLUDE_ALL || defined(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_ClearCursor_INCLUDE))
#define CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_ClearCursor_

#define CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf_RESTRICT 1
#define CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf_INCLUDE 1
#include "co/touchlab/android/threading/tasks/persisted/storage/sqlite/CursorIntf.h"

@protocol AndroidDatabaseCursor;

@interface CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_ClearCursor : NSObject < CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf >

#pragma mark Public

- (instancetype)initWithAndroidDatabaseCursor:(id<AndroidDatabaseCursor>)cursor;

- (void)close;

- (jlong)getLongWithInt:(jint)i;

- (NSString *)getStringWithInt:(jint)i;

- (jboolean)moveToNext;

@end

J2OBJC_EMPTY_STATIC_INIT(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_ClearCursor)

FOUNDATION_EXPORT void CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_ClearCursor_initWithAndroidDatabaseCursor_(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_ClearCursor *self, id<AndroidDatabaseCursor> cursor);

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_ClearCursor *new_CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_ClearCursor_initWithAndroidDatabaseCursor_(id<AndroidDatabaseCursor> cursor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_ClearCursor *create_CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_ClearCursor_initWithAndroidDatabaseCursor_(id<AndroidDatabaseCursor> cursor);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_ClearCursor)

#endif

#pragma pop_macro("CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_INCLUDE_ALL")