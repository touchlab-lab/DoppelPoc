//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/gson/gson/src/main/java/com/google/gson/JsonObject.java
//

#include "J2ObjC_source.h"
#include "com/google/gson/JsonArray.h"
#include "com/google/gson/JsonElement.h"
#include "com/google/gson/JsonNull.h"
#include "com/google/gson/JsonObject.h"
#include "com/google/gson/JsonPrimitive.h"
#include "com/google/gson/internal/LinkedTreeMap.h"
#include "java/lang/Boolean.h"
#include "java/lang/Character.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

@interface ComGoogleGsonJsonObject () {
 @public
  ComGoogleGsonInternalLinkedTreeMap *members_;
}

- (ComGoogleGsonJsonElement *)createJsonElementWithId:(id)value;

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonJsonObject, members_, ComGoogleGsonInternalLinkedTreeMap *)

__attribute__((unused)) static ComGoogleGsonJsonElement *ComGoogleGsonJsonObject_createJsonElementWithId_(ComGoogleGsonJsonObject *self, id value);

@implementation ComGoogleGsonJsonObject

- (ComGoogleGsonJsonObject *)deepCopy {
  ComGoogleGsonJsonObject *result = new_ComGoogleGsonJsonObject_init();
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((ComGoogleGsonInternalLinkedTreeMap *) nil_chk(members_)) entrySet])) {
    [result addWithNSString:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey] withComGoogleGsonJsonElement:[((ComGoogleGsonJsonElement *) nil_chk([entry_ getValue])) deepCopy]];
  }
  return result;
}

- (void)addWithNSString:(NSString *)property
withComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)value {
  if (value == nil) {
    value = JreLoadStatic(ComGoogleGsonJsonNull, INSTANCE);
  }
  (void) [((ComGoogleGsonInternalLinkedTreeMap *) nil_chk(members_)) putWithId:property withId:value];
}

- (ComGoogleGsonJsonElement *)removeWithNSString:(NSString *)property {
  return [((ComGoogleGsonInternalLinkedTreeMap *) nil_chk(members_)) removeWithId:property];
}

- (void)addPropertyWithNSString:(NSString *)property
                   withNSString:(NSString *)value {
  [self addWithNSString:property withComGoogleGsonJsonElement:ComGoogleGsonJsonObject_createJsonElementWithId_(self, value)];
}

- (void)addPropertyWithNSString:(NSString *)property
                   withNSNumber:(NSNumber *)value {
  [self addWithNSString:property withComGoogleGsonJsonElement:ComGoogleGsonJsonObject_createJsonElementWithId_(self, value)];
}

- (void)addPropertyWithNSString:(NSString *)property
            withJavaLangBoolean:(JavaLangBoolean *)value {
  [self addWithNSString:property withComGoogleGsonJsonElement:ComGoogleGsonJsonObject_createJsonElementWithId_(self, value)];
}

- (void)addPropertyWithNSString:(NSString *)property
          withJavaLangCharacter:(JavaLangCharacter *)value {
  [self addWithNSString:property withComGoogleGsonJsonElement:ComGoogleGsonJsonObject_createJsonElementWithId_(self, value)];
}

- (ComGoogleGsonJsonElement *)createJsonElementWithId:(id)value {
  return ComGoogleGsonJsonObject_createJsonElementWithId_(self, value);
}

- (id<JavaUtilSet>)entrySet {
  return [((ComGoogleGsonInternalLinkedTreeMap *) nil_chk(members_)) entrySet];
}

- (jboolean)hasWithNSString:(NSString *)memberName {
  return [((ComGoogleGsonInternalLinkedTreeMap *) nil_chk(members_)) containsKeyWithId:memberName];
}

- (ComGoogleGsonJsonElement *)getWithNSString:(NSString *)memberName {
  return [((ComGoogleGsonInternalLinkedTreeMap *) nil_chk(members_)) getWithId:memberName];
}

- (ComGoogleGsonJsonPrimitive *)getAsJsonPrimitiveWithNSString:(NSString *)memberName {
  return (ComGoogleGsonJsonPrimitive *) cast_chk([((ComGoogleGsonInternalLinkedTreeMap *) nil_chk(members_)) getWithId:memberName], [ComGoogleGsonJsonPrimitive class]);
}

- (ComGoogleGsonJsonArray *)getAsJsonArrayWithNSString:(NSString *)memberName {
  return (ComGoogleGsonJsonArray *) cast_chk([((ComGoogleGsonInternalLinkedTreeMap *) nil_chk(members_)) getWithId:memberName], [ComGoogleGsonJsonArray class]);
}

- (ComGoogleGsonJsonObject *)getAsJsonObjectWithNSString:(NSString *)memberName {
  return (ComGoogleGsonJsonObject *) cast_chk([((ComGoogleGsonInternalLinkedTreeMap *) nil_chk(members_)) getWithId:memberName], [ComGoogleGsonJsonObject class]);
}

- (jboolean)isEqual:(id)o {
  return (o == self) || ([o isKindOfClass:[ComGoogleGsonJsonObject class]] && [((ComGoogleGsonInternalLinkedTreeMap *) nil_chk(((ComGoogleGsonJsonObject *) nil_chk(((ComGoogleGsonJsonObject *) cast_chk(o, [ComGoogleGsonJsonObject class]))))->members_)) isEqual:members_]);
}

- (NSUInteger)hash {
  return ((jint) [((ComGoogleGsonInternalLinkedTreeMap *) nil_chk(members_)) hash]);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonJsonObject_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "deepCopy", NULL, "Lcom.google.gson.JsonObject;", 0x0, NULL, NULL },
    { "addWithNSString:withComGoogleGsonJsonElement:", "add", "V", 0x1, NULL, NULL },
    { "removeWithNSString:", "remove", "Lcom.google.gson.JsonElement;", 0x1, NULL, NULL },
    { "addPropertyWithNSString:withNSString:", "addProperty", "V", 0x1, NULL, NULL },
    { "addPropertyWithNSString:withNSNumber:", "addProperty", "V", 0x1, NULL, NULL },
    { "addPropertyWithNSString:withJavaLangBoolean:", "addProperty", "V", 0x1, NULL, NULL },
    { "addPropertyWithNSString:withJavaLangCharacter:", "addProperty", "V", 0x1, NULL, NULL },
    { "createJsonElementWithId:", "createJsonElement", "Lcom.google.gson.JsonElement;", 0x2, NULL, NULL },
    { "entrySet", NULL, "Ljava.util.Set;", 0x1, NULL, "()Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;" },
    { "hasWithNSString:", "has", "Z", 0x1, NULL, NULL },
    { "getWithNSString:", "get", "Lcom.google.gson.JsonElement;", 0x1, NULL, NULL },
    { "getAsJsonPrimitiveWithNSString:", "getAsJsonPrimitive", "Lcom.google.gson.JsonPrimitive;", 0x1, NULL, NULL },
    { "getAsJsonArrayWithNSString:", "getAsJsonArray", "Lcom.google.gson.JsonArray;", 0x1, NULL, NULL },
    { "getAsJsonObjectWithNSString:", "getAsJsonObject", "Lcom.google.gson.JsonObject;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "members_", NULL, 0x12, "Lcom.google.gson.internal.LinkedTreeMap;", NULL, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Lcom/google/gson/JsonElement;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ComGoogleGsonJsonObject = { 2, "JsonObject", "com.google.gson", NULL, 0x11, 17, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonJsonObject;
}

@end

ComGoogleGsonJsonElement *ComGoogleGsonJsonObject_createJsonElementWithId_(ComGoogleGsonJsonObject *self, id value) {
  return value == nil ? JreLoadStatic(ComGoogleGsonJsonNull, INSTANCE) : new_ComGoogleGsonJsonPrimitive_initWithId_(value);
}

void ComGoogleGsonJsonObject_init(ComGoogleGsonJsonObject *self) {
  ComGoogleGsonJsonElement_init(self);
  self->members_ = new_ComGoogleGsonInternalLinkedTreeMap_init();
}

ComGoogleGsonJsonObject *new_ComGoogleGsonJsonObject_init() {
  ComGoogleGsonJsonObject *self = [ComGoogleGsonJsonObject alloc];
  ComGoogleGsonJsonObject_init(self);
  return self;
}

ComGoogleGsonJsonObject *create_ComGoogleGsonJsonObject_init() {
  return new_ComGoogleGsonJsonObject_init();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonJsonObject)
