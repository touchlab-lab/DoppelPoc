//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/squidb/squidb-ios/src/com/yahoo/android/sqlite/StaleDataException.java
//

#include "J2ObjC_source.h"
#include "com/yahoo/android/sqlite/StaleDataException.h"
#include "java/lang/RuntimeException.h"

@implementation ComYahooAndroidSqliteStaleDataException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComYahooAndroidSqliteStaleDataException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithNSString:(NSString *)description_ {
  ComYahooAndroidSqliteStaleDataException_initWithNSString_(self, description_);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "StaleDataException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:", "StaleDataException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _ComYahooAndroidSqliteStaleDataException = { 2, "StaleDataException", "com.yahoo.android.sqlite", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComYahooAndroidSqliteStaleDataException;
}

@end

void ComYahooAndroidSqliteStaleDataException_init(ComYahooAndroidSqliteStaleDataException *self) {
  JavaLangRuntimeException_init(self);
}

ComYahooAndroidSqliteStaleDataException *new_ComYahooAndroidSqliteStaleDataException_init() {
  ComYahooAndroidSqliteStaleDataException *self = [ComYahooAndroidSqliteStaleDataException alloc];
  ComYahooAndroidSqliteStaleDataException_init(self);
  return self;
}

ComYahooAndroidSqliteStaleDataException *create_ComYahooAndroidSqliteStaleDataException_init() {
  return new_ComYahooAndroidSqliteStaleDataException_init();
}

void ComYahooAndroidSqliteStaleDataException_initWithNSString_(ComYahooAndroidSqliteStaleDataException *self, NSString *description_) {
  JavaLangRuntimeException_initWithNSString_(self, description_);
}

ComYahooAndroidSqliteStaleDataException *new_ComYahooAndroidSqliteStaleDataException_initWithNSString_(NSString *description_) {
  ComYahooAndroidSqliteStaleDataException *self = [ComYahooAndroidSqliteStaleDataException alloc];
  ComYahooAndroidSqliteStaleDataException_initWithNSString_(self, description_);
  return self;
}

ComYahooAndroidSqliteStaleDataException *create_ComYahooAndroidSqliteStaleDataException_initWithNSString_(NSString *description_) {
  return new_ComYahooAndroidSqliteStaleDataException_initWithNSString_(description_);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComYahooAndroidSqliteStaleDataException)
