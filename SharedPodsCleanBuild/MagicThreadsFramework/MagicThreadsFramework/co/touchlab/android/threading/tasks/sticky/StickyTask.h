//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/magicthreads/library/src/main/java/co/touchlab/android/threading/tasks/sticky/StickyTask.java
//

#include "J2ObjC_header.h"

#pragma push_macro("CoTouchlabAndroidThreadingTasksStickyStickyTask_INCLUDE_ALL")
#ifdef CoTouchlabAndroidThreadingTasksStickyStickyTask_RESTRICT
#define CoTouchlabAndroidThreadingTasksStickyStickyTask_INCLUDE_ALL 0
#else
#define CoTouchlabAndroidThreadingTasksStickyStickyTask_INCLUDE_ALL 1
#endif
#undef CoTouchlabAndroidThreadingTasksStickyStickyTask_RESTRICT

#if !defined (CoTouchlabAndroidThreadingTasksStickyStickyTask_) && (CoTouchlabAndroidThreadingTasksStickyStickyTask_INCLUDE_ALL || defined(CoTouchlabAndroidThreadingTasksStickyStickyTask_INCLUDE))
#define CoTouchlabAndroidThreadingTasksStickyStickyTask_

#define CoTouchlabAndroidThreadingTasksTask_RESTRICT 1
#define CoTouchlabAndroidThreadingTasksTask_INCLUDE 1
#include "co/touchlab/android/threading/tasks/Task.h"

@class CoTouchlabAndroidThreadingTasksStickyStickyTaskManager;

@interface CoTouchlabAndroidThreadingTasksStickyStickyTask : CoTouchlabAndroidThreadingTasksTask {
 @public
  jlong affinityId_;
}

#pragma mark Protected

- (instancetype)initWithCoTouchlabAndroidThreadingTasksStickyStickyTaskManager:(CoTouchlabAndroidThreadingTasksStickyStickyTaskManager *)taskManager;

@end

J2OBJC_EMPTY_STATIC_INIT(CoTouchlabAndroidThreadingTasksStickyStickyTask)

FOUNDATION_EXPORT void CoTouchlabAndroidThreadingTasksStickyStickyTask_initWithCoTouchlabAndroidThreadingTasksStickyStickyTaskManager_(CoTouchlabAndroidThreadingTasksStickyStickyTask *self, CoTouchlabAndroidThreadingTasksStickyStickyTaskManager *taskManager);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabAndroidThreadingTasksStickyStickyTask)

#endif

#pragma pop_macro("CoTouchlabAndroidThreadingTasksStickyStickyTask_INCLUDE_ALL")