//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/squeaky/core/src/main/java/co/touchlab/squeaky/field/types/ByteArrayType.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "android/database/Cursor.h"
#include "co/touchlab/squeaky/field/FieldType.h"
#include "co/touchlab/squeaky/field/SqlType.h"
#include "co/touchlab/squeaky/field/types/BaseDataType.h"
#include "co/touchlab/squeaky/field/types/ByteArrayType.h"
#include "java/sql/SQLException.h"

@interface CoTouchlabSqueakyFieldTypesByteArrayType ()

- (instancetype)init;

@end

inline CoTouchlabSqueakyFieldTypesByteArrayType *CoTouchlabSqueakyFieldTypesByteArrayType_get_singleTon();
static CoTouchlabSqueakyFieldTypesByteArrayType *CoTouchlabSqueakyFieldTypesByteArrayType_singleTon;
J2OBJC_STATIC_FIELD_OBJ_FINAL(CoTouchlabSqueakyFieldTypesByteArrayType, singleTon, CoTouchlabSqueakyFieldTypesByteArrayType *)

__attribute__((unused)) static void CoTouchlabSqueakyFieldTypesByteArrayType_init(CoTouchlabSqueakyFieldTypesByteArrayType *self);

__attribute__((unused)) static CoTouchlabSqueakyFieldTypesByteArrayType *new_CoTouchlabSqueakyFieldTypesByteArrayType_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static CoTouchlabSqueakyFieldTypesByteArrayType *create_CoTouchlabSqueakyFieldTypesByteArrayType_init();

J2OBJC_INITIALIZED_DEFN(CoTouchlabSqueakyFieldTypesByteArrayType)

@implementation CoTouchlabSqueakyFieldTypesByteArrayType

+ (CoTouchlabSqueakyFieldTypesByteArrayType *)getSingleton {
  return CoTouchlabSqueakyFieldTypesByteArrayType_getSingleton();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  CoTouchlabSqueakyFieldTypesByteArrayType_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithCoTouchlabSqueakyFieldSqlType:(CoTouchlabSqueakyFieldSqlType *)sqlType
                                    withIOSClassArray:(IOSObjectArray *)classes {
  CoTouchlabSqueakyFieldTypesByteArrayType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
  return self;
}

- (id)parseDefaultStringWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                               withNSString:(NSString *)defaultStr {
  @throw new_JavaSqlSQLException_initWithNSString_(@"byte[] type cannot have default values");
}

- (id)resultToSqlArgWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                              withAndroidDatabaseCursor:(id<AndroidDatabaseCursor>)results
                                                withInt:(jint)columnPos {
  return [((id<AndroidDatabaseCursor>) nil_chk(results)) getBlobWithInt:columnPos];
}

+ (void)initialize {
  if (self == [CoTouchlabSqueakyFieldTypesByteArrayType class]) {
    CoTouchlabSqueakyFieldTypesByteArrayType_singleTon = new_CoTouchlabSqueakyFieldTypesByteArrayType_init();
    J2OBJC_SET_INITIALIZED(CoTouchlabSqueakyFieldTypesByteArrayType)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getSingleton", NULL, "Lco.touchlab.squeaky.field.types.ByteArrayType;", 0x9, NULL, NULL },
    { "init", "ByteArrayType", NULL, 0x2, NULL, NULL },
    { "initWithCoTouchlabSqueakyFieldSqlType:withIOSClassArray:", "ByteArrayType", NULL, 0x4, NULL, NULL },
    { "parseDefaultStringWithCoTouchlabSqueakyFieldFieldType:withNSString:", "parseDefaultString", "Ljava.lang.Object;", 0x1, "Ljava.sql.SQLException;", NULL },
    { "resultToSqlArgWithCoTouchlabSqueakyFieldFieldType:withAndroidDatabaseCursor:withInt:", "resultToSqlArg", "Ljava.lang.Object;", 0x1, "Ljava.sql.SQLException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "singleTon", "singleTon", 0x1a, "Lco.touchlab.squeaky.field.types.ByteArrayType;", &CoTouchlabSqueakyFieldTypesByteArrayType_singleTon, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _CoTouchlabSqueakyFieldTypesByteArrayType = { 2, "ByteArrayType", "co.touchlab.squeaky.field.types", NULL, 0x1, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_CoTouchlabSqueakyFieldTypesByteArrayType;
}

@end

CoTouchlabSqueakyFieldTypesByteArrayType *CoTouchlabSqueakyFieldTypesByteArrayType_getSingleton() {
  CoTouchlabSqueakyFieldTypesByteArrayType_initialize();
  return CoTouchlabSqueakyFieldTypesByteArrayType_singleTon;
}

void CoTouchlabSqueakyFieldTypesByteArrayType_init(CoTouchlabSqueakyFieldTypesByteArrayType *self) {
  CoTouchlabSqueakyFieldTypesBaseDataType_initWithCoTouchlabSqueakyFieldSqlType_(self, JreLoadEnum(CoTouchlabSqueakyFieldSqlType, BYTE_ARRAY));
}

CoTouchlabSqueakyFieldTypesByteArrayType *new_CoTouchlabSqueakyFieldTypesByteArrayType_init() {
  CoTouchlabSqueakyFieldTypesByteArrayType *self = [CoTouchlabSqueakyFieldTypesByteArrayType alloc];
  CoTouchlabSqueakyFieldTypesByteArrayType_init(self);
  return self;
}

CoTouchlabSqueakyFieldTypesByteArrayType *create_CoTouchlabSqueakyFieldTypesByteArrayType_init() {
  return new_CoTouchlabSqueakyFieldTypesByteArrayType_init();
}

void CoTouchlabSqueakyFieldTypesByteArrayType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldTypesByteArrayType *self, CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  CoTouchlabSqueakyFieldTypesBaseDataType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
}

CoTouchlabSqueakyFieldTypesByteArrayType *new_CoTouchlabSqueakyFieldTypesByteArrayType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  CoTouchlabSqueakyFieldTypesByteArrayType *self = [CoTouchlabSqueakyFieldTypesByteArrayType alloc];
  CoTouchlabSqueakyFieldTypesByteArrayType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
  return self;
}

CoTouchlabSqueakyFieldTypesByteArrayType *create_CoTouchlabSqueakyFieldTypesByteArrayType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  return new_CoTouchlabSqueakyFieldTypesByteArrayType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(sqlType, classes);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CoTouchlabSqueakyFieldTypesByteArrayType)
