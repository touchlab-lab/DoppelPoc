//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/gson/gson/src/main/java/com/google/gson/JsonSyntaxException.java
//

#include "J2ObjC_source.h"
#include "com/google/gson/JsonParseException.h"
#include "com/google/gson/JsonSyntaxException.h"

inline jlong ComGoogleGsonJsonSyntaxException_get_serialVersionUID();
#define ComGoogleGsonJsonSyntaxException_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleGsonJsonSyntaxException, serialVersionUID, jlong)

@implementation ComGoogleGsonJsonSyntaxException

- (instancetype)initWithNSString:(NSString *)msg {
  ComGoogleGsonJsonSyntaxException_initWithNSString_(self, msg);
  return self;
}

- (instancetype)initWithNSString:(NSString *)msg
                 withNSException:(NSException *)cause {
  ComGoogleGsonJsonSyntaxException_initWithNSString_withNSException_(self, msg, cause);
  return self;
}

- (instancetype)initWithNSException:(NSException *)cause {
  ComGoogleGsonJsonSyntaxException_initWithNSException_(self, cause);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "JsonSyntaxException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withNSException:", "JsonSyntaxException", NULL, 0x1, NULL, NULL },
    { "initWithNSException:", "JsonSyntaxException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = ComGoogleGsonJsonSyntaxException_serialVersionUID },
  };
  static const J2ObjcClassInfo _ComGoogleGsonJsonSyntaxException = { 2, "JsonSyntaxException", "com.google.gson", NULL, 0x11, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonJsonSyntaxException;
}

@end

void ComGoogleGsonJsonSyntaxException_initWithNSString_(ComGoogleGsonJsonSyntaxException *self, NSString *msg) {
  ComGoogleGsonJsonParseException_initWithNSString_(self, msg);
}

ComGoogleGsonJsonSyntaxException *new_ComGoogleGsonJsonSyntaxException_initWithNSString_(NSString *msg) {
  ComGoogleGsonJsonSyntaxException *self = [ComGoogleGsonJsonSyntaxException alloc];
  ComGoogleGsonJsonSyntaxException_initWithNSString_(self, msg);
  return self;
}

ComGoogleGsonJsonSyntaxException *create_ComGoogleGsonJsonSyntaxException_initWithNSString_(NSString *msg) {
  return new_ComGoogleGsonJsonSyntaxException_initWithNSString_(msg);
}

void ComGoogleGsonJsonSyntaxException_initWithNSString_withNSException_(ComGoogleGsonJsonSyntaxException *self, NSString *msg, NSException *cause) {
  ComGoogleGsonJsonParseException_initWithNSString_withNSException_(self, msg, cause);
}

ComGoogleGsonJsonSyntaxException *new_ComGoogleGsonJsonSyntaxException_initWithNSString_withNSException_(NSString *msg, NSException *cause) {
  ComGoogleGsonJsonSyntaxException *self = [ComGoogleGsonJsonSyntaxException alloc];
  ComGoogleGsonJsonSyntaxException_initWithNSString_withNSException_(self, msg, cause);
  return self;
}

ComGoogleGsonJsonSyntaxException *create_ComGoogleGsonJsonSyntaxException_initWithNSString_withNSException_(NSString *msg, NSException *cause) {
  return new_ComGoogleGsonJsonSyntaxException_initWithNSString_withNSException_(msg, cause);
}

void ComGoogleGsonJsonSyntaxException_initWithNSException_(ComGoogleGsonJsonSyntaxException *self, NSException *cause) {
  ComGoogleGsonJsonParseException_initWithNSException_(self, cause);
}

ComGoogleGsonJsonSyntaxException *new_ComGoogleGsonJsonSyntaxException_initWithNSException_(NSException *cause) {
  ComGoogleGsonJsonSyntaxException *self = [ComGoogleGsonJsonSyntaxException alloc];
  ComGoogleGsonJsonSyntaxException_initWithNSException_(self, cause);
  return self;
}

ComGoogleGsonJsonSyntaxException *create_ComGoogleGsonJsonSyntaxException_initWithNSException_(NSException *cause) {
  return new_ComGoogleGsonJsonSyntaxException_initWithNSException_(cause);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonJsonSyntaxException)
