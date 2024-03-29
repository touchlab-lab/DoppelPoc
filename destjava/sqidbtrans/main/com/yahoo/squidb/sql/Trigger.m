//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/squidb/squidb/src/com/yahoo/squidb/sql/Trigger.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/yahoo/squidb/data/TableModel.h"
#include "com/yahoo/squidb/sql/CompilableWithArguments.h"
#include "com/yahoo/squidb/sql/CompiledStatement.h"
#include "com/yahoo/squidb/sql/Criterion.h"
#include "com/yahoo/squidb/sql/DBObject.h"
#include "com/yahoo/squidb/sql/Property.h"
#include "com/yahoo/squidb/sql/SqlBuilder.h"
#include "com/yahoo/squidb/sql/SqlStatement.h"
#include "com/yahoo/squidb/sql/SqlTable.h"
#include "com/yahoo/squidb/sql/Table.h"
#include "com/yahoo/squidb/sql/TableStatement.h"
#include "com/yahoo/squidb/sql/Trigger.h"
#include "com/yahoo/squidb/sql/View.h"
#include "com/yahoo/squidb/utility/SquidUtilities.h"
#include "com/yahoo/squidb/utility/VersionCode.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/List.h"

@class ComYahooSquidbSqlTrigger_TriggerEvent;
@class ComYahooSquidbSqlTrigger_TriggerType;

@interface ComYahooSquidbSqlTrigger () {
 @public
  ComYahooSquidbSqlSqlTable *table_;
  ComYahooSquidbSqlTrigger_TriggerType *triggerType_;
  ComYahooSquidbSqlTrigger_TriggerEvent *triggerEvent_;
  jboolean isTemp_;
  id<JavaUtilList> columns_;
  id<JavaUtilList> criterions_;
  id<JavaUtilList> statements_;
}

- (ComYahooSquidbSqlTrigger *)deleteOnTableWithComYahooSquidbSqlSqlTable:(ComYahooSquidbSqlSqlTable *)table;

- (ComYahooSquidbSqlTrigger *)insertOnTableWithComYahooSquidbSqlSqlTable:(ComYahooSquidbSqlSqlTable *)table;

- (ComYahooSquidbSqlTrigger *)updateOnTableWithComYahooSquidbSqlSqlTable:(ComYahooSquidbSqlSqlTable *)table
                                      withComYahooSquidbSqlPropertyArray:(IOSObjectArray *)columns;

- (void)assertNoTriggerEvent;

- (void)assertTriggerEvent;

- (void)assertStatements;

- (void)visitCreateTriggerWithJavaLangStringBuilder:(JavaLangStringBuilder *)sql;

- (void)visitTriggerTypeWithJavaLangStringBuilder:(JavaLangStringBuilder *)sql;

- (void)visitTriggerEventWithJavaLangStringBuilder:(JavaLangStringBuilder *)sql;

- (void)visitWhenWithComYahooSquidbSqlSqlBuilder:(ComYahooSquidbSqlSqlBuilder *)builder
                                     withBoolean:(jboolean)forSqlValidation;

- (void)visitStatementsWithComYahooSquidbSqlSqlBuilder:(ComYahooSquidbSqlSqlBuilder *)builder;

@end

J2OBJC_FIELD_SETTER(ComYahooSquidbSqlTrigger, table_, ComYahooSquidbSqlSqlTable *)
J2OBJC_FIELD_SETTER(ComYahooSquidbSqlTrigger, triggerType_, ComYahooSquidbSqlTrigger_TriggerType *)
J2OBJC_FIELD_SETTER(ComYahooSquidbSqlTrigger, triggerEvent_, ComYahooSquidbSqlTrigger_TriggerEvent *)
J2OBJC_FIELD_SETTER(ComYahooSquidbSqlTrigger, columns_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ComYahooSquidbSqlTrigger, criterions_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(ComYahooSquidbSqlTrigger, statements_, id<JavaUtilList>)

inline ComYahooSquidbSqlTable *ComYahooSquidbSqlTrigger_get_OLD();
static ComYahooSquidbSqlTable *ComYahooSquidbSqlTrigger_OLD;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComYahooSquidbSqlTrigger, OLD, ComYahooSquidbSqlTable *)

inline ComYahooSquidbSqlTable *ComYahooSquidbSqlTrigger_get_NEW();
static ComYahooSquidbSqlTable *ComYahooSquidbSqlTrigger_NEW;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComYahooSquidbSqlTrigger, NEW, ComYahooSquidbSqlTable *)

__attribute__((unused)) static ComYahooSquidbSqlTrigger *ComYahooSquidbSqlTrigger_deleteOnTableWithComYahooSquidbSqlSqlTable_(ComYahooSquidbSqlTrigger *self, ComYahooSquidbSqlSqlTable *table);

__attribute__((unused)) static ComYahooSquidbSqlTrigger *ComYahooSquidbSqlTrigger_insertOnTableWithComYahooSquidbSqlSqlTable_(ComYahooSquidbSqlTrigger *self, ComYahooSquidbSqlSqlTable *table);

__attribute__((unused)) static ComYahooSquidbSqlTrigger *ComYahooSquidbSqlTrigger_updateOnTableWithComYahooSquidbSqlSqlTable_withComYahooSquidbSqlPropertyArray_(ComYahooSquidbSqlTrigger *self, ComYahooSquidbSqlSqlTable *table, IOSObjectArray *columns);

__attribute__((unused)) static void ComYahooSquidbSqlTrigger_assertNoTriggerEvent(ComYahooSquidbSqlTrigger *self);

__attribute__((unused)) static void ComYahooSquidbSqlTrigger_assertTriggerEvent(ComYahooSquidbSqlTrigger *self);

__attribute__((unused)) static void ComYahooSquidbSqlTrigger_assertStatements(ComYahooSquidbSqlTrigger *self);

__attribute__((unused)) static void ComYahooSquidbSqlTrigger_visitCreateTriggerWithJavaLangStringBuilder_(ComYahooSquidbSqlTrigger *self, JavaLangStringBuilder *sql);

__attribute__((unused)) static void ComYahooSquidbSqlTrigger_visitTriggerTypeWithJavaLangStringBuilder_(ComYahooSquidbSqlTrigger *self, JavaLangStringBuilder *sql);

__attribute__((unused)) static void ComYahooSquidbSqlTrigger_visitTriggerEventWithJavaLangStringBuilder_(ComYahooSquidbSqlTrigger *self, JavaLangStringBuilder *sql);

__attribute__((unused)) static void ComYahooSquidbSqlTrigger_visitWhenWithComYahooSquidbSqlSqlBuilder_withBoolean_(ComYahooSquidbSqlTrigger *self, ComYahooSquidbSqlSqlBuilder *builder, jboolean forSqlValidation);

__attribute__((unused)) static void ComYahooSquidbSqlTrigger_visitStatementsWithComYahooSquidbSqlSqlBuilder_(ComYahooSquidbSqlTrigger *self, ComYahooSquidbSqlSqlBuilder *builder);

typedef NS_ENUM(NSUInteger, ComYahooSquidbSqlTrigger_TriggerType_Enum) {
  ComYahooSquidbSqlTrigger_TriggerType_Enum_BEFORE = 0,
  ComYahooSquidbSqlTrigger_TriggerType_Enum_AFTER = 1,
  ComYahooSquidbSqlTrigger_TriggerType_Enum_INSTEAD = 2,
};

@interface ComYahooSquidbSqlTrigger_TriggerType : JavaLangEnum < NSCopying > {
 @public
  NSString *name_TriggerType_;
}

+ (IOSObjectArray *)values;

+ (ComYahooSquidbSqlTrigger_TriggerType *)valueOfWithNSString:(NSString *)name;

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(ComYahooSquidbSqlTrigger_TriggerType)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT ComYahooSquidbSqlTrigger_TriggerType *ComYahooSquidbSqlTrigger_TriggerType_values_[];

inline ComYahooSquidbSqlTrigger_TriggerType *ComYahooSquidbSqlTrigger_TriggerType_get_BEFORE();
J2OBJC_ENUM_CONSTANT(ComYahooSquidbSqlTrigger_TriggerType, BEFORE)

inline ComYahooSquidbSqlTrigger_TriggerType *ComYahooSquidbSqlTrigger_TriggerType_get_AFTER();
J2OBJC_ENUM_CONSTANT(ComYahooSquidbSqlTrigger_TriggerType, AFTER)

inline ComYahooSquidbSqlTrigger_TriggerType *ComYahooSquidbSqlTrigger_TriggerType_get_INSTEAD();
J2OBJC_ENUM_CONSTANT(ComYahooSquidbSqlTrigger_TriggerType, INSTEAD)

J2OBJC_FIELD_SETTER(ComYahooSquidbSqlTrigger_TriggerType, name_TriggerType_, NSString *)

__attribute__((unused)) static void ComYahooSquidbSqlTrigger_TriggerType_initWithNSString_withNSString_withInt_(ComYahooSquidbSqlTrigger_TriggerType *self, NSString *name, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComYahooSquidbSqlTrigger_TriggerType *new_ComYahooSquidbSqlTrigger_TriggerType_initWithNSString_withNSString_withInt_(NSString *name, NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT IOSObjectArray *ComYahooSquidbSqlTrigger_TriggerType_values();

FOUNDATION_EXPORT ComYahooSquidbSqlTrigger_TriggerType *ComYahooSquidbSqlTrigger_TriggerType_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT ComYahooSquidbSqlTrigger_TriggerType *ComYahooSquidbSqlTrigger_TriggerType_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(ComYahooSquidbSqlTrigger_TriggerType)

typedef NS_ENUM(NSUInteger, ComYahooSquidbSqlTrigger_TriggerEvent_Enum) {
  ComYahooSquidbSqlTrigger_TriggerEvent_Enum_DELETE = 0,
  ComYahooSquidbSqlTrigger_TriggerEvent_Enum_INSERT = 1,
  ComYahooSquidbSqlTrigger_TriggerEvent_Enum_UPDATE = 2,
};

@interface ComYahooSquidbSqlTrigger_TriggerEvent : JavaLangEnum < NSCopying >

+ (IOSObjectArray *)values;

+ (ComYahooSquidbSqlTrigger_TriggerEvent *)valueOfWithNSString:(NSString *)name;

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(ComYahooSquidbSqlTrigger_TriggerEvent)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT ComYahooSquidbSqlTrigger_TriggerEvent *ComYahooSquidbSqlTrigger_TriggerEvent_values_[];

inline ComYahooSquidbSqlTrigger_TriggerEvent *ComYahooSquidbSqlTrigger_TriggerEvent_get_DELETE();
J2OBJC_ENUM_CONSTANT(ComYahooSquidbSqlTrigger_TriggerEvent, DELETE)

inline ComYahooSquidbSqlTrigger_TriggerEvent *ComYahooSquidbSqlTrigger_TriggerEvent_get_INSERT();
J2OBJC_ENUM_CONSTANT(ComYahooSquidbSqlTrigger_TriggerEvent, INSERT)

inline ComYahooSquidbSqlTrigger_TriggerEvent *ComYahooSquidbSqlTrigger_TriggerEvent_get_UPDATE();
J2OBJC_ENUM_CONSTANT(ComYahooSquidbSqlTrigger_TriggerEvent, UPDATE)

__attribute__((unused)) static void ComYahooSquidbSqlTrigger_TriggerEvent_initWithNSString_withInt_(ComYahooSquidbSqlTrigger_TriggerEvent *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static ComYahooSquidbSqlTrigger_TriggerEvent *new_ComYahooSquidbSqlTrigger_TriggerEvent_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT IOSObjectArray *ComYahooSquidbSqlTrigger_TriggerEvent_values();

FOUNDATION_EXPORT ComYahooSquidbSqlTrigger_TriggerEvent *ComYahooSquidbSqlTrigger_TriggerEvent_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT ComYahooSquidbSqlTrigger_TriggerEvent *ComYahooSquidbSqlTrigger_TriggerEvent_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(ComYahooSquidbSqlTrigger_TriggerEvent)

J2OBJC_INITIALIZED_DEFN(ComYahooSquidbSqlTrigger)

@implementation ComYahooSquidbSqlTrigger

- (instancetype)initWithNSString:(NSString *)name
withComYahooSquidbSqlTrigger_TriggerType:(ComYahooSquidbSqlTrigger_TriggerType *)triggerType {
  ComYahooSquidbSqlTrigger_initWithNSString_withComYahooSquidbSqlTrigger_TriggerType_(self, name, triggerType);
  return self;
}

+ (ComYahooSquidbSqlTrigger *)beforeWithNSString:(NSString *)name {
  return ComYahooSquidbSqlTrigger_beforeWithNSString_(name);
}

+ (ComYahooSquidbSqlTrigger *)afterWithNSString:(NSString *)name {
  return ComYahooSquidbSqlTrigger_afterWithNSString_(name);
}

+ (ComYahooSquidbSqlTrigger *)insteadOfWithNSString:(NSString *)name {
  return ComYahooSquidbSqlTrigger_insteadOfWithNSString_(name);
}

+ (ComYahooSquidbSqlTrigger *)tempBeforeWithNSString:(NSString *)name {
  return ComYahooSquidbSqlTrigger_tempBeforeWithNSString_(name);
}

+ (ComYahooSquidbSqlTrigger *)tempAfterWithNSString:(NSString *)name {
  return ComYahooSquidbSqlTrigger_tempAfterWithNSString_(name);
}

+ (ComYahooSquidbSqlTrigger *)tempInsteadOfWithNSString:(NSString *)name {
  return ComYahooSquidbSqlTrigger_tempInsteadOfWithNSString_(name);
}

- (ComYahooSquidbSqlTrigger *)deleteOnWithComYahooSquidbSqlTable:(ComYahooSquidbSqlTable *)table {
  return ComYahooSquidbSqlTrigger_deleteOnTableWithComYahooSquidbSqlSqlTable_(self, table);
}

- (ComYahooSquidbSqlTrigger *)deleteOnWithComYahooSquidbSqlView:(ComYahooSquidbSqlView *)view {
  ComYahooSquidbSqlTrigger *result = ComYahooSquidbSqlTrigger_deleteOnTableWithComYahooSquidbSqlSqlTable_(self, view);
  ((ComYahooSquidbSqlTrigger *) nil_chk(result))->triggerType_ = JreLoadEnum(ComYahooSquidbSqlTrigger_TriggerType, INSTEAD);
  return result;
}

- (ComYahooSquidbSqlTrigger *)deleteOnTableWithComYahooSquidbSqlSqlTable:(ComYahooSquidbSqlSqlTable *)table {
  return ComYahooSquidbSqlTrigger_deleteOnTableWithComYahooSquidbSqlSqlTable_(self, table);
}

- (ComYahooSquidbSqlTrigger *)insertOnWithComYahooSquidbSqlTable:(ComYahooSquidbSqlTable *)table {
  return ComYahooSquidbSqlTrigger_insertOnTableWithComYahooSquidbSqlSqlTable_(self, table);
}

- (ComYahooSquidbSqlTrigger *)insertOnWithComYahooSquidbSqlView:(ComYahooSquidbSqlView *)view {
  ComYahooSquidbSqlTrigger *result = ComYahooSquidbSqlTrigger_insertOnTableWithComYahooSquidbSqlSqlTable_(self, view);
  ((ComYahooSquidbSqlTrigger *) nil_chk(result))->triggerType_ = JreLoadEnum(ComYahooSquidbSqlTrigger_TriggerType, INSTEAD);
  return result;
}

- (ComYahooSquidbSqlTrigger *)insertOnTableWithComYahooSquidbSqlSqlTable:(ComYahooSquidbSqlSqlTable *)table {
  return ComYahooSquidbSqlTrigger_insertOnTableWithComYahooSquidbSqlSqlTable_(self, table);
}

- (ComYahooSquidbSqlTrigger *)updateOnWithComYahooSquidbSqlTable:(ComYahooSquidbSqlTable *)table
                              withComYahooSquidbSqlPropertyArray:(IOSObjectArray *)columns {
  return ComYahooSquidbSqlTrigger_updateOnTableWithComYahooSquidbSqlSqlTable_withComYahooSquidbSqlPropertyArray_(self, table, columns);
}

- (ComYahooSquidbSqlTrigger *)updateOnWithComYahooSquidbSqlView:(ComYahooSquidbSqlView *)view
                             withComYahooSquidbSqlPropertyArray:(IOSObjectArray *)columns {
  ComYahooSquidbSqlTrigger *result = ComYahooSquidbSqlTrigger_updateOnTableWithComYahooSquidbSqlSqlTable_withComYahooSquidbSqlPropertyArray_(self, view, columns);
  ((ComYahooSquidbSqlTrigger *) nil_chk(result))->triggerType_ = JreLoadEnum(ComYahooSquidbSqlTrigger_TriggerType, INSTEAD);
  return result;
}

- (ComYahooSquidbSqlTrigger *)updateOnTableWithComYahooSquidbSqlSqlTable:(ComYahooSquidbSqlSqlTable *)table
                                      withComYahooSquidbSqlPropertyArray:(IOSObjectArray *)columns {
  return ComYahooSquidbSqlTrigger_updateOnTableWithComYahooSquidbSqlSqlTable_withComYahooSquidbSqlPropertyArray_(self, table, columns);
}

- (void)assertNoTriggerEvent {
  ComYahooSquidbSqlTrigger_assertNoTriggerEvent(self);
}

- (ComYahooSquidbSqlTrigger *)whenWithComYahooSquidbSqlCriterion:(ComYahooSquidbSqlCriterion *)criterion {
  if (criterion != nil) {
    [((id<JavaUtilList>) nil_chk(criterions_)) addWithId:criterion];
  }
  return self;
}

- (ComYahooSquidbSqlTrigger *)performWithComYahooSquidbSqlTableStatementArray:(IOSObjectArray *)statements {
  JavaUtilCollections_addAllWithJavaUtilCollection_withNSObjectArray_(self->statements_, statements);
  return self;
}

+ (id)oldValueOfWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property {
  return ComYahooSquidbSqlTrigger_oldValueOfWithComYahooSquidbSqlProperty_(property);
}

+ (id)newValueOfWithComYahooSquidbSqlProperty:(ComYahooSquidbSqlProperty *)property {
  return ComYahooSquidbSqlTrigger_newValueOfWithComYahooSquidbSqlProperty_(property);
}

- (ComYahooSquidbSqlCompiledStatement *)compileWithComYahooSquidbUtilityVersionCode:(ComYahooSquidbUtilityVersionCode *)sqliteVersion {
  return new_ComYahooSquidbSqlCompiledStatement_initWithNSString_withNSObjectArray_withBoolean_([self toRawSqlWithComYahooSquidbUtilityVersionCode:sqliteVersion], JreLoadStatic(ComYahooSquidbSqlSqlStatement, EMPTY_ARGS), false);
}

- (void)appendToSqlBuilderWithComYahooSquidbSqlSqlBuilder:(ComYahooSquidbSqlSqlBuilder *)builder
                                              withBoolean:(jboolean)forSqlValidation {
  ComYahooSquidbSqlTrigger_assertTriggerEvent(self);
  ComYahooSquidbSqlTrigger_assertStatements(self);
  ComYahooSquidbSqlTrigger_visitCreateTriggerWithJavaLangStringBuilder_(self, ((ComYahooSquidbSqlSqlBuilder *) nil_chk(builder))->sql_);
  ComYahooSquidbSqlTrigger_visitTriggerTypeWithJavaLangStringBuilder_(self, builder->sql_);
  ComYahooSquidbSqlTrigger_visitTriggerEventWithJavaLangStringBuilder_(self, builder->sql_);
  ComYahooSquidbSqlTrigger_visitWhenWithComYahooSquidbSqlSqlBuilder_withBoolean_(self, builder, forSqlValidation);
  ComYahooSquidbSqlTrigger_visitStatementsWithComYahooSquidbSqlSqlBuilder_(self, builder);
}

- (void)assertTriggerEvent {
  ComYahooSquidbSqlTrigger_assertTriggerEvent(self);
}

- (void)assertStatements {
  ComYahooSquidbSqlTrigger_assertStatements(self);
}

- (void)visitCreateTriggerWithJavaLangStringBuilder:(JavaLangStringBuilder *)sql {
  ComYahooSquidbSqlTrigger_visitCreateTriggerWithJavaLangStringBuilder_(self, sql);
}

- (void)visitTriggerTypeWithJavaLangStringBuilder:(JavaLangStringBuilder *)sql {
  ComYahooSquidbSqlTrigger_visitTriggerTypeWithJavaLangStringBuilder_(self, sql);
}

- (void)visitTriggerEventWithJavaLangStringBuilder:(JavaLangStringBuilder *)sql {
  ComYahooSquidbSqlTrigger_visitTriggerEventWithJavaLangStringBuilder_(self, sql);
}

- (void)visitWhenWithComYahooSquidbSqlSqlBuilder:(ComYahooSquidbSqlSqlBuilder *)builder
                                     withBoolean:(jboolean)forSqlValidation {
  ComYahooSquidbSqlTrigger_visitWhenWithComYahooSquidbSqlSqlBuilder_withBoolean_(self, builder, forSqlValidation);
}

- (void)visitStatementsWithComYahooSquidbSqlSqlBuilder:(ComYahooSquidbSqlSqlBuilder *)builder {
  ComYahooSquidbSqlTrigger_visitStatementsWithComYahooSquidbSqlSqlBuilder_(self, builder);
}

+ (void)initialize {
  if (self == [ComYahooSquidbSqlTrigger class]) {
    ComYahooSquidbSqlTrigger_OLD = new_ComYahooSquidbSqlTable_initWithIOSClass_withComYahooSquidbSqlPropertyArray_withNSString_(ComYahooSquidbDataTableModel_class_(), nil, @"OLD");
    ComYahooSquidbSqlTrigger_NEW = new_ComYahooSquidbSqlTable_initWithIOSClass_withComYahooSquidbSqlPropertyArray_withNSString_(ComYahooSquidbDataTableModel_class_(), nil, @"NEW");
    J2OBJC_SET_INITIALIZED(ComYahooSquidbSqlTrigger)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withComYahooSquidbSqlTrigger_TriggerType:", "Trigger", NULL, 0x4, NULL, NULL },
    { "beforeWithNSString:", "before", "Lcom.yahoo.squidb.sql.Trigger;", 0x9, NULL, NULL },
    { "afterWithNSString:", "after", "Lcom.yahoo.squidb.sql.Trigger;", 0x9, NULL, NULL },
    { "insteadOfWithNSString:", "insteadOf", "Lcom.yahoo.squidb.sql.Trigger;", 0x9, NULL, NULL },
    { "tempBeforeWithNSString:", "tempBefore", "Lcom.yahoo.squidb.sql.Trigger;", 0x9, NULL, NULL },
    { "tempAfterWithNSString:", "tempAfter", "Lcom.yahoo.squidb.sql.Trigger;", 0x9, NULL, NULL },
    { "tempInsteadOfWithNSString:", "tempInsteadOf", "Lcom.yahoo.squidb.sql.Trigger;", 0x9, NULL, NULL },
    { "deleteOnWithComYahooSquidbSqlTable:", "deleteOn", "Lcom.yahoo.squidb.sql.Trigger;", 0x1, NULL, NULL },
    { "deleteOnWithComYahooSquidbSqlView:", "deleteOn", "Lcom.yahoo.squidb.sql.Trigger;", 0x1, NULL, NULL },
    { "deleteOnTableWithComYahooSquidbSqlSqlTable:", "deleteOnTable", "Lcom.yahoo.squidb.sql.Trigger;", 0x2, NULL, "(Lcom/yahoo/squidb/sql/SqlTable<*>;)Lcom/yahoo/squidb/sql/Trigger;" },
    { "insertOnWithComYahooSquidbSqlTable:", "insertOn", "Lcom.yahoo.squidb.sql.Trigger;", 0x1, NULL, NULL },
    { "insertOnWithComYahooSquidbSqlView:", "insertOn", "Lcom.yahoo.squidb.sql.Trigger;", 0x1, NULL, NULL },
    { "insertOnTableWithComYahooSquidbSqlSqlTable:", "insertOnTable", "Lcom.yahoo.squidb.sql.Trigger;", 0x2, NULL, "(Lcom/yahoo/squidb/sql/SqlTable<*>;)Lcom/yahoo/squidb/sql/Trigger;" },
    { "updateOnWithComYahooSquidbSqlTable:withComYahooSquidbSqlPropertyArray:", "updateOn", "Lcom.yahoo.squidb.sql.Trigger;", 0x81, NULL, NULL },
    { "updateOnWithComYahooSquidbSqlView:withComYahooSquidbSqlPropertyArray:", "updateOn", "Lcom.yahoo.squidb.sql.Trigger;", 0x81, NULL, NULL },
    { "updateOnTableWithComYahooSquidbSqlSqlTable:withComYahooSquidbSqlPropertyArray:", "updateOnTable", "Lcom.yahoo.squidb.sql.Trigger;", 0x82, NULL, "(Lcom/yahoo/squidb/sql/SqlTable<*>;[Lcom/yahoo/squidb/sql/Property<*>;)Lcom/yahoo/squidb/sql/Trigger;" },
    { "assertNoTriggerEvent", NULL, "V", 0x2, NULL, NULL },
    { "whenWithComYahooSquidbSqlCriterion:", "when", "Lcom.yahoo.squidb.sql.Trigger;", 0x1, NULL, NULL },
    { "performWithComYahooSquidbSqlTableStatementArray:", "perform", "Lcom.yahoo.squidb.sql.Trigger;", 0x81, NULL, NULL },
    { "oldValueOfWithComYahooSquidbSqlProperty:", "oldValueOf", "TT;", 0x9, NULL, "<T:Lcom/yahoo/squidb/sql/Property<*>;>(TT;)TT;" },
    { "newValueOfWithComYahooSquidbSqlProperty:", "newValueOf", "TT;", 0x9, NULL, "<T:Lcom/yahoo/squidb/sql/Property<*>;>(TT;)TT;" },
    { "compileWithComYahooSquidbUtilityVersionCode:", "compile", "Lcom.yahoo.squidb.sql.CompiledStatement;", 0x1, NULL, NULL },
    { "appendToSqlBuilderWithComYahooSquidbSqlSqlBuilder:withBoolean:", "appendToSqlBuilder", "V", 0x0, NULL, NULL },
    { "assertTriggerEvent", NULL, "V", 0x2, NULL, NULL },
    { "assertStatements", NULL, "V", 0x2, NULL, NULL },
    { "visitCreateTriggerWithJavaLangStringBuilder:", "visitCreateTrigger", "V", 0x2, NULL, NULL },
    { "visitTriggerTypeWithJavaLangStringBuilder:", "visitTriggerType", "V", 0x2, NULL, NULL },
    { "visitTriggerEventWithJavaLangStringBuilder:", "visitTriggerEvent", "V", 0x2, NULL, NULL },
    { "visitWhenWithComYahooSquidbSqlSqlBuilder:withBoolean:", "visitWhen", "V", 0x2, NULL, NULL },
    { "visitStatementsWithComYahooSquidbSqlSqlBuilder:", "visitStatements", "V", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "OLD", "OLD", 0x1a, "Lcom.yahoo.squidb.sql.Table;", &ComYahooSquidbSqlTrigger_OLD, NULL, .constantValue.asLong = 0 },
    { "NEW", "NEW", 0x1a, "Lcom.yahoo.squidb.sql.Table;", &ComYahooSquidbSqlTrigger_NEW, NULL, .constantValue.asLong = 0 },
    { "table_", NULL, 0x2, "Lcom.yahoo.squidb.sql.SqlTable;", NULL, "Lcom/yahoo/squidb/sql/SqlTable<*>;", .constantValue.asLong = 0 },
    { "triggerType_", NULL, 0x2, "Lcom.yahoo.squidb.sql.Trigger$TriggerType;", NULL, NULL, .constantValue.asLong = 0 },
    { "triggerEvent_", NULL, 0x2, "Lcom.yahoo.squidb.sql.Trigger$TriggerEvent;", NULL, NULL, .constantValue.asLong = 0 },
    { "isTemp_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "columns_", NULL, 0x12, "Ljava.util.List;", NULL, "Ljava/util/List<Lcom/yahoo/squidb/sql/Property<*>;>;", .constantValue.asLong = 0 },
    { "criterions_", NULL, 0x12, "Ljava.util.List;", NULL, "Ljava/util/List<Lcom/yahoo/squidb/sql/Criterion;>;", .constantValue.asLong = 0 },
    { "statements_", NULL, 0x12, "Ljava.util.List;", NULL, "Ljava/util/List<Lcom/yahoo/squidb/sql/TableStatement;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lcom.yahoo.squidb.sql.Trigger;"};
  static const char *inner_classes[] = {"Lcom.yahoo.squidb.sql.Trigger$TriggerType;", "Lcom.yahoo.squidb.sql.Trigger$TriggerEvent;"};
  static const J2ObjcClassInfo _ComYahooSquidbSqlTrigger = { 2, "Trigger", "com.yahoo.squidb.sql", NULL, 0x1, 30, methods, 9, fields, 1, superclass_type_args, 2, inner_classes, NULL, "Lcom/yahoo/squidb/sql/DBObject<Lcom/yahoo/squidb/sql/Trigger;>;Lcom/yahoo/squidb/sql/SqlStatement;" };
  return &_ComYahooSquidbSqlTrigger;
}

@end

void ComYahooSquidbSqlTrigger_initWithNSString_withComYahooSquidbSqlTrigger_TriggerType_(ComYahooSquidbSqlTrigger *self, NSString *name, ComYahooSquidbSqlTrigger_TriggerType *triggerType) {
  ComYahooSquidbSqlDBObject_initWithNSString_(self, name);
  self->columns_ = new_JavaUtilArrayList_init();
  self->criterions_ = new_JavaUtilArrayList_init();
  self->statements_ = new_JavaUtilArrayList_init();
  self->triggerType_ = triggerType;
}

ComYahooSquidbSqlTrigger *new_ComYahooSquidbSqlTrigger_initWithNSString_withComYahooSquidbSqlTrigger_TriggerType_(NSString *name, ComYahooSquidbSqlTrigger_TriggerType *triggerType) {
  ComYahooSquidbSqlTrigger *self = [ComYahooSquidbSqlTrigger alloc];
  ComYahooSquidbSqlTrigger_initWithNSString_withComYahooSquidbSqlTrigger_TriggerType_(self, name, triggerType);
  return self;
}

ComYahooSquidbSqlTrigger *create_ComYahooSquidbSqlTrigger_initWithNSString_withComYahooSquidbSqlTrigger_TriggerType_(NSString *name, ComYahooSquidbSqlTrigger_TriggerType *triggerType) {
  return new_ComYahooSquidbSqlTrigger_initWithNSString_withComYahooSquidbSqlTrigger_TriggerType_(name, triggerType);
}

ComYahooSquidbSqlTrigger *ComYahooSquidbSqlTrigger_beforeWithNSString_(NSString *name) {
  ComYahooSquidbSqlTrigger_initialize();
  return new_ComYahooSquidbSqlTrigger_initWithNSString_withComYahooSquidbSqlTrigger_TriggerType_(name, JreLoadEnum(ComYahooSquidbSqlTrigger_TriggerType, BEFORE));
}

ComYahooSquidbSqlTrigger *ComYahooSquidbSqlTrigger_afterWithNSString_(NSString *name) {
  ComYahooSquidbSqlTrigger_initialize();
  return new_ComYahooSquidbSqlTrigger_initWithNSString_withComYahooSquidbSqlTrigger_TriggerType_(name, JreLoadEnum(ComYahooSquidbSqlTrigger_TriggerType, AFTER));
}

ComYahooSquidbSqlTrigger *ComYahooSquidbSqlTrigger_insteadOfWithNSString_(NSString *name) {
  ComYahooSquidbSqlTrigger_initialize();
  return new_ComYahooSquidbSqlTrigger_initWithNSString_withComYahooSquidbSqlTrigger_TriggerType_(name, JreLoadEnum(ComYahooSquidbSqlTrigger_TriggerType, INSTEAD));
}

ComYahooSquidbSqlTrigger *ComYahooSquidbSqlTrigger_tempBeforeWithNSString_(NSString *name) {
  ComYahooSquidbSqlTrigger_initialize();
  ComYahooSquidbSqlTrigger *trigger = ComYahooSquidbSqlTrigger_beforeWithNSString_(name);
  ((ComYahooSquidbSqlTrigger *) nil_chk(trigger))->isTemp_ = true;
  return trigger;
}

ComYahooSquidbSqlTrigger *ComYahooSquidbSqlTrigger_tempAfterWithNSString_(NSString *name) {
  ComYahooSquidbSqlTrigger_initialize();
  ComYahooSquidbSqlTrigger *trigger = ComYahooSquidbSqlTrigger_afterWithNSString_(name);
  ((ComYahooSquidbSqlTrigger *) nil_chk(trigger))->isTemp_ = true;
  return trigger;
}

ComYahooSquidbSqlTrigger *ComYahooSquidbSqlTrigger_tempInsteadOfWithNSString_(NSString *name) {
  ComYahooSquidbSqlTrigger_initialize();
  ComYahooSquidbSqlTrigger *trigger = ComYahooSquidbSqlTrigger_insteadOfWithNSString_(name);
  ((ComYahooSquidbSqlTrigger *) nil_chk(trigger))->isTemp_ = true;
  return trigger;
}

ComYahooSquidbSqlTrigger *ComYahooSquidbSqlTrigger_deleteOnTableWithComYahooSquidbSqlSqlTable_(ComYahooSquidbSqlTrigger *self, ComYahooSquidbSqlSqlTable *table) {
  ComYahooSquidbSqlTrigger_assertNoTriggerEvent(self);
  self->table_ = table;
  self->triggerEvent_ = JreLoadEnum(ComYahooSquidbSqlTrigger_TriggerEvent, DELETE);
  return self;
}

ComYahooSquidbSqlTrigger *ComYahooSquidbSqlTrigger_insertOnTableWithComYahooSquidbSqlSqlTable_(ComYahooSquidbSqlTrigger *self, ComYahooSquidbSqlSqlTable *table) {
  ComYahooSquidbSqlTrigger_assertNoTriggerEvent(self);
  self->table_ = table;
  self->triggerEvent_ = JreLoadEnum(ComYahooSquidbSqlTrigger_TriggerEvent, INSERT);
  return self;
}

ComYahooSquidbSqlTrigger *ComYahooSquidbSqlTrigger_updateOnTableWithComYahooSquidbSqlSqlTable_withComYahooSquidbSqlPropertyArray_(ComYahooSquidbSqlTrigger *self, ComYahooSquidbSqlSqlTable *table, IOSObjectArray *columns) {
  ComYahooSquidbSqlTrigger_assertNoTriggerEvent(self);
  self->table_ = table;
  self->triggerEvent_ = JreLoadEnum(ComYahooSquidbSqlTrigger_TriggerEvent, UPDATE);
  ComYahooSquidbUtilitySquidUtilities_addAllWithJavaUtilCollection_withNSObjectArray_(self->columns_, columns);
  return self;
}

void ComYahooSquidbSqlTrigger_assertNoTriggerEvent(ComYahooSquidbSqlTrigger *self) {
  if (self->triggerEvent_ != nil) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"Trigger event already specified for this trigger.");
  }
}

id ComYahooSquidbSqlTrigger_oldValueOfWithComYahooSquidbSqlProperty_(ComYahooSquidbSqlProperty *property) {
  ComYahooSquidbSqlTrigger_initialize();
  return [property asWithComYahooSquidbSqlSqlTable:ComYahooSquidbSqlTrigger_OLD withNSString:[((ComYahooSquidbSqlProperty *) nil_chk(property)) getExpression]];
}

id ComYahooSquidbSqlTrigger_newValueOfWithComYahooSquidbSqlProperty_(ComYahooSquidbSqlProperty *property) {
  ComYahooSquidbSqlTrigger_initialize();
  return [property asWithComYahooSquidbSqlSqlTable:ComYahooSquidbSqlTrigger_NEW withNSString:[((ComYahooSquidbSqlProperty *) nil_chk(property)) getExpression]];
}

void ComYahooSquidbSqlTrigger_assertTriggerEvent(ComYahooSquidbSqlTrigger *self) {
  if (self->triggerEvent_ == nil) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"No trigger event (ON DELETE, ON INSERT, or ON UPDATE) specified for this trigger.");
  }
}

void ComYahooSquidbSqlTrigger_assertStatements(ComYahooSquidbSqlTrigger *self) {
  if ([((id<JavaUtilList>) nil_chk(self->statements_)) isEmpty]) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"No statements specified for this trigger.");
  }
}

void ComYahooSquidbSqlTrigger_visitCreateTriggerWithJavaLangStringBuilder_(ComYahooSquidbSqlTrigger *self, JavaLangStringBuilder *sql) {
  (void) [((JavaLangStringBuilder *) nil_chk(sql)) appendWithNSString:@"CREATE "];
  if (self->isTemp_) {
    (void) [sql appendWithNSString:@"TEMP "];
  }
  (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sql appendWithNSString:@"TRIGGER IF NOT EXISTS "])) appendWithNSString:[self getExpression]])) appendWithNSString:@" "];
}

void ComYahooSquidbSqlTrigger_visitTriggerTypeWithJavaLangStringBuilder_(ComYahooSquidbSqlTrigger *self, JavaLangStringBuilder *sql) {
  if (self->triggerType_ != nil) {
    (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(sql)) appendWithNSString:self->triggerType_->name_TriggerType_])) appendWithNSString:@" "];
  }
}

void ComYahooSquidbSqlTrigger_visitTriggerEventWithJavaLangStringBuilder_(ComYahooSquidbSqlTrigger *self, JavaLangStringBuilder *sql) {
  (void) [((JavaLangStringBuilder *) nil_chk(sql)) appendWithNSString:[((ComYahooSquidbSqlTrigger_TriggerEvent *) nil_chk(self->triggerEvent_)) name]];
  if (JreLoadEnum(ComYahooSquidbSqlTrigger_TriggerEvent, UPDATE) == self->triggerEvent_ && ![((id<JavaUtilList>) nil_chk(self->columns_)) isEmpty]) {
    (void) [sql appendWithNSString:@" OF "];
    for (ComYahooSquidbSqlProperty * __strong column in self->columns_) {
      (void) [((JavaLangStringBuilder *) nil_chk([sql appendWithNSString:[((ComYahooSquidbSqlProperty *) nil_chk(column)) getExpression]])) appendWithNSString:@","];
    }
    (void) [sql deleteCharAtWithInt:[sql length] - 1];
  }
  (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sql appendWithNSString:@" ON "])) appendWithNSString:[((ComYahooSquidbSqlSqlTable *) nil_chk(self->table_)) getExpression]])) appendWithNSString:@" "];
}

void ComYahooSquidbSqlTrigger_visitWhenWithComYahooSquidbSqlSqlBuilder_withBoolean_(ComYahooSquidbSqlTrigger *self, ComYahooSquidbSqlSqlBuilder *builder, jboolean forSqlValidation) {
  if ([((id<JavaUtilList>) nil_chk(self->criterions_)) isEmpty]) {
    return;
  }
  (void) [((JavaLangStringBuilder *) nil_chk(((ComYahooSquidbSqlSqlBuilder *) nil_chk(builder))->sql_)) appendWithNSString:@"WHEN "];
  [builder appendConcatenatedCompilablesWithJavaUtilList:self->criterions_ withNSString:@" AND " withBoolean:forSqlValidation];
  (void) [builder->sql_ appendWithNSString:@" "];
}

void ComYahooSquidbSqlTrigger_visitStatementsWithComYahooSquidbSqlSqlBuilder_(ComYahooSquidbSqlTrigger *self, ComYahooSquidbSqlSqlBuilder *builder) {
  (void) [((JavaLangStringBuilder *) nil_chk(((ComYahooSquidbSqlSqlBuilder *) nil_chk(builder))->sql_)) appendWithNSString:@"BEGIN "];
  for (jint i = 0; i < [((id<JavaUtilList>) nil_chk(self->statements_)) size]; i++) {
    (void) [((JavaLangStringBuilder *) nil_chk([builder->sql_ appendWithNSString:[((ComYahooSquidbSqlTableStatement *) nil_chk([self->statements_ getWithInt:i])) toRawSqlWithComYahooSquidbUtilityVersionCode:builder->sqliteVersion_]])) appendWithNSString:@"; "];
  }
  (void) [builder->sql_ appendWithNSString:@"END"];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComYahooSquidbSqlTrigger)

J2OBJC_INITIALIZED_DEFN(ComYahooSquidbSqlTrigger_TriggerType)

ComYahooSquidbSqlTrigger_TriggerType *ComYahooSquidbSqlTrigger_TriggerType_values_[3];

@implementation ComYahooSquidbSqlTrigger_TriggerType

+ (IOSObjectArray *)values {
  return ComYahooSquidbSqlTrigger_TriggerType_values();
}

+ (ComYahooSquidbSqlTrigger_TriggerType *)valueOfWithNSString:(NSString *)name {
  return ComYahooSquidbSqlTrigger_TriggerType_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [ComYahooSquidbSqlTrigger_TriggerType class]) {
    JreEnum(ComYahooSquidbSqlTrigger_TriggerType, BEFORE) = new_ComYahooSquidbSqlTrigger_TriggerType_initWithNSString_withNSString_withInt_(@"BEFORE", @"BEFORE", 0);
    JreEnum(ComYahooSquidbSqlTrigger_TriggerType, AFTER) = new_ComYahooSquidbSqlTrigger_TriggerType_initWithNSString_withNSString_withInt_(@"AFTER", @"AFTER", 1);
    JreEnum(ComYahooSquidbSqlTrigger_TriggerType, INSTEAD) = new_ComYahooSquidbSqlTrigger_TriggerType_initWithNSString_withNSString_withInt_(@"INSTEAD OF", @"INSTEAD", 2);
    J2OBJC_SET_INITIALIZED(ComYahooSquidbSqlTrigger_TriggerType)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "BEFORE", "BEFORE", 0x4019, "Lcom.yahoo.squidb.sql.Trigger$TriggerType;", &JreEnum(ComYahooSquidbSqlTrigger_TriggerType, BEFORE), NULL, .constantValue.asLong = 0 },
    { "AFTER", "AFTER", 0x4019, "Lcom.yahoo.squidb.sql.Trigger$TriggerType;", &JreEnum(ComYahooSquidbSqlTrigger_TriggerType, AFTER), NULL, .constantValue.asLong = 0 },
    { "INSTEAD", "INSTEAD", 0x4019, "Lcom.yahoo.squidb.sql.Trigger$TriggerType;", &JreEnum(ComYahooSquidbSqlTrigger_TriggerType, INSTEAD), NULL, .constantValue.asLong = 0 },
    { "name_TriggerType_", "name", 0x10, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lcom.yahoo.squidb.sql.Trigger$TriggerType;"};
  static const J2ObjcClassInfo _ComYahooSquidbSqlTrigger_TriggerType = { 2, "TriggerType", "com.yahoo.squidb.sql", "Trigger", 0x401a, 0, NULL, 4, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lcom/yahoo/squidb/sql/Trigger$TriggerType;>;" };
  return &_ComYahooSquidbSqlTrigger_TriggerType;
}

@end

void ComYahooSquidbSqlTrigger_TriggerType_initWithNSString_withNSString_withInt_(ComYahooSquidbSqlTrigger_TriggerType *self, NSString *name, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  self->name_TriggerType_ = name;
}

ComYahooSquidbSqlTrigger_TriggerType *new_ComYahooSquidbSqlTrigger_TriggerType_initWithNSString_withNSString_withInt_(NSString *name, NSString *__name, jint __ordinal) {
  ComYahooSquidbSqlTrigger_TriggerType *self = [ComYahooSquidbSqlTrigger_TriggerType alloc];
  ComYahooSquidbSqlTrigger_TriggerType_initWithNSString_withNSString_withInt_(self, name, __name, __ordinal);
  return self;
}

IOSObjectArray *ComYahooSquidbSqlTrigger_TriggerType_values() {
  ComYahooSquidbSqlTrigger_TriggerType_initialize();
  return [IOSObjectArray arrayWithObjects:ComYahooSquidbSqlTrigger_TriggerType_values_ count:3 type:ComYahooSquidbSqlTrigger_TriggerType_class_()];
}

ComYahooSquidbSqlTrigger_TriggerType *ComYahooSquidbSqlTrigger_TriggerType_valueOfWithNSString_(NSString *name) {
  ComYahooSquidbSqlTrigger_TriggerType_initialize();
  for (int i = 0; i < 3; i++) {
    ComYahooSquidbSqlTrigger_TriggerType *e = ComYahooSquidbSqlTrigger_TriggerType_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

ComYahooSquidbSqlTrigger_TriggerType *ComYahooSquidbSqlTrigger_TriggerType_fromOrdinal(NSUInteger ordinal) {
  ComYahooSquidbSqlTrigger_TriggerType_initialize();
  if (ordinal >= 3) {
    return nil;
  }
  return ComYahooSquidbSqlTrigger_TriggerType_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComYahooSquidbSqlTrigger_TriggerType)

J2OBJC_INITIALIZED_DEFN(ComYahooSquidbSqlTrigger_TriggerEvent)

ComYahooSquidbSqlTrigger_TriggerEvent *ComYahooSquidbSqlTrigger_TriggerEvent_values_[3];

@implementation ComYahooSquidbSqlTrigger_TriggerEvent

+ (IOSObjectArray *)values {
  return ComYahooSquidbSqlTrigger_TriggerEvent_values();
}

+ (ComYahooSquidbSqlTrigger_TriggerEvent *)valueOfWithNSString:(NSString *)name {
  return ComYahooSquidbSqlTrigger_TriggerEvent_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [ComYahooSquidbSqlTrigger_TriggerEvent class]) {
    JreEnum(ComYahooSquidbSqlTrigger_TriggerEvent, DELETE) = new_ComYahooSquidbSqlTrigger_TriggerEvent_initWithNSString_withInt_(@"DELETE", 0);
    JreEnum(ComYahooSquidbSqlTrigger_TriggerEvent, INSERT) = new_ComYahooSquidbSqlTrigger_TriggerEvent_initWithNSString_withInt_(@"INSERT", 1);
    JreEnum(ComYahooSquidbSqlTrigger_TriggerEvent, UPDATE) = new_ComYahooSquidbSqlTrigger_TriggerEvent_initWithNSString_withInt_(@"UPDATE", 2);
    J2OBJC_SET_INITIALIZED(ComYahooSquidbSqlTrigger_TriggerEvent)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "DELETE", "DELETE", 0x4019, "Lcom.yahoo.squidb.sql.Trigger$TriggerEvent;", &JreEnum(ComYahooSquidbSqlTrigger_TriggerEvent, DELETE), NULL, .constantValue.asLong = 0 },
    { "INSERT", "INSERT", 0x4019, "Lcom.yahoo.squidb.sql.Trigger$TriggerEvent;", &JreEnum(ComYahooSquidbSqlTrigger_TriggerEvent, INSERT), NULL, .constantValue.asLong = 0 },
    { "UPDATE", "UPDATE", 0x4019, "Lcom.yahoo.squidb.sql.Trigger$TriggerEvent;", &JreEnum(ComYahooSquidbSqlTrigger_TriggerEvent, UPDATE), NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lcom.yahoo.squidb.sql.Trigger$TriggerEvent;"};
  static const J2ObjcClassInfo _ComYahooSquidbSqlTrigger_TriggerEvent = { 2, "TriggerEvent", "com.yahoo.squidb.sql", "Trigger", 0x401a, 0, NULL, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lcom/yahoo/squidb/sql/Trigger$TriggerEvent;>;" };
  return &_ComYahooSquidbSqlTrigger_TriggerEvent;
}

@end

void ComYahooSquidbSqlTrigger_TriggerEvent_initWithNSString_withInt_(ComYahooSquidbSqlTrigger_TriggerEvent *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

ComYahooSquidbSqlTrigger_TriggerEvent *new_ComYahooSquidbSqlTrigger_TriggerEvent_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  ComYahooSquidbSqlTrigger_TriggerEvent *self = [ComYahooSquidbSqlTrigger_TriggerEvent alloc];
  ComYahooSquidbSqlTrigger_TriggerEvent_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *ComYahooSquidbSqlTrigger_TriggerEvent_values() {
  ComYahooSquidbSqlTrigger_TriggerEvent_initialize();
  return [IOSObjectArray arrayWithObjects:ComYahooSquidbSqlTrigger_TriggerEvent_values_ count:3 type:ComYahooSquidbSqlTrigger_TriggerEvent_class_()];
}

ComYahooSquidbSqlTrigger_TriggerEvent *ComYahooSquidbSqlTrigger_TriggerEvent_valueOfWithNSString_(NSString *name) {
  ComYahooSquidbSqlTrigger_TriggerEvent_initialize();
  for (int i = 0; i < 3; i++) {
    ComYahooSquidbSqlTrigger_TriggerEvent *e = ComYahooSquidbSqlTrigger_TriggerEvent_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

ComYahooSquidbSqlTrigger_TriggerEvent *ComYahooSquidbSqlTrigger_TriggerEvent_fromOrdinal(NSUInteger ordinal) {
  ComYahooSquidbSqlTrigger_TriggerEvent_initialize();
  if (ordinal >= 3) {
    return nil;
  }
  return ComYahooSquidbSqlTrigger_TriggerEvent_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComYahooSquidbSqlTrigger_TriggerEvent)
