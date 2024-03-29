//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/okio/okio/src/main/java/okio/Buffer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OkioBuffer_INCLUDE_ALL")
#ifdef OkioBuffer_RESTRICT
#define OkioBuffer_INCLUDE_ALL 0
#else
#define OkioBuffer_INCLUDE_ALL 1
#endif
#undef OkioBuffer_RESTRICT

#if !defined (OkioBuffer_) && (OkioBuffer_INCLUDE_ALL || defined(OkioBuffer_INCLUDE))
#define OkioBuffer_

#define OkioBufferedSource_RESTRICT 1
#define OkioBufferedSource_INCLUDE 1
#include "okio/BufferedSource.h"

#define OkioBufferedSink_RESTRICT 1
#define OkioBufferedSink_INCLUDE 1
#include "okio/BufferedSink.h"

@class IOSByteArray;
@class JavaIoInputStream;
@class JavaIoOutputStream;
@class JavaNioCharsetCharset;
@class OkioByteString;
@class OkioSegment;
@class OkioTimeout;
@protocol JavaUtilList;
@protocol OkioSink;
@protocol OkioSource;

@interface OkioBuffer : NSObject < OkioBufferedSource, OkioBufferedSink, NSCopying > {
 @public
  OkioSegment *head_;
  jlong size_;
}

#pragma mark Public

- (instancetype)init;

- (OkioBuffer *)buffer;

- (void)clear;

- (OkioBuffer *)clone;

- (void)close;

- (jlong)completeSegmentByteCount;

- (OkioBuffer *)copyToWithOkioBuffer:(OkioBuffer *)outArg
                            withLong:(jlong)offset
                            withLong:(jlong)byteCount OBJC_METHOD_FAMILY_NONE;

- (OkioBuffer *)copyToWithJavaIoOutputStream:(JavaIoOutputStream *)outArg OBJC_METHOD_FAMILY_NONE;

- (OkioBuffer *)copyToWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                                    withLong:(jlong)offset
                                    withLong:(jlong)byteCount OBJC_METHOD_FAMILY_NONE;

- (id<OkioBufferedSink>)emit;

- (OkioBuffer *)emitCompleteSegments;

- (jboolean)isEqual:(id)o;

- (jboolean)exhausted;

- (void)flush;

- (jbyte)getByteWithLong:(jlong)pos;

- (NSUInteger)hash;

- (jlong)indexOfWithByte:(jbyte)b;

- (jlong)indexOfWithByte:(jbyte)b
                withLong:(jlong)fromIndex;

- (jlong)indexOfElementWithOkioByteString:(OkioByteString *)targetBytes;

- (jlong)indexOfElementWithOkioByteString:(OkioByteString *)targetBytes
                                 withLong:(jlong)fromIndex;

- (JavaIoInputStream *)inputStream;

- (JavaIoOutputStream *)outputStream;

- (jlong)readWithOkioBuffer:(OkioBuffer *)sink
                   withLong:(jlong)byteCount;

- (jint)readWithByteArray:(IOSByteArray *)sink;

- (jint)readWithByteArray:(IOSByteArray *)sink
                  withInt:(jint)offset
                  withInt:(jint)byteCount;

- (jlong)readAllWithOkioSink:(id<OkioSink>)sink;

- (jbyte)readByte;

- (IOSByteArray *)readByteArray;

- (IOSByteArray *)readByteArrayWithLong:(jlong)byteCount;

- (OkioByteString *)readByteString;

- (OkioByteString *)readByteStringWithLong:(jlong)byteCount;

- (OkioBuffer *)readFromWithJavaIoInputStream:(JavaIoInputStream *)inArg;

- (OkioBuffer *)readFromWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                     withLong:(jlong)byteCount;

- (void)readFullyWithOkioBuffer:(OkioBuffer *)sink
                       withLong:(jlong)byteCount;

- (void)readFullyWithByteArray:(IOSByteArray *)sink;

- (jint)readInt;

- (jint)readIntLe;

- (jlong)readLong;

- (jlong)readLongLe;

- (jshort)readShort;

- (jshort)readShortLe;

- (NSString *)readStringWithJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset;

- (NSString *)readStringWithLong:(jlong)byteCount
       withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset;

- (NSString *)readUtf8;

- (NSString *)readUtf8WithLong:(jlong)byteCount;

- (NSString *)readUtf8Line;

- (NSString *)readUtf8LineStrict;

- (jboolean)requestWithLong:(jlong)byteCount;

- (void)requireWithLong:(jlong)byteCount;

- (jlong)size;

- (void)skipWithLong:(jlong)byteCount;

- (OkioTimeout *)timeout;

- (NSString *)description;

- (void)writeWithOkioBuffer:(OkioBuffer *)source
                   withLong:(jlong)byteCount;

- (OkioBuffer *)writeWithByteArray:(IOSByteArray *)source;

- (OkioBuffer *)writeWithByteArray:(IOSByteArray *)source
                           withInt:(jint)offset
                           withInt:(jint)byteCount;

- (OkioBuffer *)writeWithOkioByteString:(OkioByteString *)byteString;

- (id<OkioBufferedSink>)writeWithOkioSource:(id<OkioSource>)source
                                   withLong:(jlong)byteCount;

- (jlong)writeAllWithOkioSource:(id<OkioSource>)source;

- (OkioBuffer *)writeByteWithInt:(jint)b;

- (OkioBuffer *)writeIntWithInt:(jint)i;

- (OkioBuffer *)writeIntLeWithInt:(jint)i;

- (OkioBuffer *)writeLongWithLong:(jlong)v;

- (OkioBuffer *)writeLongLeWithLong:(jlong)v;

- (OkioBuffer *)writeShortWithInt:(jint)s;

- (OkioBuffer *)writeShortLeWithInt:(jint)s;

- (OkioBuffer *)writeStringWithNSString:(NSString *)string
              withJavaNioCharsetCharset:(JavaNioCharsetCharset *)charset;

- (OkioBuffer *)writeToWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (OkioBuffer *)writeToWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                                     withLong:(jlong)byteCount;

- (OkioBuffer *)writeUtf8WithNSString:(NSString *)string;

#pragma mark Package-Private

- (NSString *)readUtf8LineWithLong:(jlong)newline;

- (id<JavaUtilList>)segmentSizes;

- (OkioSegment *)writableSegmentWithInt:(jint)minimumCapacity;

@end

J2OBJC_EMPTY_STATIC_INIT(OkioBuffer)

J2OBJC_FIELD_SETTER(OkioBuffer, head_, OkioSegment *)

FOUNDATION_EXPORT void OkioBuffer_init(OkioBuffer *self);

FOUNDATION_EXPORT OkioBuffer *new_OkioBuffer_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OkioBuffer *create_OkioBuffer_init();

J2OBJC_TYPE_LITERAL_HEADER(OkioBuffer)

#endif

#pragma pop_macro("OkioBuffer_INCLUDE_ALL")
