//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/magicthreads/library/src/main/java/co/touchlab/android/threading/tasks/persisted/storage/StoredCommandAdapter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "co/touchlab/android/threading/tasks/persisted/PersistedTask.h"
#include "co/touchlab/android/threading/tasks/persisted/SuperbusProcessException.h"
#include "co/touchlab/android/threading/tasks/persisted/storage/StoredCommandAdapter.h"
#include "java/lang/ClassNotFoundException.h"

@interface CoTouchlabAndroidThreadingTasksPersistedStorageStoredCommandAdapter : NSObject

@end

@implementation CoTouchlabAndroidThreadingTasksPersistedStorageStoredCommandAdapter

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "inflateCommandWithNSString:withNSString:", "inflateCommand", "Lco.touchlab.android.threading.tasks.persisted.PersistedTask;", 0x401, "Lco.touchlab.android.threading.tasks.persisted.SuperbusProcessException;Ljava.lang.ClassNotFoundException;", NULL },
    { "storeCommandWithCoTouchlabAndroidThreadingTasksPersistedPersistedTask:", "storeCommand", "Ljava.lang.String;", 0x401, "Lco.touchlab.android.threading.tasks.persisted.SuperbusProcessException;", NULL },
  };
  static const J2ObjcClassInfo _CoTouchlabAndroidThreadingTasksPersistedStorageStoredCommandAdapter = { 2, "StoredCommandAdapter", "co.touchlab.android.threading.tasks.persisted.storage", NULL, 0x609, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_CoTouchlabAndroidThreadingTasksPersistedStorageStoredCommandAdapter;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(CoTouchlabAndroidThreadingTasksPersistedStorageStoredCommandAdapter)
