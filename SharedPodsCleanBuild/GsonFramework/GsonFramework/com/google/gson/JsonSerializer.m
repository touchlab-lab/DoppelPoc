//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/gson/gson/src/main/java/com/google/gson/JsonSerializer.java
//

#include "J2ObjC_source.h"
#include "com/google/gson/JsonElement.h"
#include "com/google/gson/JsonSerializationContext.h"
#include "com/google/gson/JsonSerializer.h"
#include "java/lang/reflect/Type.h"

@interface ComGoogleGsonJsonSerializer : NSObject

@end

@implementation ComGoogleGsonJsonSerializer

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "serializeWithId:withJavaLangReflectType:withComGoogleGsonJsonSerializationContext:", "serialize", "Lcom.google.gson.JsonElement;", 0x401, NULL, "(TT;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;" },
  };
  static const J2ObjcClassInfo _ComGoogleGsonJsonSerializer = { 2, "JsonSerializer", "com.google.gson", NULL, 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  return &_ComGoogleGsonJsonSerializer;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoogleGsonJsonSerializer)