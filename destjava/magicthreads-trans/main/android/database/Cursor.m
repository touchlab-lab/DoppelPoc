//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/androidbase/AndroidBase/lib/src/main/java/android/database/Cursor.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "android/database/Cursor.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"

@interface AndroidDatabaseCursor : NSObject

@end

@implementation AndroidDatabaseCursor

+ (IOSObjectArray *)__annotations_requery {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getCount", NULL, "I", 0x401, NULL, NULL },
    { "getPosition", NULL, "I", 0x401, NULL, NULL },
    { "moveWithInt:", "move", "Z", 0x401, NULL, NULL },
    { "moveToPositionWithInt:", "moveToPosition", "Z", 0x401, NULL, NULL },
    { "moveToFirst", NULL, "Z", 0x401, NULL, NULL },
    { "moveToLast", NULL, "Z", 0x401, NULL, NULL },
    { "moveToNext", NULL, "Z", 0x401, NULL, NULL },
    { "moveToPrevious", NULL, "Z", 0x401, NULL, NULL },
    { "isFirst", NULL, "Z", 0x401, NULL, NULL },
    { "isLast", NULL, "Z", 0x401, NULL, NULL },
    { "isBeforeFirst", NULL, "Z", 0x401, NULL, NULL },
    { "isAfterLast", NULL, "Z", 0x401, NULL, NULL },
    { "getColumnIndexWithNSString:", "getColumnIndex", "I", 0x401, NULL, NULL },
    { "getColumnIndexOrThrowWithNSString:", "getColumnIndexOrThrow", "I", 0x401, "Ljava.lang.IllegalArgumentException;", NULL },
    { "getColumnNameWithInt:", "getColumnName", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "getColumnNames", NULL, "[Ljava.lang.String;", 0x401, NULL, NULL },
    { "getColumnCount", NULL, "I", 0x401, NULL, NULL },
    { "getBlobWithInt:", "getBlob", "[B", 0x401, NULL, NULL },
    { "getStringWithInt:", "getString", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "copyStringToBufferWithInt:withAndroidDatabaseCharArrayBuffer:", "copyStringToBuffer", "V", 0x401, NULL, NULL },
    { "getShortWithInt:", "getShort", "S", 0x401, NULL, NULL },
    { "getIntWithInt:", "getInt", "I", 0x401, NULL, NULL },
    { "getLongWithInt:", "getLong", "J", 0x401, NULL, NULL },
    { "getFloatWithInt:", "getFloat", "F", 0x401, NULL, NULL },
    { "getDoubleWithInt:", "getDouble", "D", 0x401, NULL, NULL },
    { "getTypeWithInt:", "getType", "I", 0x401, NULL, NULL },
    { "isNullWithInt:", "isNull", "Z", 0x401, NULL, NULL },
    { "deactivate", NULL, "V", 0x401, NULL, NULL },
    { "requery", NULL, "Z", 0x401, NULL, NULL },
    { "close", NULL, "V", 0x401, NULL, NULL },
    { "isClosed", NULL, "Z", 0x401, NULL, NULL },
    { "registerDataSetObserverWithAndroidDatabaseDataSetObserver:", "registerDataSetObserver", "V", 0x401, NULL, NULL },
    { "unregisterDataSetObserverWithAndroidDatabaseDataSetObserver:", "unregisterDataSetObserver", "V", 0x401, NULL, NULL },
    { "getWantsAllOnMoveCalls", NULL, "Z", 0x401, NULL, NULL },
    { "setExtrasWithAndroidOsBundle:", "setExtras", "V", 0x401, NULL, NULL },
    { "getExtras", NULL, "Landroid.os.Bundle;", 0x401, NULL, NULL },
    { "respondWithAndroidOsBundle:", "respond", "Landroid.os.Bundle;", 0x401, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "FIELD_TYPE_NULL", "FIELD_TYPE_NULL", 0x19, "I", NULL, NULL, .constantValue.asInt = AndroidDatabaseCursor_FIELD_TYPE_NULL },
    { "FIELD_TYPE_INTEGER", "FIELD_TYPE_INTEGER", 0x19, "I", NULL, NULL, .constantValue.asInt = AndroidDatabaseCursor_FIELD_TYPE_INTEGER },
    { "FIELD_TYPE_FLOAT", "FIELD_TYPE_FLOAT", 0x19, "I", NULL, NULL, .constantValue.asInt = AndroidDatabaseCursor_FIELD_TYPE_FLOAT },
    { "FIELD_TYPE_STRING", "FIELD_TYPE_STRING", 0x19, "I", NULL, NULL, .constantValue.asInt = AndroidDatabaseCursor_FIELD_TYPE_STRING },
    { "FIELD_TYPE_BLOB", "FIELD_TYPE_BLOB", 0x19, "I", NULL, NULL, .constantValue.asInt = AndroidDatabaseCursor_FIELD_TYPE_BLOB },
  };
  static const J2ObjcClassInfo _AndroidDatabaseCursor = { 2, "Cursor", "android.database", NULL, 0x609, 37, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_AndroidDatabaseCursor;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(AndroidDatabaseCursor)
