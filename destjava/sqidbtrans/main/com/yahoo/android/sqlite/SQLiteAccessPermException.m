//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/squidb/squidb-ios/src/com/yahoo/android/sqlite/SQLiteAccessPermException.java
//

#include "J2ObjC_source.h"
#include "com/yahoo/android/sqlite/SQLiteAccessPermException.h"
#include "com/yahoo/android/sqlite/SQLiteException.h"

@implementation ComYahooAndroidSqliteSQLiteAccessPermException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComYahooAndroidSqliteSQLiteAccessPermException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)error {
  ComYahooAndroidSqliteSQLiteAccessPermException_initWithNSString_(self, error);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SQLiteAccessPermException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:", "SQLiteAccessPermException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ComYahooAndroidSqliteSQLiteAccessPermException = { 2, "SQLiteAccessPermException", "com.yahoo.android.sqlite", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComYahooAndroidSqliteSQLiteAccessPermException;
}

@end

void ComYahooAndroidSqliteSQLiteAccessPermException_init(ComYahooAndroidSqliteSQLiteAccessPermException *self) {
  ComYahooAndroidSqliteSQLiteException_init(self);
}

ComYahooAndroidSqliteSQLiteAccessPermException *new_ComYahooAndroidSqliteSQLiteAccessPermException_init() {
  ComYahooAndroidSqliteSQLiteAccessPermException *self = [ComYahooAndroidSqliteSQLiteAccessPermException alloc];
  ComYahooAndroidSqliteSQLiteAccessPermException_init(self);
  return self;
}

ComYahooAndroidSqliteSQLiteAccessPermException *create_ComYahooAndroidSqliteSQLiteAccessPermException_init() {
  return new_ComYahooAndroidSqliteSQLiteAccessPermException_init();
}

void ComYahooAndroidSqliteSQLiteAccessPermException_initWithNSString_(ComYahooAndroidSqliteSQLiteAccessPermException *self, NSString *error) {
  ComYahooAndroidSqliteSQLiteException_initWithNSString_(self, error);
}

ComYahooAndroidSqliteSQLiteAccessPermException *new_ComYahooAndroidSqliteSQLiteAccessPermException_initWithNSString_(NSString *error) {
  ComYahooAndroidSqliteSQLiteAccessPermException *self = [ComYahooAndroidSqliteSQLiteAccessPermException alloc];
  ComYahooAndroidSqliteSQLiteAccessPermException_initWithNSString_(self, error);
  return self;
}

ComYahooAndroidSqliteSQLiteAccessPermException *create_ComYahooAndroidSqliteSQLiteAccessPermException_initWithNSString_(NSString *error) {
  return new_ComYahooAndroidSqliteSQLiteAccessPermException_initWithNSString_(error);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComYahooAndroidSqliteSQLiteAccessPermException)
