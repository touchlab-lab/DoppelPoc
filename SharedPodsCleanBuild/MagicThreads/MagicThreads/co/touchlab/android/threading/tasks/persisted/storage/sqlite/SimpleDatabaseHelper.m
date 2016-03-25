//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/magicthreads/library/src/main/java/co/touchlab/android/threading/tasks/persisted/storage/sqlite/SimpleDatabaseHelper.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "android/content/Context.h"
#include "android/database/sqlite/SQLiteDatabase.h"
#include "android/database/sqlite/SQLiteOpenHelper.h"
#include "co/touchlab/android/threading/tasks/persisted/CommandPersistenceProvider.h"
#include "co/touchlab/android/threading/tasks/persisted/storage/sqlite/ClearSQLiteDatabase.h"
#include "co/touchlab/android/threading/tasks/persisted/storage/sqlite/SimpleDatabaseHelper.h"

@interface CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper ()

- (instancetype)initWithAndroidContentContext:(AndroidContentContext *)context
                                 withNSString:(NSString *)fileName;

@end

inline jint CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_get_VERSION();
#define CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_VERSION 1
J2OBJC_STATIC_FIELD_CONSTANT(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper, VERSION, jint)

inline CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper *CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_get_INSTANCE();
inline CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper *CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_set_INSTANCE(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper *value);
static CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper *CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper, INSTANCE, CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper *)

__attribute__((unused)) static void CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_initWithAndroidContentContext_withNSString_(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper *self, AndroidContentContext *context, NSString *fileName);

__attribute__((unused)) static CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper *new_CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_initWithAndroidContentContext_withNSString_(AndroidContentContext *context, NSString *fileName) NS_RETURNS_RETAINED;

__attribute__((unused)) static CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper *create_CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_initWithAndroidContentContext_withNSString_(AndroidContentContext *context, NSString *fileName);

@implementation CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper

+ (CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper *)getInstanceWithAndroidContentContext:(AndroidContentContext *)context
                                                                                                       withNSString:(NSString *)fileName {
  return CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_getInstanceWithAndroidContentContext_withNSString_(context, fileName);
}

- (instancetype)initWithAndroidContentContext:(AndroidContentContext *)context
                                 withNSString:(NSString *)fileName {
  CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_initWithAndroidContentContext_withNSString_(self, context, fileName);
  return self;
}

- (void)onOpenWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)db {
  [super onOpenWithAndroidDatabaseSqliteSQLiteDatabase:db];
  [((AndroidDatabaseSqliteSQLiteDatabase *) nil_chk(db)) execSQLWithNSString:@"PRAGMA foreign_keys=ON;"];
}

- (void)onCreateWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)db {
  CoTouchlabAndroidThreadingTasksPersistedCommandPersistenceProvider_createTablesWithCoTouchlabAndroidThreadingTasksPersistedStorageSqliteSQLiteDatabaseIntf_(new_CoTouchlabAndroidThreadingTasksPersistedStorageSqliteClearSQLiteDatabase_initWithAndroidDatabaseSqliteSQLiteDatabase_(db));
}

- (void)onUpgradeWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)db
                                                 withInt:(jint)oldVersion
                                                 withInt:(jint)newVersion {
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getInstanceWithAndroidContentContext:withNSString:", "getInstance", "Lco.touchlab.android.threading.tasks.persisted.storage.sqlite.SimpleDatabaseHelper;", 0x29, NULL, NULL },
    { "initWithAndroidContentContext:withNSString:", "SimpleDatabaseHelper", NULL, 0x2, NULL, NULL },
    { "onOpenWithAndroidDatabaseSqliteSQLiteDatabase:", "onOpen", "V", 0x1, NULL, NULL },
    { "onCreateWithAndroidDatabaseSqliteSQLiteDatabase:", "onCreate", "V", 0x1, NULL, NULL },
    { "onUpgradeWithAndroidDatabaseSqliteSQLiteDatabase:withInt:withInt:", "onUpgrade", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "VERSION", "VERSION", 0x1a, "I", NULL, NULL, .constantValue.asInt = CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_VERSION },
    { "INSTANCE", "INSTANCE", 0xa, "Lco.touchlab.android.threading.tasks.persisted.storage.sqlite.SimpleDatabaseHelper;", &CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_INSTANCE, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper = { 2, "SimpleDatabaseHelper", "co.touchlab.android.threading.tasks.persisted.storage.sqlite", NULL, 0x1, 5, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper;
}

@end

CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper *CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_getInstanceWithAndroidContentContext_withNSString_(AndroidContentContext *context, NSString *fileName) {
  CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_initialize();
  @synchronized(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_class_()) {
    if (CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_INSTANCE == nil) {
      CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_INSTANCE = new_CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_initWithAndroidContentContext_withNSString_([((AndroidContentContext *) nil_chk(context)) getApplicationContext], fileName);
    }
    return CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_INSTANCE;
  }
}

void CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_initWithAndroidContentContext_withNSString_(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper *self, AndroidContentContext *context, NSString *fileName) {
  AndroidDatabaseSqliteSQLiteOpenHelper_initWithAndroidContentContext_withNSString_withAndroidDatabaseSqliteSQLiteDatabase_CursorFactory_withInt_(self, context, fileName, nil, CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_VERSION);
}

CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper *new_CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_initWithAndroidContentContext_withNSString_(AndroidContentContext *context, NSString *fileName) {
  CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper *self = [CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper alloc];
  CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_initWithAndroidContentContext_withNSString_(self, context, fileName);
  return self;
}

CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper *create_CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_initWithAndroidContentContext_withNSString_(AndroidContentContext *context, NSString *fileName) {
  return new_CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper_initWithAndroidContentContext_withNSString_(context, fileName);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteSimpleDatabaseHelper)
