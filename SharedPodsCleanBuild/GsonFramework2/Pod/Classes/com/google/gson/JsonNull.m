//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/gson/gson/src/main/java/com/google/gson/JsonNull.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/gson/JsonElement.h"
#include "com/google/gson/JsonNull.h"
#include "java/lang/Deprecated.h"

J2OBJC_INITIALIZED_DEFN(ComGoogleGsonJsonNull)

ComGoogleGsonJsonNull *ComGoogleGsonJsonNull_INSTANCE;

@implementation ComGoogleGsonJsonNull

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleGsonJsonNull_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (ComGoogleGsonJsonNull *)deepCopy {
  return ComGoogleGsonJsonNull_INSTANCE;
}

- (NSUInteger)hash {
  return ((jint) [ComGoogleGsonJsonNull_class_() hash]);
}

- (jboolean)isEqual:(id)other {
  return self == other || [other isKindOfClass:[ComGoogleGsonJsonNull class]];
}

+ (void)initialize {
  if (self == [ComGoogleGsonJsonNull class]) {
    ComGoogleGsonJsonNull_INSTANCE = new_ComGoogleGsonJsonNull_init();
    J2OBJC_SET_INITIALIZED(ComGoogleGsonJsonNull)
  }
}

+ (IOSObjectArray *)__annotations_init {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "JsonNull", NULL, 0x1, NULL, NULL },
    { "deepCopy", NULL, "Lcom.google.gson.JsonNull;", 0x0, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE", "INSTANCE", 0x19, "Lcom.google.gson.JsonNull;", &ComGoogleGsonJsonNull_INSTANCE, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ComGoogleGsonJsonNull = { 2, "JsonNull", "com.google.gson", NULL, 0x11, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonJsonNull;
}

@end

void ComGoogleGsonJsonNull_init(ComGoogleGsonJsonNull *self) {
  ComGoogleGsonJsonElement_init(self);
}

ComGoogleGsonJsonNull *new_ComGoogleGsonJsonNull_init() {
  ComGoogleGsonJsonNull *self = [ComGoogleGsonJsonNull alloc];
  ComGoogleGsonJsonNull_init(self);
  return self;
}

ComGoogleGsonJsonNull *create_ComGoogleGsonJsonNull_init() {
  return new_ComGoogleGsonJsonNull_init();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonJsonNull)
