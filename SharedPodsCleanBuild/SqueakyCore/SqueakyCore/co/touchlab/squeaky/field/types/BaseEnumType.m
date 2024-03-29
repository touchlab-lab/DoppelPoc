//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/squeaky/core/src/main/java/co/touchlab/squeaky/field/types/BaseEnumType.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "co/touchlab/squeaky/field/FieldType.h"
#include "co/touchlab/squeaky/field/SqlType.h"
#include "co/touchlab/squeaky/field/types/BaseDataType.h"
#include "co/touchlab/squeaky/field/types/BaseEnumType.h"
#include "java/lang/Enum.h"
#include "java/sql/SQLException.h"

@implementation CoTouchlabSqueakyFieldTypesBaseEnumType

- (instancetype)initWithCoTouchlabSqueakyFieldSqlType:(CoTouchlabSqueakyFieldSqlType *)sqlType
                                    withIOSClassArray:(IOSObjectArray *)classes {
  CoTouchlabSqueakyFieldTypesBaseEnumType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
  return self;
}

- (instancetype)initWithCoTouchlabSqueakyFieldSqlType:(CoTouchlabSqueakyFieldSqlType *)sqlType {
  CoTouchlabSqueakyFieldTypesBaseEnumType_initWithCoTouchlabSqueakyFieldSqlType_(self, sqlType);
  return self;
}

+ (JavaLangEnum *)enumValWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                                      withId:(id)val
                                            withJavaLangEnum:(JavaLangEnum *)enumVal {
  return CoTouchlabSqueakyFieldTypesBaseEnumType_enumValWithCoTouchlabSqueakyFieldFieldType_withId_withJavaLangEnum_(fieldType, val, enumVal);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithCoTouchlabSqueakyFieldSqlType:withIOSClassArray:", "BaseEnumType", NULL, 0x4, NULL, NULL },
    { "initWithCoTouchlabSqueakyFieldSqlType:", "BaseEnumType", NULL, 0x4, NULL, NULL },
    { "enumValWithCoTouchlabSqueakyFieldFieldType:withId:withJavaLangEnum:", "enumVal", "Ljava.lang.Enum;", 0xc, "Ljava.sql.SQLException;", "(Lco/touchlab/squeaky/field/FieldType;Ljava/lang/Object;Ljava/lang/Enum<*>;)Ljava/lang/Enum<*>;" },
  };
  static const J2ObjcClassInfo _CoTouchlabSqueakyFieldTypesBaseEnumType = { 2, "BaseEnumType", "co.touchlab.squeaky.field.types", NULL, 0x401, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_CoTouchlabSqueakyFieldTypesBaseEnumType;
}

@end

void CoTouchlabSqueakyFieldTypesBaseEnumType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldTypesBaseEnumType *self, CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  CoTouchlabSqueakyFieldTypesBaseDataType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
}

void CoTouchlabSqueakyFieldTypesBaseEnumType_initWithCoTouchlabSqueakyFieldSqlType_(CoTouchlabSqueakyFieldTypesBaseEnumType *self, CoTouchlabSqueakyFieldSqlType *sqlType) {
  CoTouchlabSqueakyFieldTypesBaseDataType_initWithCoTouchlabSqueakyFieldSqlType_(self, sqlType);
}

JavaLangEnum *CoTouchlabSqueakyFieldTypesBaseEnumType_enumValWithCoTouchlabSqueakyFieldFieldType_withId_withJavaLangEnum_(CoTouchlabSqueakyFieldFieldType *fieldType, id val, JavaLangEnum *enumVal) {
  CoTouchlabSqueakyFieldTypesBaseEnumType_initialize();
  if (enumVal != nil) {
    return enumVal;
  }
  else {
    @throw new_JavaSqlSQLException_initWithNSString_(JreStrcat("$@$@", @"Cannot get enum value of '", val, @"' for field ", fieldType));
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CoTouchlabSqueakyFieldTypesBaseEnumType)
