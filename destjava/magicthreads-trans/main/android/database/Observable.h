//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/androidbase/AndroidBase/lib/src/main/java/android/database/Observable.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AndroidDatabaseObservable")
#ifdef RESTRICT_AndroidDatabaseObservable
#define INCLUDE_ALL_AndroidDatabaseObservable 0
#else
#define INCLUDE_ALL_AndroidDatabaseObservable 1
#endif
#undef RESTRICT_AndroidDatabaseObservable

#if !defined (AndroidDatabaseObservable_) && (INCLUDE_ALL_AndroidDatabaseObservable || defined(INCLUDE_AndroidDatabaseObservable))
#define AndroidDatabaseObservable_

@class JavaUtilArrayList;

@interface AndroidDatabaseObservable : NSObject {
 @public
  JavaUtilArrayList *mObservers_;
}

#pragma mark Public

- (instancetype)init;

- (void)registerObserverWithId:(id)observer;

- (void)unregisterAll;

- (void)unregisterObserverWithId:(id)observer;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidDatabaseObservable)

J2OBJC_FIELD_SETTER(AndroidDatabaseObservable, mObservers_, JavaUtilArrayList *)

FOUNDATION_EXPORT void AndroidDatabaseObservable_init(AndroidDatabaseObservable *self);

J2OBJC_TYPE_LITERAL_HEADER(AndroidDatabaseObservable)

#endif

#pragma pop_macro("INCLUDE_ALL_AndroidDatabaseObservable")
