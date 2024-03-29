//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/magicthreads/library/src/main/java/co/touchlab/android/threading/tasks/persisted/SuperbusEventListener.java
//

#include "J2ObjC_header.h"

#pragma push_macro("CoTouchlabAndroidThreadingTasksPersistedSuperbusEventListener_INCLUDE_ALL")
#ifdef CoTouchlabAndroidThreadingTasksPersistedSuperbusEventListener_RESTRICT
#define CoTouchlabAndroidThreadingTasksPersistedSuperbusEventListener_INCLUDE_ALL 0
#else
#define CoTouchlabAndroidThreadingTasksPersistedSuperbusEventListener_INCLUDE_ALL 1
#endif
#undef CoTouchlabAndroidThreadingTasksPersistedSuperbusEventListener_RESTRICT

#if !defined (CoTouchlabAndroidThreadingTasksPersistedSuperbusEventListener_) && (CoTouchlabAndroidThreadingTasksPersistedSuperbusEventListener_INCLUDE_ALL || defined(CoTouchlabAndroidThreadingTasksPersistedSuperbusEventListener_INCLUDE))
#define CoTouchlabAndroidThreadingTasksPersistedSuperbusEventListener_

@class AndroidContentContext;
@protocol CoTouchlabAndroidThreadingTasksPersistedPersistenceProvider;

@protocol CoTouchlabAndroidThreadingTasksPersistedSuperbusEventListener < NSObject, JavaObject >

- (void)onBusStartedWithAndroidContentContext:(AndroidContentContext *)context
withCoTouchlabAndroidThreadingTasksPersistedPersistenceProvider:(id<CoTouchlabAndroidThreadingTasksPersistedPersistenceProvider>)provider;

- (void)onBusFinishedWithAndroidContentContext:(AndroidContentContext *)context
withCoTouchlabAndroidThreadingTasksPersistedPersistenceProvider:(id<CoTouchlabAndroidThreadingTasksPersistedPersistenceProvider>)provider
                                   withBoolean:(jboolean)complete;

@end

J2OBJC_EMPTY_STATIC_INIT(CoTouchlabAndroidThreadingTasksPersistedSuperbusEventListener)

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabAndroidThreadingTasksPersistedSuperbusEventListener)

#endif

#pragma pop_macro("CoTouchlabAndroidThreadingTasksPersistedSuperbusEventListener_INCLUDE_ALL")
