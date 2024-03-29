//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/androidbase/AndroidBase/lib/src/main/java/android/util/SizeF.java
//

#include "J2ObjC_header.h"

#pragma push_macro("AndroidUtilSizeF_INCLUDE_ALL")
#ifdef AndroidUtilSizeF_RESTRICT
#define AndroidUtilSizeF_INCLUDE_ALL 0
#else
#define AndroidUtilSizeF_INCLUDE_ALL 1
#endif
#undef AndroidUtilSizeF_RESTRICT

#if !defined (AndroidUtilSizeF_) && (AndroidUtilSizeF_INCLUDE_ALL || defined(AndroidUtilSizeF_INCLUDE))
#define AndroidUtilSizeF_

@interface AndroidUtilSizeF : NSObject

#pragma mark Public

- (instancetype)initWithFloat:(jfloat)width
                    withFloat:(jfloat)height;

+ (jfloat)checkArgumentFiniteWithFloat:(jfloat)value
                          withNSString:(NSString *)valueName;

- (jboolean)isEqual:(id)obj;

- (jfloat)getHeight;

- (jfloat)getWidth;

- (NSUInteger)hash;

+ (AndroidUtilSizeF *)parseSizeFWithNSString:(NSString *)string;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidUtilSizeF)

FOUNDATION_EXPORT void AndroidUtilSizeF_initWithFloat_withFloat_(AndroidUtilSizeF *self, jfloat width, jfloat height);

FOUNDATION_EXPORT AndroidUtilSizeF *new_AndroidUtilSizeF_initWithFloat_withFloat_(jfloat width, jfloat height) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AndroidUtilSizeF *create_AndroidUtilSizeF_initWithFloat_withFloat_(jfloat width, jfloat height);

FOUNDATION_EXPORT jfloat AndroidUtilSizeF_checkArgumentFiniteWithFloat_withNSString_(jfloat value, NSString *valueName);

FOUNDATION_EXPORT AndroidUtilSizeF *AndroidUtilSizeF_parseSizeFWithNSString_(NSString *string);

J2OBJC_TYPE_LITERAL_HEADER(AndroidUtilSizeF)

#endif

#pragma pop_macro("AndroidUtilSizeF_INCLUDE_ALL")
