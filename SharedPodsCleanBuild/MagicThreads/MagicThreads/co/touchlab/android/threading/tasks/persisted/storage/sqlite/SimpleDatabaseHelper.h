//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/magicthreads/library/src/main/java/co/touchlab/android/threading/tasks/persisted/storage/sqlite/SimpleDatabaseHelper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_INCLUDE_ALL")
#ifdef CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_RESTRICT
#define CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_INCLUDE_ALL 0
#else
#define CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_INCLUDE_ALL 1
#endif
#undef CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_RESTRICT

#if !defined (CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_) && (CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_INCLUDE_ALL || defined(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_INCLUDE))
#define CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_

#define AndroidDatabaseSqliteSQLiteOpenHelper_RESTRICT 1
#define AndroidDatabaseSqliteSQLiteOpenHelper_INCLUDE 1
#include "android/database/sqlite/SQLiteOpenHelper.h"

@class AndroidContentContext;
@class AndroidDatabaseSqliteSQLiteDatabase;

@interface CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper : AndroidDatabaseSqliteSQLiteOpenHelper

#pragma mark Public

+ (CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper *)getInstanceWithAndroidContentContext:(AndroidContentContext *)context
                                                                                                       withNSString:(NSString *)fileName;

- (void)onCreateWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)db;

- (void)onOpenWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)db;

- (void)onUpgradeWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)db
                                                 withInt:(jint)oldVersion
                                                 withInt:(jint)newVersion;

@end

J2OBJC_EMPTY_STATIC_INIT(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper)

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper *CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_getInstanceWithAndroidContentContext_withNSString_(AndroidContentContext *context, NSString *fileName);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper)

#endif

#pragma pop_macro("CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_INCLUDE_ALL")
