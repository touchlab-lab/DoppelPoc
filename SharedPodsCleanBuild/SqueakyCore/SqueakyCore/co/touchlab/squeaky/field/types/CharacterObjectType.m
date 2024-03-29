//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/squeaky/core/src/main/java/co/touchlab/squeaky/field/types/CharacterObjectType.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "android/database/Cursor.h"
#include "co/touchlab/squeaky/field/FieldType.h"
#include "co/touchlab/squeaky/field/SqlType.h"
#include "co/touchlab/squeaky/field/types/BaseDataType.h"
#include "co/touchlab/squeaky/field/types/CharacterObjectType.h"
#include "java/lang/Character.h"
#include "java/lang/Integer.h"
#include "java/sql/SQLException.h"

@interface CoTouchlabSqueakyFieldTypesCharacterObjectType ()

- (instancetype)init;

@end

inline CoTouchlabSqueakyFieldTypesCharacterObjectType *CoTouchlabSqueakyFieldTypesCharacterObjectType_get_singleTon();
static CoTouchlabSqueakyFieldTypesCharacterObjectType *CoTouchlabSqueakyFieldTypesCharacterObjectType_singleTon;
J2OBJC_STATIC_FIELD_OBJ_FINAL(CoTouchlabSqueakyFieldTypesCharacterObjectType, singleTon, CoTouchlabSqueakyFieldTypesCharacterObjectType *)

__attribute__((unused)) static void CoTouchlabSqueakyFieldTypesCharacterObjectType_init(CoTouchlabSqueakyFieldTypesCharacterObjectType *self);

__attribute__((unused)) static CoTouchlabSqueakyFieldTypesCharacterObjectType *new_CoTouchlabSqueakyFieldTypesCharacterObjectType_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static CoTouchlabSqueakyFieldTypesCharacterObjectType *create_CoTouchlabSqueakyFieldTypesCharacterObjectType_init();

J2OBJC_INITIALIZED_DEFN(CoTouchlabSqueakyFieldTypesCharacterObjectType)

@implementation CoTouchlabSqueakyFieldTypesCharacterObjectType

+ (CoTouchlabSqueakyFieldTypesCharacterObjectType *)getSingleton {
  return CoTouchlabSqueakyFieldTypesCharacterObjectType_getSingleton();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  CoTouchlabSqueakyFieldTypesCharacterObjectType_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithCoTouchlabSqueakyFieldSqlType:(CoTouchlabSqueakyFieldSqlType *)sqlType
                                    withIOSClassArray:(IOSObjectArray *)classes {
  CoTouchlabSqueakyFieldTypesCharacterObjectType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
  return self;
}

- (id)parseDefaultStringWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                               withNSString:(NSString *)defaultStr {
  if (((jint) [((NSString *) nil_chk(defaultStr)) length]) != 1) {
    @throw new_JavaSqlSQLException_initWithNSString_(JreStrcat("$@$$C", @"Problems with field ", fieldType, @", default string to long for Character: '", defaultStr, '\''));
  }
  return JavaLangCharacter_valueOfWithChar_([defaultStr charAtWithInt:0]);
}

- (id)resultToSqlArgWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                              withAndroidDatabaseCursor:(id<AndroidDatabaseCursor>)results
                                                withInt:(jint)columnPos {
  NSString *string = [((id<AndroidDatabaseCursor>) nil_chk(results)) getStringWithInt:columnPos];
  if (string == nil || ((jint) [string length]) == 0) {
    return JavaLangInteger_valueOfWithInt_(0);
  }
  else if (((jint) [string length]) == 1) {
    return JavaLangCharacter_valueOfWithChar_([string charAtWithInt:0]);
  }
  else {
    @throw new_JavaSqlSQLException_initWithNSString_(JreStrcat("$I", @"More than 1 character stored in database column: ", columnPos));
  }
}

+ (void)initialize {
  if (self == [CoTouchlabSqueakyFieldTypesCharacterObjectType class]) {
    CoTouchlabSqueakyFieldTypesCharacterObjectType_singleTon = new_CoTouchlabSqueakyFieldTypesCharacterObjectType_init();
    J2OBJC_SET_INITIALIZED(CoTouchlabSqueakyFieldTypesCharacterObjectType)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getSingleton", NULL, "Lco.touchlab.squeaky.field.types.CharacterObjectType;", 0x9, NULL, NULL },
    { "init", "CharacterObjectType", NULL, 0x2, NULL, NULL },
    { "initWithCoTouchlabSqueakyFieldSqlType:withIOSClassArray:", "CharacterObjectType", NULL, 0x4, NULL, NULL },
    { "parseDefaultStringWithCoTouchlabSqueakyFieldFieldType:withNSString:", "parseDefaultString", "Ljava.lang.Object;", 0x1, "Ljava.sql.SQLException;", NULL },
    { "resultToSqlArgWithCoTouchlabSqueakyFieldFieldType:withAndroidDatabaseCursor:withInt:", "resultToSqlArg", "Ljava.lang.Object;", 0x1, "Ljava.sql.SQLException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "singleTon", "singleTon", 0x1a, "Lco.touchlab.squeaky.field.types.CharacterObjectType;", &CoTouchlabSqueakyFieldTypesCharacterObjectType_singleTon, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _CoTouchlabSqueakyFieldTypesCharacterObjectType = { 2, "CharacterObjectType", "co.touchlab.squeaky.field.types", NULL, 0x1, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_CoTouchlabSqueakyFieldTypesCharacterObjectType;
}

@end

CoTouchlabSqueakyFieldTypesCharacterObjectType *CoTouchlabSqueakyFieldTypesCharacterObjectType_getSingleton() {
  CoTouchlabSqueakyFieldTypesCharacterObjectType_initialize();
  return CoTouchlabSqueakyFieldTypesCharacterObjectType_singleTon;
}

void CoTouchlabSqueakyFieldTypesCharacterObjectType_init(CoTouchlabSqueakyFieldTypesCharacterObjectType *self) {
  CoTouchlabSqueakyFieldTypesBaseDataType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, JreLoadEnum(CoTouchlabSqueakyFieldSqlType, CHAR), [IOSObjectArray newArrayWithObjects:(id[]){ JavaLangCharacter_class_() } count:1 type:IOSClass_class_()]);
}

CoTouchlabSqueakyFieldTypesCharacterObjectType *new_CoTouchlabSqueakyFieldTypesCharacterObjectType_init() {
  CoTouchlabSqueakyFieldTypesCharacterObjectType *self = [CoTouchlabSqueakyFieldTypesCharacterObjectType alloc];
  CoTouchlabSqueakyFieldTypesCharacterObjectType_init(self);
  return self;
}

CoTouchlabSqueakyFieldTypesCharacterObjectType *create_CoTouchlabSqueakyFieldTypesCharacterObjectType_init() {
  return new_CoTouchlabSqueakyFieldTypesCharacterObjectType_init();
}

void CoTouchlabSqueakyFieldTypesCharacterObjectType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldTypesCharacterObjectType *self, CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  CoTouchlabSqueakyFieldTypesBaseDataType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
}

CoTouchlabSqueakyFieldTypesCharacterObjectType *new_CoTouchlabSqueakyFieldTypesCharacterObjectType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  CoTouchlabSqueakyFieldTypesCharacterObjectType *self = [CoTouchlabSqueakyFieldTypesCharacterObjectType alloc];
  CoTouchlabSqueakyFieldTypesCharacterObjectType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
  return self;
}

CoTouchlabSqueakyFieldTypesCharacterObjectType *create_CoTouchlabSqueakyFieldTypesCharacterObjectType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  return new_CoTouchlabSqueakyFieldTypesCharacterObjectType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(sqlType, classes);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CoTouchlabSqueakyFieldTypesCharacterObjectType)
