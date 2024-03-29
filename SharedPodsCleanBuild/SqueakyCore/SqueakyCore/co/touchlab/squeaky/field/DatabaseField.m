//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/squeaky/core/src/main/java/co/touchlab/squeaky/field/DatabaseField.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "co/touchlab/squeaky/field/DataType.h"
#include "co/touchlab/squeaky/field/DatabaseField.h"
#include "co/touchlab/squeaky/field/types/VoidType.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "java/lang/annotation/Target.h"

NSString *CoTouchlabSqueakyFieldDatabaseField_DEFAULT_STRING = @"__ormlite__ no default value string was specified";

@implementation CoTouchlabSqueakyFieldDatabaseField

@synthesize columnName = columnName_;
@synthesize dataType = dataType_;
@synthesize defaultValue = defaultValue_;
@synthesize canBeNull = canBeNull_;
@synthesize id__ = id___;
@synthesize generatedId = generatedId_;
@synthesize foreign = foreign_;
@synthesize useGetSet = useGetSet_;
@synthesize format = format_;
@synthesize unique = unique_;
@synthesize uniqueCombo = uniqueCombo_;
@synthesize index = index_;
@synthesize uniqueIndex = uniqueIndex_;
@synthesize indexName = indexName_;
@synthesize uniqueIndexName = uniqueIndexName_;
@synthesize foreignAutoRefresh = foreignAutoRefresh_;
@synthesize persisterClass = persisterClass_;

- (instancetype)initWithCanBeNull:(jboolean)canBeNull__ withColumnName:(NSString *)columnName__ withDataType:(CoTouchlabSqueakyFieldDataType *)dataType__ withDefaultValue:(NSString *)defaultValue__ withForeign:(jboolean)foreign__ withForeignAutoRefresh:(jboolean)foreignAutoRefresh__ withFormat:(NSString *)format__ withGeneratedId:(jboolean)generatedId__ withId__:(jboolean)id____ withIndex:(jboolean)index__ withIndexName:(NSString *)indexName__ withPersisterClass:(IOSClass *)persisterClass__ withUnique:(jboolean)unique__ withUniqueCombo:(jboolean)uniqueCombo__ withUniqueIndex:(jboolean)uniqueIndex__ withUniqueIndexName:(NSString *)uniqueIndexName__ withUseGetSet:(jboolean)useGetSet__ {
  if ((self = [super init])) {
    self->canBeNull_ = canBeNull__;
    self->columnName_ = RETAIN_(columnName__);
    self->dataType_ = RETAIN_(dataType__);
    self->defaultValue_ = RETAIN_(defaultValue__);
    self->foreign_ = foreign__;
    self->foreignAutoRefresh_ = foreignAutoRefresh__;
    self->format_ = RETAIN_(format__);
    self->generatedId_ = generatedId__;
    self->id___ = id____;
    self->index_ = index__;
    self->indexName_ = RETAIN_(indexName__);
    self->persisterClass_ = RETAIN_(persisterClass__);
    self->unique_ = unique__;
    self->uniqueCombo_ = uniqueCombo__;
    self->uniqueIndex_ = uniqueIndex__;
    self->uniqueIndexName_ = RETAIN_(uniqueIndexName__);
    self->useGetSet_ = useGetSet__;
  }
  return self;
}

+ (NSString *)columnNameDefault {
  return @"";
}

+ (CoTouchlabSqueakyFieldDataType *)dataTypeDefault {
  return JreLoadEnum(CoTouchlabSqueakyFieldDataType, UNKNOWN);
}

+ (NSString *)defaultValueDefault {
  return CoTouchlabSqueakyFieldDatabaseField_DEFAULT_STRING;
}

+ (jboolean)canBeNullDefault {
  return true;
}

+ (jboolean)id__Default {
  return false;
}

+ (jboolean)generatedIdDefault {
  return false;
}

+ (jboolean)foreignDefault {
  return false;
}

+ (jboolean)useGetSetDefault {
  return false;
}

+ (NSString *)formatDefault {
  return @"";
}

+ (jboolean)uniqueDefault {
  return false;
}

+ (jboolean)uniqueComboDefault {
  return false;
}

+ (jboolean)indexDefault {
  return false;
}

+ (jboolean)uniqueIndexDefault {
  return false;
}

+ (NSString *)indexNameDefault {
  return @"";
}

+ (NSString *)uniqueIndexNameDefault {
  return @"";
}

+ (jboolean)foreignAutoRefreshDefault {
  return false;
}

+ (IOSClass *)persisterClassDefault {
  return CoTouchlabSqueakyFieldTypesVoidType_class_();
}

- (IOSClass *)annotationType {
  return CoTouchlabSqueakyFieldDatabaseField_class_();
}

- (NSString *)description {
  return @"@co.touchlab.squeaky.field.DatabaseField()";
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangAnnotationTarget alloc] initWithValue:[IOSObjectArray arrayWithObjects:(id[]) { JavaLangAnnotationElementType_get_FIELD() } count:1 type:NSObject_class_()]], [[JavaLangAnnotationRetention alloc] initWithValue:JavaLangAnnotationRetentionPolicy_get_RUNTIME()] } count:2 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "columnName", "columnName", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "columnNameDefault", "columnName", "Ljava.lang.String;", 0x100a, NULL, NULL },
    { "dataType", "dataType", "Lco.touchlab.squeaky.field.DataType;", 0x401, NULL, NULL },
    { "dataTypeDefault", "dataType", "Lco.touchlab.squeaky.field.DataType;", 0x100a, NULL, NULL },
    { "defaultValue", "defaultValue", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "defaultValueDefault", "defaultValue", "Ljava.lang.String;", 0x100a, NULL, NULL },
    { "canBeNull", "canBeNull", "Z", 0x401, NULL, NULL },
    { "canBeNullDefault", "canBeNull", "Z", 0x100a, NULL, NULL },
    { "id", "id", "Z", 0x401, NULL, NULL },
    { "idDefault", "id", "Z", 0x100a, NULL, NULL },
    { "generatedId", "generatedId", "Z", 0x401, NULL, NULL },
    { "generatedIdDefault", "generatedId", "Z", 0x100a, NULL, NULL },
    { "foreign", "foreign", "Z", 0x401, NULL, NULL },
    { "foreignDefault", "foreign", "Z", 0x100a, NULL, NULL },
    { "useGetSet", "useGetSet", "Z", 0x401, NULL, NULL },
    { "useGetSetDefault", "useGetSet", "Z", 0x100a, NULL, NULL },
    { "format", "format", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "formatDefault", "format", "Ljava.lang.String;", 0x100a, NULL, NULL },
    { "unique", "unique", "Z", 0x401, NULL, NULL },
    { "uniqueDefault", "unique", "Z", 0x100a, NULL, NULL },
    { "uniqueCombo", "uniqueCombo", "Z", 0x401, NULL, NULL },
    { "uniqueComboDefault", "uniqueCombo", "Z", 0x100a, NULL, NULL },
    { "index", "index", "Z", 0x401, NULL, NULL },
    { "indexDefault", "index", "Z", 0x100a, NULL, NULL },
    { "uniqueIndex", "uniqueIndex", "Z", 0x401, NULL, NULL },
    { "uniqueIndexDefault", "uniqueIndex", "Z", 0x100a, NULL, NULL },
    { "indexName", "indexName", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "indexNameDefault", "indexName", "Ljava.lang.String;", 0x100a, NULL, NULL },
    { "uniqueIndexName", "uniqueIndexName", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "uniqueIndexNameDefault", "uniqueIndexName", "Ljava.lang.String;", 0x100a, NULL, NULL },
    { "foreignAutoRefresh", "foreignAutoRefresh", "Z", 0x401, NULL, NULL },
    { "foreignAutoRefreshDefault", "foreignAutoRefresh", "Z", 0x100a, NULL, NULL },
    { "persisterClass", "persisterClass", "Ljava.lang.Class;", 0x401, NULL, NULL },
    { "persisterClassDefault", "persisterClass", "Ljava.lang.Class;", 0x100a, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STRING", "DEFAULT_STRING", 0x19, "Ljava.lang.String;", &CoTouchlabSqueakyFieldDatabaseField_DEFAULT_STRING, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _CoTouchlabSqueakyFieldDatabaseField = { 2, "DatabaseField", "co.touchlab.squeaky.field", NULL, 0x2609, 34, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_CoTouchlabSqueakyFieldDatabaseField;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(CoTouchlabSqueakyFieldDatabaseField)
