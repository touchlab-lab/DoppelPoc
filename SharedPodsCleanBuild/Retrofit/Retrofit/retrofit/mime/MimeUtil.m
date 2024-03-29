//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/retrofit/retrofit/src/main/java/retrofit/mime/MimeUtil.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"
#include "retrofit/mime/MimeUtil.h"

@interface RetrofitMimeMimeUtil ()

- (instancetype)init;

@end

inline JavaUtilRegexPattern *RetrofitMimeMimeUtil_get_CHARSET();
static JavaUtilRegexPattern *RetrofitMimeMimeUtil_CHARSET;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RetrofitMimeMimeUtil, CHARSET, JavaUtilRegexPattern *)

__attribute__((unused)) static void RetrofitMimeMimeUtil_init(RetrofitMimeMimeUtil *self);

__attribute__((unused)) static RetrofitMimeMimeUtil *new_RetrofitMimeMimeUtil_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static RetrofitMimeMimeUtil *create_RetrofitMimeMimeUtil_init();

J2OBJC_INITIALIZED_DEFN(RetrofitMimeMimeUtil)

@implementation RetrofitMimeMimeUtil

+ (NSString *)parseCharsetWithNSString:(NSString *)mimeType {
  return RetrofitMimeMimeUtil_parseCharsetWithNSString_(mimeType);
}

+ (NSString *)parseCharsetWithNSString:(NSString *)mimeType
                          withNSString:(NSString *)defaultCharset {
  return RetrofitMimeMimeUtil_parseCharsetWithNSString_withNSString_(mimeType, defaultCharset);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RetrofitMimeMimeUtil_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [RetrofitMimeMimeUtil class]) {
    RetrofitMimeMimeUtil_CHARSET = JavaUtilRegexPattern_compileWithNSString_withInt_(@"\\Wcharset=([^\\s;]+)", JavaUtilRegexPattern_CASE_INSENSITIVE);
    J2OBJC_SET_INITIALIZED(RetrofitMimeMimeUtil)
  }
}

+ (IOSObjectArray *)__annotations_parseCharsetWithNSString_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangDeprecated alloc] init] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "parseCharsetWithNSString:", "parseCharset", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "parseCharsetWithNSString:withNSString:", "parseCharset", "Ljava.lang.String;", 0x9, NULL, NULL },
    { "init", "MimeUtil", NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "CHARSET", "CHARSET", 0x1a, "Ljava.util.regex.Pattern;", &RetrofitMimeMimeUtil_CHARSET, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _RetrofitMimeMimeUtil = { 2, "MimeUtil", "retrofit.mime", NULL, 0x11, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_RetrofitMimeMimeUtil;
}

@end

NSString *RetrofitMimeMimeUtil_parseCharsetWithNSString_(NSString *mimeType) {
  RetrofitMimeMimeUtil_initialize();
  return RetrofitMimeMimeUtil_parseCharsetWithNSString_withNSString_(mimeType, @"UTF-8");
}

NSString *RetrofitMimeMimeUtil_parseCharsetWithNSString_withNSString_(NSString *mimeType, NSString *defaultCharset) {
  RetrofitMimeMimeUtil_initialize();
  JavaUtilRegexMatcher *match = [((JavaUtilRegexPattern *) nil_chk(RetrofitMimeMimeUtil_CHARSET)) matcherWithJavaLangCharSequence:mimeType];
  if ([((JavaUtilRegexMatcher *) nil_chk(match)) find]) {
    return [((NSString *) nil_chk([match groupWithInt:1])) replaceAll:@"[\"\\\\]" withReplacement:@""];
  }
  return defaultCharset;
}

void RetrofitMimeMimeUtil_init(RetrofitMimeMimeUtil *self) {
  NSObject_init(self);
}

RetrofitMimeMimeUtil *new_RetrofitMimeMimeUtil_init() {
  RetrofitMimeMimeUtil *self = [RetrofitMimeMimeUtil alloc];
  RetrofitMimeMimeUtil_init(self);
  return self;
}

RetrofitMimeMimeUtil *create_RetrofitMimeMimeUtil_init() {
  return new_RetrofitMimeMimeUtil_init();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RetrofitMimeMimeUtil)
