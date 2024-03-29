//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/squeaky/core/src/main/java/co/touchlab/squeaky/field/types/FloatType.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "co/touchlab/squeaky/field/SqlType.h"
#include "co/touchlab/squeaky/field/types/FloatObjectType.h"
#include "co/touchlab/squeaky/field/types/FloatType.h"

@interface CoTouchlabSqueakyFieldTypesFloatType ()

- (instancetype)init;

@end

inline CoTouchlabSqueakyFieldTypesFloatType *CoTouchlabSqueakyFieldTypesFloatType_get_singleTon();
static CoTouchlabSqueakyFieldTypesFloatType *CoTouchlabSqueakyFieldTypesFloatType_singleTon;
J2OBJC_STATIC_FIELD_OBJ_FINAL(CoTouchlabSqueakyFieldTypesFloatType, singleTon, CoTouchlabSqueakyFieldTypesFloatType *)

__attribute__((unused)) static void CoTouchlabSqueakyFieldTypesFloatType_init(CoTouchlabSqueakyFieldTypesFloatType *self);

__attribute__((unused)) static CoTouchlabSqueakyFieldTypesFloatType *new_CoTouchlabSqueakyFieldTypesFloatType_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static CoTouchlabSqueakyFieldTypesFloatType *create_CoTouchlabSqueakyFieldTypesFloatType_init();

J2OBJC_INITIALIZED_DEFN(CoTouchlabSqueakyFieldTypesFloatType)

@implementation CoTouchlabSqueakyFieldTypesFloatType

+ (CoTouchlabSqueakyFieldTypesFloatType *)getSingleton {
  return CoTouchlabSqueakyFieldTypesFloatType_getSingleton();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  CoTouchlabSqueakyFieldTypesFloatType_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithCoTouchlabSqueakyFieldSqlType:(CoTouchlabSqueakyFieldSqlType *)sqlType
                                    withIOSClassArray:(IOSObjectArray *)classes {
  CoTouchlabSqueakyFieldTypesFloatType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
  return self;
}

- (jboolean)isPrimitive {
  return true;
}

+ (void)initialize {
  if (self == [CoTouchlabSqueakyFieldTypesFloatType class]) {
    CoTouchlabSqueakyFieldTypesFloatType_singleTon = new_CoTouchlabSqueakyFieldTypesFloatType_init();
    J2OBJC_SET_INITIALIZED(CoTouchlabSqueakyFieldTypesFloatType)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getSingleton", NULL, "Lco.touchlab.squeaky.field.types.FloatType;", 0x9, NULL, NULL },
    { "init", "FloatType", NULL, 0x2, NULL, NULL },
    { "initWithCoTouchlabSqueakyFieldSqlType:withIOSClassArray:", "FloatType", NULL, 0x4, NULL, NULL },
    { "isPrimitive", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "singleTon", "singleTon", 0x1a, "Lco.touchlab.squeaky.field.types.FloatType;", &CoTouchlabSqueakyFieldTypesFloatType_singleTon, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _CoTouchlabSqueakyFieldTypesFloatType = { 2, "FloatType", "co.touchlab.squeaky.field.types", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_CoTouchlabSqueakyFieldTypesFloatType;
}

@end

CoTouchlabSqueakyFieldTypesFloatType *CoTouchlabSqueakyFieldTypesFloatType_getSingleton() {
  CoTouchlabSqueakyFieldTypesFloatType_initialize();
  return CoTouchlabSqueakyFieldTypesFloatType_singleTon;
}

void CoTouchlabSqueakyFieldTypesFloatType_init(CoTouchlabSqueakyFieldTypesFloatType *self) {
  CoTouchlabSqueakyFieldTypesFloatObjectType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, JreLoadEnum(CoTouchlabSqueakyFieldSqlType, FLOAT), [IOSObjectArray newArrayWithObjects:(id[]){ [IOSClass floatClass] } count:1 type:IOSClass_class_()]);
}

CoTouchlabSqueakyFieldTypesFloatType *new_CoTouchlabSqueakyFieldTypesFloatType_init() {
  CoTouchlabSqueakyFieldTypesFloatType *self = [CoTouchlabSqueakyFieldTypesFloatType alloc];
  CoTouchlabSqueakyFieldTypesFloatType_init(self);
  return self;
}

CoTouchlabSqueakyFieldTypesFloatType *create_CoTouchlabSqueakyFieldTypesFloatType_init() {
  return new_CoTouchlabSqueakyFieldTypesFloatType_init();
}

void CoTouchlabSqueakyFieldTypesFloatType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldTypesFloatType *self, CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  CoTouchlabSqueakyFieldTypesFloatObjectType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
}

CoTouchlabSqueakyFieldTypesFloatType *new_CoTouchlabSqueakyFieldTypesFloatType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  CoTouchlabSqueakyFieldTypesFloatType *self = [CoTouchlabSqueakyFieldTypesFloatType alloc];
  CoTouchlabSqueakyFieldTypesFloatType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(self, sqlType, classes);
  return self;
}

CoTouchlabSqueakyFieldTypesFloatType *create_CoTouchlabSqueakyFieldTypesFloatType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) {
  return new_CoTouchlabSqueakyFieldTypesFloatType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(sqlType, classes);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CoTouchlabSqueakyFieldTypesFloatType)
