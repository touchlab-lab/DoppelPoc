//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/androidbase/AndroidBase/lib/src/main/java/android/database/sqlite/SQLiteCantOpenDatabaseException.java
//

#include "J2ObjC_source.h"
#include "android/database/sqlite/SQLiteCantOpenDatabaseException.h"
#include "android/database/sqlite/SQLiteException.h"

@implementation AndroidDatabaseSqliteSQLiteCantOpenDatabaseException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidDatabaseSqliteSQLiteCantOpenDatabaseException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)error {
  AndroidDatabaseSqliteSQLiteCantOpenDatabaseException_initWithNSString_(self, error);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SQLiteCantOpenDatabaseException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:", "SQLiteCantOpenDatabaseException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _AndroidDatabaseSqliteSQLiteCantOpenDatabaseException = { 2, "SQLiteCantOpenDatabaseException", "android.database.sqlite", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_AndroidDatabaseSqliteSQLiteCantOpenDatabaseException;
}

@end

void AndroidDatabaseSqliteSQLiteCantOpenDatabaseException_init(AndroidDatabaseSqliteSQLiteCantOpenDatabaseException *self) {
  AndroidDatabaseSqliteSQLiteException_init(self);
}

AndroidDatabaseSqliteSQLiteCantOpenDatabaseException *new_AndroidDatabaseSqliteSQLiteCantOpenDatabaseException_init() {
  J2OBJC_NEW_IMPL(AndroidDatabaseSqliteSQLiteCantOpenDatabaseException, init)
}

AndroidDatabaseSqliteSQLiteCantOpenDatabaseException *create_AndroidDatabaseSqliteSQLiteCantOpenDatabaseException_init() {
  J2OBJC_CREATE_IMPL(AndroidDatabaseSqliteSQLiteCantOpenDatabaseException, init)
}

void AndroidDatabaseSqliteSQLiteCantOpenDatabaseException_initWithNSString_(AndroidDatabaseSqliteSQLiteCantOpenDatabaseException *self, NSString *error) {
  AndroidDatabaseSqliteSQLiteException_initWithNSString_(self, error);
}

AndroidDatabaseSqliteSQLiteCantOpenDatabaseException *new_AndroidDatabaseSqliteSQLiteCantOpenDatabaseException_initWithNSString_(NSString *error) {
  J2OBJC_NEW_IMPL(AndroidDatabaseSqliteSQLiteCantOpenDatabaseException, initWithNSString_, error)
}

AndroidDatabaseSqliteSQLiteCantOpenDatabaseException *create_AndroidDatabaseSqliteSQLiteCantOpenDatabaseException_initWithNSString_(NSString *error) {
  J2OBJC_CREATE_IMPL(AndroidDatabaseSqliteSQLiteCantOpenDatabaseException, initWithNSString_, error)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidDatabaseSqliteSQLiteCantOpenDatabaseException)