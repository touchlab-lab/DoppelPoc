//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/androidbase/AndroidBase/lib/src/main/java/android/database/CharArrayBuffer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "android/database/CharArrayBuffer.h"

@implementation AndroidDatabaseCharArrayBuffer

- (instancetype)initWithInt:(jint)size {
  AndroidDatabaseCharArrayBuffer_initWithInt_(self, size);
  return self;
}

- (instancetype)initWithCharArray:(IOSCharArray *)buf {
  AndroidDatabaseCharArrayBuffer_initWithCharArray_(self, buf);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "CharArrayBuffer", NULL, 0x1, NULL, NULL },
    { "initWithCharArray:", "CharArrayBuffer", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "data_", NULL, 0x1, "[C", NULL, NULL, .constantValue.asLong = 0 },
    { "sizeCopied_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _AndroidDatabaseCharArrayBuffer = { 2, "CharArrayBuffer", "android.database", NULL, 0x11, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_AndroidDatabaseCharArrayBuffer;
}

@end

void AndroidDatabaseCharArrayBuffer_initWithInt_(AndroidDatabaseCharArrayBuffer *self, jint size) {
  NSObject_init(self);
  self->data_ = [IOSCharArray newArrayWithLength:size];
}

AndroidDatabaseCharArrayBuffer *new_AndroidDatabaseCharArrayBuffer_initWithInt_(jint size) {
  AndroidDatabaseCharArrayBuffer *self = [AndroidDatabaseCharArrayBuffer alloc];
  AndroidDatabaseCharArrayBuffer_initWithInt_(self, size);
  return self;
}

AndroidDatabaseCharArrayBuffer *create_AndroidDatabaseCharArrayBuffer_initWithInt_(jint size) {
  return new_AndroidDatabaseCharArrayBuffer_initWithInt_(size);
}

void AndroidDatabaseCharArrayBuffer_initWithCharArray_(AndroidDatabaseCharArrayBuffer *self, IOSCharArray *buf) {
  NSObject_init(self);
  self->data_ = buf;
}

AndroidDatabaseCharArrayBuffer *new_AndroidDatabaseCharArrayBuffer_initWithCharArray_(IOSCharArray *buf) {
  AndroidDatabaseCharArrayBuffer *self = [AndroidDatabaseCharArrayBuffer alloc];
  AndroidDatabaseCharArrayBuffer_initWithCharArray_(self, buf);
  return self;
}

AndroidDatabaseCharArrayBuffer *create_AndroidDatabaseCharArrayBuffer_initWithCharArray_(IOSCharArray *buf) {
  return new_AndroidDatabaseCharArrayBuffer_initWithCharArray_(buf);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidDatabaseCharArrayBuffer)
