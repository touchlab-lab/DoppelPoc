//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/androidbase/AndroidBase/lib/src/main/java/android/database/sqlite/SQLiteOutOfMemoryException.java
//

#include "J2ObjC_source.h"
#include "android/database/sqlite/SQLiteException.h"
#include "android/database/sqlite/SQLiteOutOfMemoryException.h"

@implementation AndroidDatabaseSqliteSQLiteOutOfMemoryException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidDatabaseSqliteSQLiteOutOfMemoryException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)error {
  AndroidDatabaseSqliteSQLiteOutOfMemoryException_initWithNSString_(self, error);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SQLiteOutOfMemoryException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:", "SQLiteOutOfMemoryException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _AndroidDatabaseSqliteSQLiteOutOfMemoryException = { 2, "SQLiteOutOfMemoryException", "android.database.sqlite", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_AndroidDatabaseSqliteSQLiteOutOfMemoryException;
}

@end

void AndroidDatabaseSqliteSQLiteOutOfMemoryException_init(AndroidDatabaseSqliteSQLiteOutOfMemoryException *self) {
  AndroidDatabaseSqliteSQLiteException_init(self);
}

AndroidDatabaseSqliteSQLiteOutOfMemoryException *new_AndroidDatabaseSqliteSQLiteOutOfMemoryException_init() {
  J2OBJC_NEW_IMPL(AndroidDatabaseSqliteSQLiteOutOfMemoryException, init)
}

AndroidDatabaseSqliteSQLiteOutOfMemoryException *create_AndroidDatabaseSqliteSQLiteOutOfMemoryException_init() {
  J2OBJC_CREATE_IMPL(AndroidDatabaseSqliteSQLiteOutOfMemoryException, init)
}

void AndroidDatabaseSqliteSQLiteOutOfMemoryException_initWithNSString_(AndroidDatabaseSqliteSQLiteOutOfMemoryException *self, NSString *error) {
  AndroidDatabaseSqliteSQLiteException_initWithNSString_(self, error);
}

AndroidDatabaseSqliteSQLiteOutOfMemoryException *new_AndroidDatabaseSqliteSQLiteOutOfMemoryException_initWithNSString_(NSString *error) {
  J2OBJC_NEW_IMPL(AndroidDatabaseSqliteSQLiteOutOfMemoryException, initWithNSString_, error)
}

AndroidDatabaseSqliteSQLiteOutOfMemoryException *create_AndroidDatabaseSqliteSQLiteOutOfMemoryException_initWithNSString_(NSString *error) {
  J2OBJC_CREATE_IMPL(AndroidDatabaseSqliteSQLiteOutOfMemoryException, initWithNSString_, error)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidDatabaseSqliteSQLiteOutOfMemoryException)
