//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/gson/gson/src/main/java/com/google/gson/stream/MalformedJsonException.java
//

#include "J2ObjC_source.h"
#include "com/google/gson/stream/MalformedJsonException.h"
#include "java/io/IOException.h"

inline jlong ComGoogleGsonStreamMalformedJsonException_get_serialVersionUID();
#define ComGoogleGsonStreamMalformedJsonException_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleGsonStreamMalformedJsonException, serialVersionUID, jlong)

@implementation ComGoogleGsonStreamMalformedJsonException

- (instancetype)initWithNSString:(NSString *)msg {
  ComGoogleGsonStreamMalformedJsonException_initWithNSString_(self, msg);
  return self;
}

- (instancetype)initWithNSString:(NSString *)msg
                 withNSException:(NSException *)throwable {
  ComGoogleGsonStreamMalformedJsonException_initWithNSString_withNSException_(self, msg, throwable);
  return self;
}

- (instancetype)initWithNSException:(NSException *)throwable {
  ComGoogleGsonStreamMalformedJsonException_initWithNSException_(self, throwable);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "MalformedJsonException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withNSException:", "MalformedJsonException", NULL, 0x1, NULL, NULL },
    { "initWithNSException:", "MalformedJsonException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = ComGoogleGsonStreamMalformedJsonException_serialVersionUID },
  };
  static const J2ObjcClassInfo _ComGoogleGsonStreamMalformedJsonException = { 2, "MalformedJsonException", "com.google.gson.stream", NULL, 0x11, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonStreamMalformedJsonException;
}

@end

void ComGoogleGsonStreamMalformedJsonException_initWithNSString_(ComGoogleGsonStreamMalformedJsonException *self, NSString *msg) {
  JavaIoIOException_initWithNSString_(self, msg);
}

ComGoogleGsonStreamMalformedJsonException *new_ComGoogleGsonStreamMalformedJsonException_initWithNSString_(NSString *msg) {
  ComGoogleGsonStreamMalformedJsonException *self = [ComGoogleGsonStreamMalformedJsonException alloc];
  ComGoogleGsonStreamMalformedJsonException_initWithNSString_(self, msg);
  return self;
}

ComGoogleGsonStreamMalformedJsonException *create_ComGoogleGsonStreamMalformedJsonException_initWithNSString_(NSString *msg) {
  return new_ComGoogleGsonStreamMalformedJsonException_initWithNSString_(msg);
}

void ComGoogleGsonStreamMalformedJsonException_initWithNSString_withNSException_(ComGoogleGsonStreamMalformedJsonException *self, NSString *msg, NSException *throwable) {
  JavaIoIOException_initWithNSString_(self, msg);
  (void) [self initCauseWithNSException:throwable];
}

ComGoogleGsonStreamMalformedJsonException *new_ComGoogleGsonStreamMalformedJsonException_initWithNSString_withNSException_(NSString *msg, NSException *throwable) {
  ComGoogleGsonStreamMalformedJsonException *self = [ComGoogleGsonStreamMalformedJsonException alloc];
  ComGoogleGsonStreamMalformedJsonException_initWithNSString_withNSException_(self, msg, throwable);
  return self;
}

ComGoogleGsonStreamMalformedJsonException *create_ComGoogleGsonStreamMalformedJsonException_initWithNSString_withNSException_(NSString *msg, NSException *throwable) {
  return new_ComGoogleGsonStreamMalformedJsonException_initWithNSString_withNSException_(msg, throwable);
}

void ComGoogleGsonStreamMalformedJsonException_initWithNSException_(ComGoogleGsonStreamMalformedJsonException *self, NSException *throwable) {
  JavaIoIOException_init(self);
  (void) [self initCauseWithNSException:throwable];
}

ComGoogleGsonStreamMalformedJsonException *new_ComGoogleGsonStreamMalformedJsonException_initWithNSException_(NSException *throwable) {
  ComGoogleGsonStreamMalformedJsonException *self = [ComGoogleGsonStreamMalformedJsonException alloc];
  ComGoogleGsonStreamMalformedJsonException_initWithNSException_(self, throwable);
  return self;
}

ComGoogleGsonStreamMalformedJsonException *create_ComGoogleGsonStreamMalformedJsonException_initWithNSException_(NSException *throwable) {
  return new_ComGoogleGsonStreamMalformedJsonException_initWithNSException_(throwable);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonStreamMalformedJsonException)
