//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/magicthreads/library/src/main/java/co/touchlab/android/threading/tasks/persisted/storage/sqlite/CursorIntf.java
//

#include "J2ObjC_header.h"

#pragma push_macro("CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf_INCLUDE_ALL")
#ifdef CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf_RESTRICT
#define CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf_INCLUDE_ALL 0
#else
#define CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf_INCLUDE_ALL 1
#endif
#undef CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf_RESTRICT

#if !defined (CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf_) && (CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf_INCLUDE_ALL || defined(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf_INCLUDE))
#define CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf_

@protocol CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf < NSObject, JavaObject >

- (jboolean)moveToNext;

- (void)close;

- (jlong)getLongWithInt:(jint)i;

- (NSString *)getStringWithInt:(jint)i;

@end

J2OBJC_EMPTY_STATIC_INIT(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf)

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf)

#endif

#pragma pop_macro("CoTouchlabAndroidThreadingTasksPersistedStorageSqliteCursorIntf_INCLUDE_ALL")
