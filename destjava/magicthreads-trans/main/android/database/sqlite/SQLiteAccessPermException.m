//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/androidbase/AndroidBase/lib/src/main/java/android/database/sqlite/SQLiteAccessPermException.java
//

#include "J2ObjC_source.h"
#include "android/database/sqlite/SQLiteAccessPermException.h"
#include "android/database/sqlite/SQLiteException.h"

@implementation AndroidDatabaseSqliteSQLiteAccessPermException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidDatabaseSqliteSQLiteAccessPermException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)error {
  AndroidDatabaseSqliteSQLiteAccessPermException_initWithNSString_(self, error);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SQLiteAccessPermException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:", "SQLiteAccessPermException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _AndroidDatabaseSqliteSQLiteAccessPermException = { 2, "SQLiteAccessPermException", "android.database.sqlite", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_AndroidDatabaseSqliteSQLiteAccessPermException;
}

@end

void AndroidDatabaseSqliteSQLiteAccessPermException_init(AndroidDatabaseSqliteSQLiteAccessPermException *self) {
  AndroidDatabaseSqliteSQLiteException_init(self);
}

AndroidDatabaseSqliteSQLiteAccessPermException *new_AndroidDatabaseSqliteSQLiteAccessPermException_init() {
  J2OBJC_NEW_IMPL(AndroidDatabaseSqliteSQLiteAccessPermException, init)
}

AndroidDatabaseSqliteSQLiteAccessPermException *create_AndroidDatabaseSqliteSQLiteAccessPermException_init() {
  J2OBJC_CREATE_IMPL(AndroidDatabaseSqliteSQLiteAccessPermException, init)
}

void AndroidDatabaseSqliteSQLiteAccessPermException_initWithNSString_(AndroidDatabaseSqliteSQLiteAccessPermException *self, NSString *error) {
  AndroidDatabaseSqliteSQLiteException_initWithNSString_(self, error);
}

AndroidDatabaseSqliteSQLiteAccessPermException *new_AndroidDatabaseSqliteSQLiteAccessPermException_initWithNSString_(NSString *error) {
  J2OBJC_NEW_IMPL(AndroidDatabaseSqliteSQLiteAccessPermException, initWithNSString_, error)
}

AndroidDatabaseSqliteSQLiteAccessPermException *create_AndroidDatabaseSqliteSQLiteAccessPermException_initWithNSString_(NSString *error) {
  J2OBJC_CREATE_IMPL(AndroidDatabaseSqliteSQLiteAccessPermException, initWithNSString_, error)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidDatabaseSqliteSQLiteAccessPermException)
