//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/squeaky/core/src/main/java/co/touchlab/squeaky/dao/Query.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "co/touchlab/squeaky/dao/Query.h"
#include "java/sql/SQLException.h"

@interface CoTouchlabSqueakyDaoQuery : NSObject

@end

@implementation CoTouchlabSqueakyDaoQuery

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getFromStatementWithBoolean:", "getFromStatement", "Ljava.lang.String;", 0x401, "Ljava.sql.SQLException;", NULL },
    { "getWhereStatementWithBoolean:", "getWhereStatement", "Ljava.lang.String;", 0x401, "Ljava.sql.SQLException;", NULL },
    { "getParameters", NULL, "[Ljava.lang.String;", 0x401, "Ljava.sql.SQLException;", NULL },
  };
  static const J2ObjcClassInfo _CoTouchlabSqueakyDaoQuery = { 2, "Query", "co.touchlab.squeaky.dao", NULL, 0x609, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_CoTouchlabSqueakyDaoQuery;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(CoTouchlabSqueakyDaoQuery)
