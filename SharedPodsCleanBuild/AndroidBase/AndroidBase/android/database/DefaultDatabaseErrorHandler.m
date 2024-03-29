//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/androidbase/AndroidBase/lib/src/main/java/android/database/DefaultDatabaseErrorHandler.java
//

#include "J2ObjC_source.h"
#include "android/database/DefaultDatabaseErrorHandler.h"
#include "android/database/sqlite/SQLiteDatabase.h"
#include "android/database/sqlite/SQLiteException.h"
#include "android/util/Log.h"
#include "android/util/Pair.h"
#include "java/io/File.h"
#include "java/lang/Exception.h"
#include "java/util/List.h"

@interface AndroidDatabaseDefaultDatabaseErrorHandler ()

- (void)deleteDatabaseFileWithNSString:(NSString *)fileName;

@end

inline NSString *AndroidDatabaseDefaultDatabaseErrorHandler_get_TAG();
static NSString *AndroidDatabaseDefaultDatabaseErrorHandler_TAG = @"DefaultDatabaseErrorHan";
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidDatabaseDefaultDatabaseErrorHandler, TAG, NSString *)

__attribute__((unused)) static void AndroidDatabaseDefaultDatabaseErrorHandler_deleteDatabaseFileWithNSString_(AndroidDatabaseDefaultDatabaseErrorHandler *self, NSString *fileName);

@implementation AndroidDatabaseDefaultDatabaseErrorHandler

- (void)onCorruptionWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)dbObj {
  AndroidUtilLog_eWithNSString_withNSString_(AndroidDatabaseDefaultDatabaseErrorHandler_TAG, JreStrcat("$$", @"Corruption reported by sqlite on database: ", [((AndroidDatabaseSqliteSQLiteDatabase *) nil_chk(dbObj)) getPath]));
  if (![dbObj isOpen]) {
    AndroidDatabaseDefaultDatabaseErrorHandler_deleteDatabaseFileWithNSString_(self, [dbObj getPath]);
    return;
  }
  id<JavaUtilList> attachedDbs = nil;
  @try {
    @try {
      attachedDbs = [dbObj getAttachedDbs];
    }
    @catch (AndroidDatabaseSqliteSQLiteException *e) {
    }
    @try {
      [dbObj close];
    }
    @catch (AndroidDatabaseSqliteSQLiteException *e) {
    }
  }
  @finally {
    if (attachedDbs != nil) {
      for (AndroidUtilPair * __strong p in attachedDbs) {
        AndroidDatabaseDefaultDatabaseErrorHandler_deleteDatabaseFileWithNSString_(self, ((NSString *) ((AndroidUtilPair *) nil_chk(p))->second_));
      }
    }
    else {
      AndroidDatabaseDefaultDatabaseErrorHandler_deleteDatabaseFileWithNSString_(self, [dbObj getPath]);
    }
  }
}

- (void)deleteDatabaseFileWithNSString:(NSString *)fileName {
  AndroidDatabaseDefaultDatabaseErrorHandler_deleteDatabaseFileWithNSString_(self, fileName);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidDatabaseDefaultDatabaseErrorHandler_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onCorruptionWithAndroidDatabaseSqliteSQLiteDatabase:", "onCorruption", "V", 0x1, NULL, NULL },
    { "deleteDatabaseFileWithNSString:", "deleteDatabaseFile", "V", 0x2, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "TAG", 0x1a, "Ljava.lang.String;", &AndroidDatabaseDefaultDatabaseErrorHandler_TAG, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _AndroidDatabaseDefaultDatabaseErrorHandler = { 2, "DefaultDatabaseErrorHandler", "android.database", NULL, 0x11, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_AndroidDatabaseDefaultDatabaseErrorHandler;
}

@end

void AndroidDatabaseDefaultDatabaseErrorHandler_deleteDatabaseFileWithNSString_(AndroidDatabaseDefaultDatabaseErrorHandler *self, NSString *fileName) {
  if ([((NSString *) nil_chk(fileName)) equalsIgnoreCase:@":memory:"] || ((jint) [((NSString *) nil_chk([fileName trim])) length]) == 0) {
    return;
  }
  AndroidUtilLog_eWithNSString_withNSString_(AndroidDatabaseDefaultDatabaseErrorHandler_TAG, JreStrcat("$$", @"deleting the database file: ", fileName));
  @try {
    AndroidDatabaseSqliteSQLiteDatabase_deleteDatabaseWithJavaIoFile_(new_JavaIoFile_initWithNSString_(fileName));
  }
  @catch (JavaLangException *e) {
    AndroidUtilLog_wWithNSString_withNSString_(AndroidDatabaseDefaultDatabaseErrorHandler_TAG, JreStrcat("$$", @"delete failed: ", [((JavaLangException *) nil_chk(e)) getMessage]));
  }
}

void AndroidDatabaseDefaultDatabaseErrorHandler_init(AndroidDatabaseDefaultDatabaseErrorHandler *self) {
  NSObject_init(self);
}

AndroidDatabaseDefaultDatabaseErrorHandler *new_AndroidDatabaseDefaultDatabaseErrorHandler_init() {
  AndroidDatabaseDefaultDatabaseErrorHandler *self = [AndroidDatabaseDefaultDatabaseErrorHandler alloc];
  AndroidDatabaseDefaultDatabaseErrorHandler_init(self);
  return self;
}

AndroidDatabaseDefaultDatabaseErrorHandler *create_AndroidDatabaseDefaultDatabaseErrorHandler_init() {
  return new_AndroidDatabaseDefaultDatabaseErrorHandler_init();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidDatabaseDefaultDatabaseErrorHandler)
