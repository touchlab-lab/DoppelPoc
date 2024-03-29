//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/squidb/squidb/src/com/yahoo/squidb/sql/ConjunctionCriterion.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/yahoo/squidb/sql/ConjunctionCriterion.h"
#include "com/yahoo/squidb/sql/Criterion.h"
#include "com/yahoo/squidb/sql/Operator.h"
#include "com/yahoo/squidb/sql/SqlBuilder.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/List.h"

@interface ComYahooSquidbSqlConjunctionCriterion () {
 @public
  id<JavaUtilList> criterions_;
}

- (ComYahooSquidbSqlCriterion *)checkOperatorAndAppendCriterionsWithComYahooSquidbSqlOperator:(ComYahooSquidbSqlOperator *)toCheck
                                                               withComYahooSquidbSqlCriterion:(ComYahooSquidbSqlCriterion *)criterion;

@end

J2OBJC_FIELD_SETTER(ComYahooSquidbSqlConjunctionCriterion, criterions_, id<JavaUtilList>)

__attribute__((unused)) static ComYahooSquidbSqlCriterion *ComYahooSquidbSqlConjunctionCriterion_checkOperatorAndAppendCriterionsWithComYahooSquidbSqlOperator_withComYahooSquidbSqlCriterion_(ComYahooSquidbSqlConjunctionCriterion *self, ComYahooSquidbSqlOperator *toCheck, ComYahooSquidbSqlCriterion *criterion);

@implementation ComYahooSquidbSqlConjunctionCriterion

- (instancetype)initWithComYahooSquidbSqlOperator:(ComYahooSquidbSqlOperator *)operator_
                   withComYahooSquidbSqlCriterion:(ComYahooSquidbSqlCriterion *)baseCriterion
              withComYahooSquidbSqlCriterionArray:(IOSObjectArray *)additionalCriterions {
  ComYahooSquidbSqlConjunctionCriterion_initWithComYahooSquidbSqlOperator_withComYahooSquidbSqlCriterion_withComYahooSquidbSqlCriterionArray_(self, operator_, baseCriterion, additionalCriterions);
  return self;
}

- (instancetype)initWithComYahooSquidbSqlOperator:(ComYahooSquidbSqlOperator *)operator_
                                 withJavaUtilList:(id<JavaUtilList>)criterions {
  ComYahooSquidbSqlConjunctionCriterion_initWithComYahooSquidbSqlOperator_withJavaUtilList_(self, operator_, criterions);
  return self;
}

- (void)populateWithComYahooSquidbSqlSqlBuilder:(ComYahooSquidbSqlSqlBuilder *)builder
                                    withBoolean:(jboolean)forSqlValidation {
  [((ComYahooSquidbSqlCriterion *) nil_chk([((id<JavaUtilList>) nil_chk(criterions_)) getWithInt:0])) appendToSqlBuilderWithComYahooSquidbSqlSqlBuilder:builder withBoolean:forSqlValidation];
  for (jint i = 1; i < [criterions_ size]; i++) {
    ComYahooSquidbSqlCriterion *c = [criterions_ getWithInt:i];
    if (c != nil) {
      (void) [((JavaLangStringBuilder *) nil_chk(((ComYahooSquidbSqlSqlBuilder *) nil_chk(builder))->sql_)) appendWithId:operator__];
      [c appendToSqlBuilderWithComYahooSquidbSqlSqlBuilder:builder withBoolean:forSqlValidation];
    }
  }
}

- (ComYahooSquidbSqlCriterion *)and__WithComYahooSquidbSqlCriterion:(ComYahooSquidbSqlCriterion *)criterion {
  ComYahooSquidbSqlCriterion *toReturn = ComYahooSquidbSqlConjunctionCriterion_checkOperatorAndAppendCriterionsWithComYahooSquidbSqlOperator_withComYahooSquidbSqlCriterion_(self, JreLoadEnum(ComYahooSquidbSqlOperator, and), criterion);
  if (toReturn == nil) {
    return [super and__WithComYahooSquidbSqlCriterion:criterion];
  }
  return toReturn;
}

- (ComYahooSquidbSqlCriterion *)or__WithComYahooSquidbSqlCriterion:(ComYahooSquidbSqlCriterion *)criterion {
  ComYahooSquidbSqlCriterion *toReturn = ComYahooSquidbSqlConjunctionCriterion_checkOperatorAndAppendCriterionsWithComYahooSquidbSqlOperator_withComYahooSquidbSqlCriterion_(self, JreLoadEnum(ComYahooSquidbSqlOperator, or), criterion);
  if (toReturn == nil) {
    return [super or__WithComYahooSquidbSqlCriterion:criterion];
  }
  return toReturn;
}

- (ComYahooSquidbSqlCriterion *)checkOperatorAndAppendCriterionsWithComYahooSquidbSqlOperator:(ComYahooSquidbSqlOperator *)toCheck
                                                               withComYahooSquidbSqlCriterion:(ComYahooSquidbSqlCriterion *)criterion {
  return ComYahooSquidbSqlConjunctionCriterion_checkOperatorAndAppendCriterionsWithComYahooSquidbSqlOperator_withComYahooSquidbSqlCriterion_(self, toCheck, criterion);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComYahooSquidbSqlOperator:withComYahooSquidbSqlCriterion:withComYahooSquidbSqlCriterionArray:", "ConjunctionCriterion", NULL, 0x80, NULL, NULL },
    { "initWithComYahooSquidbSqlOperator:withJavaUtilList:", "ConjunctionCriterion", NULL, 0x0, NULL, "(Lcom/yahoo/squidb/sql/Operator;Ljava/util/List<Lcom/yahoo/squidb/sql/Criterion;>;)V" },
    { "populateWithComYahooSquidbSqlSqlBuilder:withBoolean:", "populate", "V", 0x4, NULL, NULL },
    { "and__WithComYahooSquidbSqlCriterion:", "and", "Lcom.yahoo.squidb.sql.Criterion;", 0x1, NULL, NULL },
    { "or__WithComYahooSquidbSqlCriterion:", "or", "Lcom.yahoo.squidb.sql.Criterion;", 0x1, NULL, NULL },
    { "checkOperatorAndAppendCriterionsWithComYahooSquidbSqlOperator:withComYahooSquidbSqlCriterion:", "checkOperatorAndAppendCriterions", "Lcom.yahoo.squidb.sql.Criterion;", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "criterions_", NULL, 0x12, "Ljava.util.List;", NULL, "Ljava/util/List<Lcom/yahoo/squidb/sql/Criterion;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ComYahooSquidbSqlConjunctionCriterion = { 2, "ConjunctionCriterion", "com.yahoo.squidb.sql", NULL, 0x0, 6, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComYahooSquidbSqlConjunctionCriterion;
}

@end

void ComYahooSquidbSqlConjunctionCriterion_initWithComYahooSquidbSqlOperator_withComYahooSquidbSqlCriterion_withComYahooSquidbSqlCriterionArray_(ComYahooSquidbSqlConjunctionCriterion *self, ComYahooSquidbSqlOperator *operator_, ComYahooSquidbSqlCriterion *baseCriterion, IOSObjectArray *additionalCriterions) {
  ComYahooSquidbSqlCriterion_initWithComYahooSquidbSqlOperator_(self, operator_);
  self->criterions_ = new_JavaUtilArrayList_init();
  if (baseCriterion == nil) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"First Criterion of a ConjunctionCriterion must not be null");
  }
  [self->criterions_ addWithId:baseCriterion];
  if (additionalCriterions != nil) {
    JavaUtilCollections_addAllWithJavaUtilCollection_withNSObjectArray_(self->criterions_, additionalCriterions);
  }
}

ComYahooSquidbSqlConjunctionCriterion *new_ComYahooSquidbSqlConjunctionCriterion_initWithComYahooSquidbSqlOperator_withComYahooSquidbSqlCriterion_withComYahooSquidbSqlCriterionArray_(ComYahooSquidbSqlOperator *operator_, ComYahooSquidbSqlCriterion *baseCriterion, IOSObjectArray *additionalCriterions) {
  ComYahooSquidbSqlConjunctionCriterion *self = [ComYahooSquidbSqlConjunctionCriterion alloc];
  ComYahooSquidbSqlConjunctionCriterion_initWithComYahooSquidbSqlOperator_withComYahooSquidbSqlCriterion_withComYahooSquidbSqlCriterionArray_(self, operator_, baseCriterion, additionalCriterions);
  return self;
}

ComYahooSquidbSqlConjunctionCriterion *create_ComYahooSquidbSqlConjunctionCriterion_initWithComYahooSquidbSqlOperator_withComYahooSquidbSqlCriterion_withComYahooSquidbSqlCriterionArray_(ComYahooSquidbSqlOperator *operator_, ComYahooSquidbSqlCriterion *baseCriterion, IOSObjectArray *additionalCriterions) {
  return new_ComYahooSquidbSqlConjunctionCriterion_initWithComYahooSquidbSqlOperator_withComYahooSquidbSqlCriterion_withComYahooSquidbSqlCriterionArray_(operator_, baseCriterion, additionalCriterions);
}

void ComYahooSquidbSqlConjunctionCriterion_initWithComYahooSquidbSqlOperator_withJavaUtilList_(ComYahooSquidbSqlConjunctionCriterion *self, ComYahooSquidbSqlOperator *operator_, id<JavaUtilList> criterions) {
  ComYahooSquidbSqlCriterion_initWithComYahooSquidbSqlOperator_(self, operator_);
  self->criterions_ = new_JavaUtilArrayList_init();
  if (criterions == nil || [criterions isEmpty]) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"Must specify at least one criterion for a ConjunctionCriterion");
  }
  if ([((id<JavaUtilList>) nil_chk(criterions)) getWithInt:0] == nil) {
    @throw new_JavaLangNullPointerException_initWithNSString_(@"First Criterion of ConjunctionCriterion List must not be null");
  }
  [self->criterions_ addAllWithJavaUtilCollection:criterions];
}

ComYahooSquidbSqlConjunctionCriterion *new_ComYahooSquidbSqlConjunctionCriterion_initWithComYahooSquidbSqlOperator_withJavaUtilList_(ComYahooSquidbSqlOperator *operator_, id<JavaUtilList> criterions) {
  ComYahooSquidbSqlConjunctionCriterion *self = [ComYahooSquidbSqlConjunctionCriterion alloc];
  ComYahooSquidbSqlConjunctionCriterion_initWithComYahooSquidbSqlOperator_withJavaUtilList_(self, operator_, criterions);
  return self;
}

ComYahooSquidbSqlConjunctionCriterion *create_ComYahooSquidbSqlConjunctionCriterion_initWithComYahooSquidbSqlOperator_withJavaUtilList_(ComYahooSquidbSqlOperator *operator_, id<JavaUtilList> criterions) {
  return new_ComYahooSquidbSqlConjunctionCriterion_initWithComYahooSquidbSqlOperator_withJavaUtilList_(operator_, criterions);
}

ComYahooSquidbSqlCriterion *ComYahooSquidbSqlConjunctionCriterion_checkOperatorAndAppendCriterionsWithComYahooSquidbSqlOperator_withComYahooSquidbSqlCriterion_(ComYahooSquidbSqlConjunctionCriterion *self, ComYahooSquidbSqlOperator *toCheck, ComYahooSquidbSqlCriterion *criterion) {
  if (criterion == nil) {
    return self;
  }
  if ([((ComYahooSquidbSqlOperator *) nil_chk(self->operator__)) isEqual:toCheck]) {
    ComYahooSquidbSqlConjunctionCriterion *newCriterion = new_ComYahooSquidbSqlConjunctionCriterion_initWithComYahooSquidbSqlOperator_withJavaUtilList_(self->operator__, self->criterions_);
    [((id<JavaUtilList>) nil_chk(newCriterion->criterions_)) addWithId:criterion];
    return newCriterion;
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComYahooSquidbSqlConjunctionCriterion)
