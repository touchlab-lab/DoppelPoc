//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/squeaky/core/src/main/java/co/touchlab/squeaky/field/types/TimeStampStringType.java
//

#include "J2ObjC_header.h"

#pragma push_macro("CoTouchlabSqueakyFieldTypesTimeStampStringType_INCLUDE_ALL")
#ifdef CoTouchlabSqueakyFieldTypesTimeStampStringType_RESTRICT
#define CoTouchlabSqueakyFieldTypesTimeStampStringType_INCLUDE_ALL 0
#else
#define CoTouchlabSqueakyFieldTypesTimeStampStringType_INCLUDE_ALL 1
#endif
#undef CoTouchlabSqueakyFieldTypesTimeStampStringType_RESTRICT

#if !defined (CoTouchlabSqueakyFieldTypesTimeStampStringType_) && (CoTouchlabSqueakyFieldTypesTimeStampStringType_INCLUDE_ALL || defined(CoTouchlabSqueakyFieldTypesTimeStampStringType_INCLUDE))
#define CoTouchlabSqueakyFieldTypesTimeStampStringType_

#define CoTouchlabSqueakyFieldTypesDateStringType_RESTRICT 1
#define CoTouchlabSqueakyFieldTypesDateStringType_INCLUDE 1
#include "co/touchlab/squeaky/field/types/DateStringType.h"

@class CoTouchlabSqueakyFieldFieldType;
@class CoTouchlabSqueakyFieldSqlType;
@class IOSObjectArray;

@interface CoTouchlabSqueakyFieldTypesTimeStampStringType : CoTouchlabSqueakyFieldTypesDateStringType

#pragma mark Public

+ (CoTouchlabSqueakyFieldTypesTimeStampStringType *)getSingleton;

- (id)javaToSqlArgWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                               withId:(id)javaObject;

- (id)sqlArgToJavaWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                               withId:(id)sqlArg
                                              withInt:(jint)columnPos;

#pragma mark Protected

- (instancetype)initWithCoTouchlabSqueakyFieldSqlType:(CoTouchlabSqueakyFieldSqlType *)sqlType
                                    withIOSClassArray:(IOSObjectArray *)classes;

@end

J2OBJC_STATIC_INIT(CoTouchlabSqueakyFieldTypesTimeStampStringType)

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesTimeStampStringType *CoTouchlabSqueakyFieldTypesTimeStampStringType_getSingleton();

FOUNDATION_EXPORT void CoTouchlabSqueakyFieldTypesTimeStampStringType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldTypesTimeStampStringType *self, CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes);

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesTimeStampStringType *new_CoTouchlabSqueakyFieldTypesTimeStampStringType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesTimeStampStringType *create_CoTouchlabSqueakyFieldTypesTimeStampStringType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabSqueakyFieldTypesTimeStampStringType)

#endif

#pragma pop_macro("CoTouchlabSqueakyFieldTypesTimeStampStringType_INCLUDE_ALL")
