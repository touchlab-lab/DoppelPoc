//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/retrofit/retrofit/src/main/java/retrofit/http/EncodedQueryMap.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Documented.h"
#include "java/lang/annotation/ElementType.h"
#include "java/lang/annotation/Retention.h"
#include "java/lang/annotation/RetentionPolicy.h"
#include "java/lang/annotation/Target.h"
#include "retrofit/http/EncodedQueryMap.h"

@implementation RetrofitHttpEncodedQueryMap

- (IOSClass *)annotationType {
  return RetrofitHttpEncodedQueryMap_class_();
}

- (NSString *)description {
  return @"@retrofit.http.EncodedQueryMap()";
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[JavaLangAnnotationDocumented alloc] init], [[JavaLangDeprecated alloc] init], [[JavaLangAnnotationTarget alloc] initWithValue:[IOSObjectArray arrayWithObjects:(id[]) { JavaLangAnnotationElementType_get_PARAMETER() } count:1 type:NSObject_class_()]], [[JavaLangAnnotationRetention alloc] initWithValue:JavaLangAnnotationRetentionPolicy_get_RUNTIME()] } count:4 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcClassInfo _RetrofitHttpEncodedQueryMap = { 2, "EncodedQueryMap", "retrofit.http", NULL, 0x2609, 0, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_RetrofitHttpEncodedQueryMap;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(RetrofitHttpEncodedQueryMap)
