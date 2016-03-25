//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/magicthreads/library/src/main/java/co/touchlab/android/threading/tasks/helper/RetrofitPersistedTask.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "android/content/Context.h"
#include "co/touchlab/android/threading/errorcontrol/NetworkException.h"
#include "co/touchlab/android/threading/errorcontrol/SoftException.h"
#include "co/touchlab/android/threading/tasks/helper/RetrofitPersistedTask.h"
#include "co/touchlab/android/threading/tasks/persisted/PersistedTask.h"
#include "retrofit/RetrofitError.h"

@implementation CoTouchlabAndroidThreadingTasksHelperRetrofitPersistedTask

- (void)runWithAndroidContentContext:(AndroidContentContext *)context {
  @try {
    [self runNetworkWithAndroidContentContext:context];
  }
  @catch (RetrofitRetrofitError *e) {
    if ([((RetrofitRetrofitError *) nil_chk(e)) getKind] == JreLoadEnum(RetrofitRetrofitError_Kind, NETWORK)) {
      @throw new_CoTouchlabAndroidThreadingErrorcontrolNetworkException_initWithNSException_(e);
    }
  }
}

- (void)runNetworkWithAndroidContentContext:(AndroidContentContext *)context {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jboolean)handleErrorWithAndroidContentContext:(AndroidContentContext *)context
                                 withNSException:(NSException *)e {
  return false;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  CoTouchlabAndroidThreadingTasksHelperRetrofitPersistedTask_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "runWithAndroidContentContext:", "run", "V", 0x14, "Lco.touchlab.android.threading.errorcontrol.SoftException;Ljava.lang.Throwable;", NULL },
    { "runNetworkWithAndroidContentContext:", "runNetwork", "V", 0x404, NULL, NULL },
    { "handleErrorWithAndroidContentContext:withNSException:", "handleError", "Z", 0x4, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _CoTouchlabAndroidThreadingTasksHelperRetrofitPersistedTask = { 2, "RetrofitPersistedTask", "co.touchlab.android.threading.tasks.helper", NULL, 0x401, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_CoTouchlabAndroidThreadingTasksHelperRetrofitPersistedTask;
}

@end

void CoTouchlabAndroidThreadingTasksHelperRetrofitPersistedTask_init(CoTouchlabAndroidThreadingTasksHelperRetrofitPersistedTask *self) {
  CoTouchlabAndroidThreadingTasksPersistedPersistedTask_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CoTouchlabAndroidThreadingTasksHelperRetrofitPersistedTask)
