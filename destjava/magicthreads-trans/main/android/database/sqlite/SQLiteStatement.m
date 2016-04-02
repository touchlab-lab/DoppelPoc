//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/androidbase/AndroidBase/lib/src/main/java/android/database/sqlite/SQLiteStatement.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "android/database/sqlite/SQLiteClosable.h"
#include "android/database/sqlite/SQLiteDatabase.h"
#include "android/database/sqlite/SQLiteDatabaseCorruptException.h"
#include "android/database/sqlite/SQLiteProgram.h"
#include "android/database/sqlite/SQLiteSession.h"
#include "android/database/sqlite/SQLiteStatement.h"

@implementation AndroidDatabaseSqliteSQLiteStatement

- (instancetype)initWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)db
                                               withNSString:(NSString *)sql
                                          withNSObjectArray:(IOSObjectArray *)bindArgs {
  AndroidDatabaseSqliteSQLiteStatement_initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withNSObjectArray_(self, db, sql, bindArgs);
  return self;
}

- (void)execute {
  [self acquireReference];
  @try {
    [((AndroidDatabaseSqliteSQLiteSession *) nil_chk([self getSession])) executeWithNSString:[self getSql] withNSObjectArray:[self getBindArgs] withInt:[self getConnectionFlags]];
  }
  @catch (AndroidDatabaseSqliteSQLiteDatabaseCorruptException *ex) {
    [self onCorruption];
    @throw ex;
  }
  @finally {
    [self releaseReference];
  }
}

- (jint)executeUpdateDelete {
  [self acquireReference];
  @try {
    return [((AndroidDatabaseSqliteSQLiteSession *) nil_chk([self getSession])) executeForChangedRowCountWithNSString:[self getSql] withNSObjectArray:[self getBindArgs] withInt:[self getConnectionFlags]];
  }
  @catch (AndroidDatabaseSqliteSQLiteDatabaseCorruptException *ex) {
    [self onCorruption];
    @throw ex;
  }
  @finally {
    [self releaseReference];
  }
}

- (jlong)executeInsert {
  [self acquireReference];
  @try {
    return [((AndroidDatabaseSqliteSQLiteSession *) nil_chk([self getSession])) executeForLastInsertedRowIdWithNSString:[self getSql] withNSObjectArray:[self getBindArgs] withInt:[self getConnectionFlags]];
  }
  @catch (AndroidDatabaseSqliteSQLiteDatabaseCorruptException *ex) {
    [self onCorruption];
    @throw ex;
  }
  @finally {
    [self releaseReference];
  }
}

- (jlong)simpleQueryForLong {
  [self acquireReference];
  @try {
    return [((AndroidDatabaseSqliteSQLiteSession *) nil_chk([self getSession])) executeForLongWithNSString:[self getSql] withNSObjectArray:[self getBindArgs] withInt:[self getConnectionFlags]];
  }
  @catch (AndroidDatabaseSqliteSQLiteDatabaseCorruptException *ex) {
    [self onCorruption];
    @throw ex;
  }
  @finally {
    [self releaseReference];
  }
}

- (NSString *)simpleQueryForString {
  [self acquireReference];
  @try {
    return [((AndroidDatabaseSqliteSQLiteSession *) nil_chk([self getSession])) executeForStringWithNSString:[self getSql] withNSObjectArray:[self getBindArgs] withInt:[self getConnectionFlags]];
  }
  @catch (AndroidDatabaseSqliteSQLiteDatabaseCorruptException *ex) {
    [self onCorruption];
    @throw ex;
  }
  @finally {
    [self releaseReference];
  }
}

- (NSString *)description {
  return JreStrcat("$$", @"SQLiteProgram: ", [self getSql]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithAndroidDatabaseSqliteSQLiteDatabase:withNSString:withNSObjectArray:", "SQLiteStatement", NULL, 0x0, NULL, NULL },
    { "execute", NULL, "V", 0x1, NULL, NULL },
    { "executeUpdateDelete", NULL, "I", 0x1, NULL, NULL },
    { "executeInsert", NULL, "J", 0x1, NULL, NULL },
    { "simpleQueryForLong", NULL, "J", 0x1, NULL, NULL },
    { "simpleQueryForString", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _AndroidDatabaseSqliteSQLiteStatement = { 2, "SQLiteStatement", "android.database.sqlite", NULL, 0x11, 7, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_AndroidDatabaseSqliteSQLiteStatement;
}

@end

void AndroidDatabaseSqliteSQLiteStatement_initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withNSObjectArray_(AndroidDatabaseSqliteSQLiteStatement *self, AndroidDatabaseSqliteSQLiteDatabase *db, NSString *sql, IOSObjectArray *bindArgs) {
  AndroidDatabaseSqliteSQLiteProgram_initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withNSObjectArray_(self, db, sql, bindArgs);
}

AndroidDatabaseSqliteSQLiteStatement *new_AndroidDatabaseSqliteSQLiteStatement_initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withNSObjectArray_(AndroidDatabaseSqliteSQLiteDatabase *db, NSString *sql, IOSObjectArray *bindArgs) {
  J2OBJC_NEW_IMPL(AndroidDatabaseSqliteSQLiteStatement, initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withNSObjectArray_, db, sql, bindArgs)
}

AndroidDatabaseSqliteSQLiteStatement *create_AndroidDatabaseSqliteSQLiteStatement_initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withNSObjectArray_(AndroidDatabaseSqliteSQLiteDatabase *db, NSString *sql, IOSObjectArray *bindArgs) {
  J2OBJC_CREATE_IMPL(AndroidDatabaseSqliteSQLiteStatement, initWithAndroidDatabaseSqliteSQLiteDatabase_withNSString_withNSObjectArray_, db, sql, bindArgs)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidDatabaseSqliteSQLiteStatement)