//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/squeaky/core/src/main/java/co/touchlab/squeaky/dao/CloseableIterator.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "co/touchlab/squeaky/dao/CloseableIterator.h"
#include "java/sql/SQLException.h"

@interface CoTouchlabSqueakyDaoCloseableIterator : NSObject

@end

@implementation CoTouchlabSqueakyDaoCloseableIterator

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "closeQuietly", NULL, "V", 0x401, NULL, NULL },
    { "moveToNext", NULL, "V", 0x401, NULL, NULL },
    { "first", NULL, "TT;", 0x401, "Ljava.sql.SQLException;", "()TT;" },
    { "previous", NULL, "TT;", 0x401, "Ljava.sql.SQLException;", "()TT;" },
    { "current", NULL, "TT;", 0x401, "Ljava.sql.SQLException;", "()TT;" },
    { "nextThrow", NULL, "TT;", 0x401, "Ljava.sql.SQLException;", "()TT;" },
    { "moveRelativeWithInt:", "moveRelative", "TT;", 0x401, "Ljava.sql.SQLException;", "(I)TT;" },
  };
  static const J2ObjcClassInfo _CoTouchlabSqueakyDaoCloseableIterator = { 2, "CloseableIterator", "co.touchlab.squeaky.dao", NULL, 0x609, 7, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/Iterator<TT;>;Ljava/io/Closeable;" };
  return &_CoTouchlabSqueakyDaoCloseableIterator;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(CoTouchlabSqueakyDaoCloseableIterator)
