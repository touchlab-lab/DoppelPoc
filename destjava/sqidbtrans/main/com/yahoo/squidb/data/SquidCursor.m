//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/squidb/squidb/src/com/yahoo/squidb/data/SquidCursor.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/yahoo/squidb/data/ICursor.h"
#include "com/yahoo/squidb/data/SquidCursor.h"
#include "com/yahoo/squidb/sql/Property.h"
#include "java/lang/Boolean.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/util/List.h"

@class ComYahooSquidbDataSquidCursor_CursorReadingVisitor;

@interface ComYahooSquidbDataSquidCursor () {
 @public
  id<JavaUtilList> fields_;
  id<ComYahooSquidbDataICursor> cursor_;
}

@end

J2OBJC_FIELD_SETTER(ComYahooSquidbDataSquidCursor, fields_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ComYahooSquidbDataSquidCursor, cursor_, id<ComYahooSquidbDataICursor>)

inline ComYahooSquidbDataSquidCursor_CursorReadingVisitor *ComYahooSquidbDataSquidCursor_get_reader();
static ComYahooSquidbDataSquidCursor_CursorReadingVisitor *ComYahooSquidbDataSquidCursor_reader;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComYahooSquidbDataSquidCursor, reader, ComYahooSquidbDataSquidCursor_CursorReadingVisitor *)

@interface ComYahooSquidbDataSquidCursor_CursorReadingVisitor : NSObject < ComYahooSquidbSqlProperty_PropertyVisitor >

- (id)visitDoubleWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property
                                        withId:(ComYahooSquidbDataSquidCursor *)cursor;

- (id)visitIntegerWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property
                                         withId:(ComYahooSquidbDataSquidCursor *)cursor;

- (id)visitLongWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property
                                      withId:(ComYahooSquidbDataSquidCursor *)cursor;

- (id)visitStringWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property
                                        withId:(ComYahooSquidbDataSquidCursor *)cursor;

- (id)visitBooleanWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property
                                         withId:(ComYahooSquidbDataSquidCursor *)cursor;

- (id)visitBlobWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property
                                      withId:(ComYahooSquidbDataSquidCursor *)cursor;

- (jint)columnIndexWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property
               withComYahooSquidbDataSquidCursor:(ComYahooSquidbDataSquidCursor *)cursor;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComYahooSquidbDataSquidCursor_CursorReadingVisitor)

__attribute__((unused)) static jint ComYahooSquidbDataSquidCursor_CursorReadingVisitor_columnIndexWithComYahooSquidbSqlProperty_withComYahooSquidbDataSquidCursor_(ComYahooSquidbDataSquidCursor_CursorReadingVisitor *self, ComYahooSquidbSqlProperty *property, ComYahooSquidbDataSquidCursor *cursor);

__attribute__((unused)) static void ComYahooSquidbDataSquidCursor_CursorReadingVisitor_init(ComYahooSquidbDataSquidCursor_CursorReadingVisitor *self);

__attribute__((unused)) static ComYahooSquidbDataSquidCursor_CursorReadingVisitor *new_ComYahooSquidbDataSquidCursor_CursorReadingVisitor_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComYahooSquidbDataSquidCursor_CursorReadingVisitor *create_ComYahooSquidbDataSquidCursor_CursorReadingVisitor_init();

J2OBJC_TYPE_LITERAL_HEADER(ComYahooSquidbDataSquidCursor_CursorReadingVisitor)

J2OBJC_INITIALIZED_DEFN(ComYahooSquidbDataSquidCursor)

@implementation ComYahooSquidbDataSquidCursor

- (instancetype)initWithComYahooSquidbDataICursor:(id<ComYahooSquidbDataICursor>)cursor
                                 withJavaUtilList:(id<JavaUtilList>)fields {
  ComYahooSquidbDataSquidCursor_initWithComYahooSquidbDataICursor_withJavaUtilList_(self, cursor, fields);
  return self;
}

- (id)getWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property {
  return [((ComYahooSquidbSqlProperty *) nil_chk(property)) acceptWithComYahooSquidbSqlProperty_PropertyVisitor:ComYahooSquidbDataSquidCursor_reader withId:self];
}

- (id<ComYahooSquidbDataICursor>)getCursor {
  return cursor_;
}

- (id<JavaUtilList>)getFields {
  return fields_;
}

- (jint)getCount {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) getCount];
}

- (jint)getPosition {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) getPosition];
}

- (jboolean)moveWithInt:(jint)offset {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) moveWithInt:offset];
}

- (jboolean)moveToPositionWithInt:(jint)position {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) moveToPositionWithInt:position];
}

- (jboolean)moveToFirst {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) moveToFirst];
}

- (jboolean)moveToLast {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) moveToLast];
}

- (jboolean)moveToNext {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) moveToNext];
}

- (jboolean)moveToPrevious {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) moveToPrevious];
}

- (jboolean)isFirst {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) isFirst];
}

- (jboolean)isLast {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) isLast];
}

- (jboolean)isBeforeFirst {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) isBeforeFirst];
}

- (jboolean)isAfterLast {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) isAfterLast];
}

- (jint)getColumnIndexWithNSString:(NSString *)columnName {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) getColumnIndexWithNSString:columnName];
}

- (jint)getColumnIndexOrThrowWithNSString:(NSString *)columnName {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) getColumnIndexOrThrowWithNSString:columnName];
}

- (NSString *)getColumnNameWithInt:(jint)columnIndex {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) getColumnNameWithInt:columnIndex];
}

- (IOSObjectArray *)getColumnNames {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) getColumnNames];
}

- (jint)getColumnCount {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) getColumnCount];
}

- (IOSByteArray *)getBlobWithInt:(jint)columnIndex {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) getBlobWithInt:columnIndex];
}

- (NSString *)getStringWithInt:(jint)columnIndex {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) getStringWithInt:columnIndex];
}

- (jshort)getShortWithInt:(jint)columnIndex {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) getShortWithInt:columnIndex];
}

- (jint)getIntWithInt:(jint)columnIndex {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) getIntWithInt:columnIndex];
}

- (jlong)getLongWithInt:(jint)columnIndex {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) getLongWithInt:columnIndex];
}

- (jfloat)getFloatWithInt:(jint)columnIndex {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) getFloatWithInt:columnIndex];
}

- (jdouble)getDoubleWithInt:(jint)columnIndex {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) getDoubleWithInt:columnIndex];
}

- (jint)getTypeWithInt:(jint)columnIndex {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) getTypeWithInt:columnIndex];
}

- (jboolean)isNullWithInt:(jint)columnIndex {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) isNullWithInt:columnIndex];
}

- (void)close {
  [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) close];
}

- (jboolean)isClosed {
  return [((id<ComYahooSquidbDataICursor>) nil_chk(cursor_)) isClosed];
}

+ (void)initialize {
  if (self == [ComYahooSquidbDataSquidCursor class]) {
    ComYahooSquidbDataSquidCursor_reader = new_ComYahooSquidbDataSquidCursor_CursorReadingVisitor_init();
    J2OBJC_SET_INITIALIZED(ComYahooSquidbDataSquidCursor)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComYahooSquidbDataICursor:withJavaUtilList:", "SquidCursor", NULL, 0x1, NULL, "(Lcom/yahoo/squidb/data/ICursor;Ljava/util/List<+Lcom/yahoo/squidb/sql/Field<*>;>;)V" },
    { "getWithComYahooSquidbSqlProperty:", "get", "TPROPERTY_TYPE;", 0x1, NULL, "<PROPERTY_TYPE:Ljava/lang/Object;>(Lcom/yahoo/squidb/sql/Property<TPROPERTY_TYPE;>;)TPROPERTY_TYPE;" },
    { "getCursor", NULL, "Lcom.yahoo.squidb.data.ICursor;", 0x1, NULL, NULL },
    { "getFields", NULL, "Ljava.util.List;", 0x1, NULL, "()Ljava/util/List<+Lcom/yahoo/squidb/sql/Field<*>;>;" },
    { "getCount", NULL, "I", 0x1, NULL, NULL },
    { "getPosition", NULL, "I", 0x1, NULL, NULL },
    { "moveWithInt:", "move", "Z", 0x1, NULL, NULL },
    { "moveToPositionWithInt:", "moveToPosition", "Z", 0x1, NULL, NULL },
    { "moveToFirst", NULL, "Z", 0x1, NULL, NULL },
    { "moveToLast", NULL, "Z", 0x1, NULL, NULL },
    { "moveToNext", NULL, "Z", 0x1, NULL, NULL },
    { "moveToPrevious", NULL, "Z", 0x1, NULL, NULL },
    { "isFirst", NULL, "Z", 0x1, NULL, NULL },
    { "isLast", NULL, "Z", 0x1, NULL, NULL },
    { "isBeforeFirst", NULL, "Z", 0x1, NULL, NULL },
    { "isAfterLast", NULL, "Z", 0x1, NULL, NULL },
    { "getColumnIndexWithNSString:", "getColumnIndex", "I", 0x1, NULL, NULL },
    { "getColumnIndexOrThrowWithNSString:", "getColumnIndexOrThrow", "I", 0x1, "Ljava.lang.IllegalArgumentException;", NULL },
    { "getColumnNameWithInt:", "getColumnName", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getColumnNames", NULL, "[Ljava.lang.String;", 0x1, NULL, NULL },
    { "getColumnCount", NULL, "I", 0x1, NULL, NULL },
    { "getBlobWithInt:", "getBlob", "[B", 0x1, NULL, NULL },
    { "getStringWithInt:", "getString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getShortWithInt:", "getShort", "S", 0x1, NULL, NULL },
    { "getIntWithInt:", "getInt", "I", 0x1, NULL, NULL },
    { "getLongWithInt:", "getLong", "J", 0x1, NULL, NULL },
    { "getFloatWithInt:", "getFloat", "F", 0x1, NULL, NULL },
    { "getDoubleWithInt:", "getDouble", "D", 0x1, NULL, NULL },
    { "getTypeWithInt:", "getType", "I", 0x1, NULL, NULL },
    { "isNullWithInt:", "isNull", "Z", 0x1, NULL, NULL },
    { "close", NULL, "V", 0x1, NULL, NULL },
    { "isClosed", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "fields_", NULL, 0x12, "Ljava.util.List;", NULL, "Ljava/util/List<+Lcom/yahoo/squidb/sql/Field<*>;>;", .constantValue.asLong = 0 },
    { "reader", "reader", 0x1a, "Lcom.yahoo.squidb.data.SquidCursor$CursorReadingVisitor;", &ComYahooSquidbDataSquidCursor_reader, NULL, .constantValue.asLong = 0 },
    { "cursor_", NULL, 0x12, "Lcom.yahoo.squidb.data.ICursor;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lcom.yahoo.squidb.data.SquidCursor$CursorReadingVisitor;"};
  static const J2ObjcClassInfo _ComYahooSquidbDataSquidCursor = { 2, "SquidCursor", "com.yahoo.squidb.data", NULL, 0x1, 32, methods, 3, fields, 0, NULL, 1, inner_classes, NULL, "<TYPE:Lcom/yahoo/squidb/data/AbstractModel;>Ljava/lang/Object;Lcom/yahoo/squidb/data/ICursor;" };
  return &_ComYahooSquidbDataSquidCursor;
}

@end

void ComYahooSquidbDataSquidCursor_initWithComYahooSquidbDataICursor_withJavaUtilList_(ComYahooSquidbDataSquidCursor *self, id<ComYahooSquidbDataICursor> cursor, id<JavaUtilList> fields) {
  NSObject_init(self);
  self->cursor_ = cursor;
  self->fields_ = fields;
}

ComYahooSquidbDataSquidCursor *new_ComYahooSquidbDataSquidCursor_initWithComYahooSquidbDataICursor_withJavaUtilList_(id<ComYahooSquidbDataICursor> cursor, id<JavaUtilList> fields) {
  ComYahooSquidbDataSquidCursor *self = [ComYahooSquidbDataSquidCursor alloc];
  ComYahooSquidbDataSquidCursor_initWithComYahooSquidbDataICursor_withJavaUtilList_(self, cursor, fields);
  return self;
}

ComYahooSquidbDataSquidCursor *create_ComYahooSquidbDataSquidCursor_initWithComYahooSquidbDataICursor_withJavaUtilList_(id<ComYahooSquidbDataICursor> cursor, id<JavaUtilList> fields) {
  return new_ComYahooSquidbDataSquidCursor_initWithComYahooSquidbDataICursor_withJavaUtilList_(cursor, fields);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComYahooSquidbDataSquidCursor)

@implementation ComYahooSquidbDataSquidCursor_CursorReadingVisitor

- (id)visitDoubleWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property
                                        withId:(ComYahooSquidbDataSquidCursor *)cursor {
  jint column = ComYahooSquidbDataSquidCursor_CursorReadingVisitor_columnIndexWithComYahooSquidbSqlProperty_withComYahooSquidbDataSquidCursor_(self, property, cursor);
  if ([((ComYahooSquidbDataSquidCursor *) nil_chk(cursor)) isNullWithInt:column]) {
    return nil;
  }
  return JavaLangDouble_valueOfWithDouble_([cursor getDoubleWithInt:column]);
}

- (id)visitIntegerWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property
                                         withId:(ComYahooSquidbDataSquidCursor *)cursor {
  jint column = ComYahooSquidbDataSquidCursor_CursorReadingVisitor_columnIndexWithComYahooSquidbSqlProperty_withComYahooSquidbDataSquidCursor_(self, property, cursor);
  if ([((ComYahooSquidbDataSquidCursor *) nil_chk(cursor)) isNullWithInt:column]) {
    return nil;
  }
  return JavaLangInteger_valueOfWithInt_([cursor getIntWithInt:column]);
}

- (id)visitLongWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property
                                      withId:(ComYahooSquidbDataSquidCursor *)cursor {
  jint column = ComYahooSquidbDataSquidCursor_CursorReadingVisitor_columnIndexWithComYahooSquidbSqlProperty_withComYahooSquidbDataSquidCursor_(self, property, cursor);
  if ([((ComYahooSquidbDataSquidCursor *) nil_chk(cursor)) isNullWithInt:column]) {
    return nil;
  }
  return JavaLangLong_valueOfWithLong_([cursor getLongWithInt:column]);
}

- (id)visitStringWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property
                                        withId:(ComYahooSquidbDataSquidCursor *)cursor {
  jint column = ComYahooSquidbDataSquidCursor_CursorReadingVisitor_columnIndexWithComYahooSquidbSqlProperty_withComYahooSquidbDataSquidCursor_(self, property, cursor);
  if ([((ComYahooSquidbDataSquidCursor *) nil_chk(cursor)) isNullWithInt:column]) {
    return nil;
  }
  return [cursor getStringWithInt:column];
}

- (id)visitBooleanWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property
                                         withId:(ComYahooSquidbDataSquidCursor *)cursor {
  jint column = ComYahooSquidbDataSquidCursor_CursorReadingVisitor_columnIndexWithComYahooSquidbSqlProperty_withComYahooSquidbDataSquidCursor_(self, property, cursor);
  if ([((ComYahooSquidbDataSquidCursor *) nil_chk(cursor)) isNullWithInt:column]) {
    return nil;
  }
  jint value = [cursor getIntWithInt:column];
  return JavaLangBoolean_valueOfWithBoolean_(value != 0);
}

- (id)visitBlobWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property
                                      withId:(ComYahooSquidbDataSquidCursor *)cursor {
  jint column = ComYahooSquidbDataSquidCursor_CursorReadingVisitor_columnIndexWithComYahooSquidbSqlProperty_withComYahooSquidbDataSquidCursor_(self, property, cursor);
  if ([((ComYahooSquidbDataSquidCursor *) nil_chk(cursor)) isNullWithInt:column]) {
    return nil;
  }
  return [cursor getBlobWithInt:column];
}

- (jint)columnIndexWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property
               withComYahooSquidbDataSquidCursor:(ComYahooSquidbDataSquidCursor *)cursor {
  return ComYahooSquidbDataSquidCursor_CursorReadingVisitor_columnIndexWithComYahooSquidbSqlProperty_withComYahooSquidbDataSquidCursor_(self, property, cursor);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComYahooSquidbDataSquidCursor_CursorReadingVisitor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "visitDoubleWithComYahooSquidbSqlProperty:withId:", "visitDouble", "Ljava.lang.Object;", 0x1, NULL, "(Lcom/yahoo/squidb/sql/Property<Ljava/lang/Double;>;Lcom/yahoo/squidb/data/SquidCursor<*>;)Ljava/lang/Object;" },
    { "visitIntegerWithComYahooSquidbSqlProperty:withId:", "visitInteger", "Ljava.lang.Object;", 0x1, NULL, "(Lcom/yahoo/squidb/sql/Property<Ljava/lang/Integer;>;Lcom/yahoo/squidb/data/SquidCursor<*>;)Ljava/lang/Object;" },
    { "visitLongWithComYahooSquidbSqlProperty:withId:", "visitLong", "Ljava.lang.Object;", 0x1, NULL, "(Lcom/yahoo/squidb/sql/Property<Ljava/lang/Long;>;Lcom/yahoo/squidb/data/SquidCursor<*>;)Ljava/lang/Object;" },
    { "visitStringWithComYahooSquidbSqlProperty:withId:", "visitString", "Ljava.lang.Object;", 0x1, NULL, "(Lcom/yahoo/squidb/sql/Property<Ljava/lang/String;>;Lcom/yahoo/squidb/data/SquidCursor<*>;)Ljava/lang/Object;" },
    { "visitBooleanWithComYahooSquidbSqlProperty:withId:", "visitBoolean", "Ljava.lang.Object;", 0x1, NULL, "(Lcom/yahoo/squidb/sql/Property<Ljava/lang/Boolean;>;Lcom/yahoo/squidb/data/SquidCursor<*>;)Ljava/lang/Object;" },
    { "visitBlobWithComYahooSquidbSqlProperty:withId:", "visitBlob", "Ljava.lang.Object;", 0x1, NULL, "(Lcom/yahoo/squidb/sql/Property<L[B;>;Lcom/yahoo/squidb/data/SquidCursor<*>;)Ljava/lang/Object;" },
    { "columnIndexWithComYahooSquidbSqlProperty:withComYahooSquidbDataSquidCursor:", "columnIndex", "I", 0x2, NULL, "(Lcom/yahoo/squidb/sql/Property<*>;Lcom/yahoo/squidb/data/SquidCursor<*>;)I" },
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcClassInfo _ComYahooSquidbDataSquidCursor_CursorReadingVisitor = { 2, "CursorReadingVisitor", "com.yahoo.squidb.data", "SquidCursor", 0xa, 8, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Lcom/yahoo/squidb/sql/Property$PropertyVisitor<Ljava/lang/Object;Lcom/yahoo/squidb/data/SquidCursor<*>;>;" };
  return &_ComYahooSquidbDataSquidCursor_CursorReadingVisitor;
}

@end

jint ComYahooSquidbDataSquidCursor_CursorReadingVisitor_columnIndexWithComYahooSquidbSqlProperty_withComYahooSquidbDataSquidCursor_(ComYahooSquidbDataSquidCursor_CursorReadingVisitor *self, ComYahooSquidbSqlProperty *property, ComYahooSquidbDataSquidCursor *cursor) {
  return [((ComYahooSquidbDataSquidCursor *) nil_chk(cursor)) getColumnIndexOrThrowWithNSString:[((ComYahooSquidbSqlProperty *) nil_chk(property)) getName]];
}

void ComYahooSquidbDataSquidCursor_CursorReadingVisitor_init(ComYahooSquidbDataSquidCursor_CursorReadingVisitor *self) {
  NSObject_init(self);
}

ComYahooSquidbDataSquidCursor_CursorReadingVisitor *new_ComYahooSquidbDataSquidCursor_CursorReadingVisitor_init() {
  ComYahooSquidbDataSquidCursor_CursorReadingVisitor *self = [ComYahooSquidbDataSquidCursor_CursorReadingVisitor alloc];
  ComYahooSquidbDataSquidCursor_CursorReadingVisitor_init(self);
  return self;
}

ComYahooSquidbDataSquidCursor_CursorReadingVisitor *create_ComYahooSquidbDataSquidCursor_CursorReadingVisitor_init() {
  return new_ComYahooSquidbDataSquidCursor_CursorReadingVisitor_init();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComYahooSquidbDataSquidCursor_CursorReadingVisitor)
