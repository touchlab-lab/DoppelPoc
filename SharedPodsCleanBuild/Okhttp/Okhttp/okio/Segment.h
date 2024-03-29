//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/okhttp/okhttp/src/main/java/okio/Segment.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OkioSegment_INCLUDE_ALL")
#ifdef OkioSegment_RESTRICT
#define OkioSegment_INCLUDE_ALL 0
#else
#define OkioSegment_INCLUDE_ALL 1
#endif
#undef OkioSegment_RESTRICT

#if !defined (OkioSegment_) && (OkioSegment_INCLUDE_ALL || defined(OkioSegment_INCLUDE))
#define OkioSegment_

@class IOSByteArray;

@interface OkioSegment : NSObject {
 @public
  IOSByteArray *data_;
  jint pos_;
  jint limit_;
  OkioSegment *next_;
  OkioSegment *prev_;
}

#pragma mark Public

- (void)compact;

- (OkioSegment *)pop;

- (OkioSegment *)pushWithOkioSegment:(OkioSegment *)segment;

- (OkioSegment *)splitWithInt:(jint)byteCount;

- (void)writeToWithOkioSegment:(OkioSegment *)sink
                       withInt:(jint)byteCount;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OkioSegment)

J2OBJC_FIELD_SETTER(OkioSegment, data_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OkioSegment, next_, OkioSegment *)
J2OBJC_FIELD_SETTER(OkioSegment, prev_, OkioSegment *)

inline jint OkioSegment_get_SIZE();
#define OkioSegment_SIZE 2048
J2OBJC_STATIC_FIELD_CONSTANT(OkioSegment, SIZE, jint)

FOUNDATION_EXPORT void OkioSegment_init(OkioSegment *self);

FOUNDATION_EXPORT OkioSegment *new_OkioSegment_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OkioSegment *create_OkioSegment_init();

J2OBJC_TYPE_LITERAL_HEADER(OkioSegment)

#endif

#pragma pop_macro("OkioSegment_INCLUDE_ALL")
