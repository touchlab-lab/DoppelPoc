//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/magicthreads/library/src/main/java/co/touchlab/android/threading/tasks/persisted/CommandPurgePolicy.java
//

#include "J2ObjC_source.h"
#include "co/touchlab/android/threading/errorcontrol/SoftException.h"
#include "co/touchlab/android/threading/tasks/persisted/CommandPurgePolicy.h"
#include "co/touchlab/android/threading/tasks/persisted/PersistedTask.h"

@interface CoTouchlabAndroidThreadingTasksPersistedCommandPurgePolicy : NSObject

@end

@implementation CoTouchlabAndroidThreadingTasksPersistedCommandPurgePolicy

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "purgeCommandOnTransientExceptionWithCoTouchlabAndroidThreadingTasksPersistedPersistedTask:withCoTouchlabAndroidThreadingErrorcontrolSoftException:", "purgeCommandOnTransientException", "Z", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _CoTouchlabAndroidThreadingTasksPersistedCommandPurgePolicy = { 2, "CommandPurgePolicy", "co.touchlab.android.threading.tasks.persisted", NULL, 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_CoTouchlabAndroidThreadingTasksPersistedCommandPurgePolicy;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(CoTouchlabAndroidThreadingTasksPersistedCommandPurgePolicy)
