//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/androidbase/AndroidBase/lib/src/main/java/android/database/DataSetObserver.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidDatabaseDataSetObserver")
#ifdef RESTRICT_AndroidDatabaseDataSetObserver
#define INCLUDE_ALL_AndroidDatabaseDataSetObserver 0
#else
#define INCLUDE_ALL_AndroidDatabaseDataSetObserver 1
#endif
#undef RESTRICT_AndroidDatabaseDataSetObserver

#if !defined (AndroidDatabaseDataSetObserver_) && (INCLUDE_ALL_AndroidDatabaseDataSetObserver || defined(INCLUDE_AndroidDatabaseDataSetObserver))
#define AndroidDatabaseDataSetObserver_

@interface AndroidDatabaseDataSetObserver : NSObject

#pragma mark Public

- (instancetype)init;

- (void)onChanged;

- (void)onInvalidated;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidDatabaseDataSetObserver)

FOUNDATION_EXPORT void AndroidDatabaseDataSetObserver_init(AndroidDatabaseDataSetObserver *self);

J2OBJC_TYPE_LITERAL_HEADER(AndroidDatabaseDataSetObserver)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidDatabaseDataSetObserver")