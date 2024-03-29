//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/okhttp/okhttp/src/main/java/com/squareup/okhttp/internal/spdy/HeadersMode.java
//

#include "J2ObjC_header.h"

#pragma push_macro("ComSquareupOkhttpInternalSpdyHeadersMode_INCLUDE_ALL")
#ifdef ComSquareupOkhttpInternalSpdyHeadersMode_RESTRICT
#define ComSquareupOkhttpInternalSpdyHeadersMode_INCLUDE_ALL 0
#else
#define ComSquareupOkhttpInternalSpdyHeadersMode_INCLUDE_ALL 1
#endif
#undef ComSquareupOkhttpInternalSpdyHeadersMode_RESTRICT

#if !defined (ComSquareupOkhttpInternalSpdyHeadersMode_) && (ComSquareupOkhttpInternalSpdyHeadersMode_INCLUDE_ALL || defined(ComSquareupOkhttpInternalSpdyHeadersMode_INCLUDE))
#define ComSquareupOkhttpInternalSpdyHeadersMode_

#define JavaLangEnum_RESTRICT 1
#define JavaLangEnum_INCLUDE 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, ComSquareupOkhttpInternalSpdyHeadersMode_Enum) {
  ComSquareupOkhttpInternalSpdyHeadersMode_Enum_SPDY_SYN_STREAM = 0,
  ComSquareupOkhttpInternalSpdyHeadersMode_Enum_SPDY_REPLY = 1,
  ComSquareupOkhttpInternalSpdyHeadersMode_Enum_SPDY_HEADERS = 2,
  ComSquareupOkhttpInternalSpdyHeadersMode_Enum_HTTP_20_HEADERS = 3,
};

@interface ComSquareupOkhttpInternalSpdyHeadersMode : JavaLangEnum < NSCopying >

#pragma mark Public

- (jboolean)failIfHeadersAbsent;

- (jboolean)failIfHeadersPresent;

- (jboolean)failIfStreamAbsent;

- (jboolean)failIfStreamPresent;

#pragma mark Package-Private

+ (IOSObjectArray *)values;

+ (ComSquareupOkhttpInternalSpdyHeadersMode *)valueOfWithNSString:(NSString *)name;

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(ComSquareupOkhttpInternalSpdyHeadersMode)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT ComSquareupOkhttpInternalSpdyHeadersMode *ComSquareupOkhttpInternalSpdyHeadersMode_values_[];

inline ComSquareupOkhttpInternalSpdyHeadersMode *ComSquareupOkhttpInternalSpdyHeadersMode_get_SPDY_SYN_STREAM();
J2OBJC_ENUM_CONSTANT(ComSquareupOkhttpInternalSpdyHeadersMode, SPDY_SYN_STREAM)

inline ComSquareupOkhttpInternalSpdyHeadersMode *ComSquareupOkhttpInternalSpdyHeadersMode_get_SPDY_REPLY();
J2OBJC_ENUM_CONSTANT(ComSquareupOkhttpInternalSpdyHeadersMode, SPDY_REPLY)

inline ComSquareupOkhttpInternalSpdyHeadersMode *ComSquareupOkhttpInternalSpdyHeadersMode_get_SPDY_HEADERS();
J2OBJC_ENUM_CONSTANT(ComSquareupOkhttpInternalSpdyHeadersMode, SPDY_HEADERS)

inline ComSquareupOkhttpInternalSpdyHeadersMode *ComSquareupOkhttpInternalSpdyHeadersMode_get_HTTP_20_HEADERS();
J2OBJC_ENUM_CONSTANT(ComSquareupOkhttpInternalSpdyHeadersMode, HTTP_20_HEADERS)

FOUNDATION_EXPORT IOSObjectArray *ComSquareupOkhttpInternalSpdyHeadersMode_values();

FOUNDATION_EXPORT ComSquareupOkhttpInternalSpdyHeadersMode *ComSquareupOkhttpInternalSpdyHeadersMode_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT ComSquareupOkhttpInternalSpdyHeadersMode *ComSquareupOkhttpInternalSpdyHeadersMode_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(ComSquareupOkhttpInternalSpdyHeadersMode)

#endif

#pragma pop_macro("ComSquareupOkhttpInternalSpdyHeadersMode_INCLUDE_ALL")
