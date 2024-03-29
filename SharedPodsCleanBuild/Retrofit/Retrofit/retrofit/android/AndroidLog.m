//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/retrofit/retrofit/src/main/java/retrofit/android/AndroidLog.java
//

#include "J2ObjC_source.h"
#include "android/util/Log.h"
#include "java/lang/Math.h"
#include "retrofit/android/AndroidLog.h"

@interface RetrofitAndroidAndroidLog () {
 @public
  NSString *tag_;
}

@end

J2OBJC_FIELD_SETTER(RetrofitAndroidAndroidLog, tag_, NSString *)

inline jint RetrofitAndroidAndroidLog_get_LOG_CHUNK_SIZE();
#define RetrofitAndroidAndroidLog_LOG_CHUNK_SIZE 4000
J2OBJC_STATIC_FIELD_CONSTANT(RetrofitAndroidAndroidLog, LOG_CHUNK_SIZE, jint)

@implementation RetrofitAndroidAndroidLog

- (instancetype)initWithNSString:(NSString *)tag {
  RetrofitAndroidAndroidLog_initWithNSString_(self, tag);
  return self;
}

- (void)logWithNSString:(NSString *)message {
  for (jint i = 0, len = ((jint) [((NSString *) nil_chk(message)) length]); i < len; i += RetrofitAndroidAndroidLog_LOG_CHUNK_SIZE) {
    jint end = JavaLangMath_minWithInt_withInt_(len, i + RetrofitAndroidAndroidLog_LOG_CHUNK_SIZE);
    [self logChunkWithNSString:[message substring:i endIndex:end]];
  }
}

- (void)logChunkWithNSString:(NSString *)chunk {
  AndroidUtilLog_dWithNSString_withNSString_([self getTag], chunk);
}

- (NSString *)getTag {
  return tag_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "AndroidLog", NULL, 0x1, NULL, NULL },
    { "logWithNSString:", "log", "V", 0x11, NULL, NULL },
    { "logChunkWithNSString:", "logChunk", "V", 0x1, NULL, NULL },
    { "getTag", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "LOG_CHUNK_SIZE", "LOG_CHUNK_SIZE", 0x1a, "I", NULL, NULL, .constantValue.asInt = RetrofitAndroidAndroidLog_LOG_CHUNK_SIZE },
    { "tag_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _RetrofitAndroidAndroidLog = { 2, "AndroidLog", "retrofit.android", NULL, 0x1, 4, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_RetrofitAndroidAndroidLog;
}

@end

void RetrofitAndroidAndroidLog_initWithNSString_(RetrofitAndroidAndroidLog *self, NSString *tag) {
  NSObject_init(self);
  self->tag_ = tag;
}

RetrofitAndroidAndroidLog *new_RetrofitAndroidAndroidLog_initWithNSString_(NSString *tag) {
  RetrofitAndroidAndroidLog *self = [RetrofitAndroidAndroidLog alloc];
  RetrofitAndroidAndroidLog_initWithNSString_(self, tag);
  return self;
}

RetrofitAndroidAndroidLog *create_RetrofitAndroidAndroidLog_initWithNSString_(NSString *tag) {
  return new_RetrofitAndroidAndroidLog_initWithNSString_(tag);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RetrofitAndroidAndroidLog)
