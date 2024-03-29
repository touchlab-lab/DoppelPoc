//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/magicthreads/library/src/main/java/co/touchlab/android/threading/tasks/TaskQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("CoTouchlabAndroidThreadingTasksTaskQueue_INCLUDE_ALL")
#ifdef CoTouchlabAndroidThreadingTasksTaskQueue_RESTRICT
#define CoTouchlabAndroidThreadingTasksTaskQueue_INCLUDE_ALL 0
#else
#define CoTouchlabAndroidThreadingTasksTaskQueue_INCLUDE_ALL 1
#endif
#undef CoTouchlabAndroidThreadingTasksTaskQueue_RESTRICT

#if !defined (CoTouchlabAndroidThreadingTasksTaskQueue_) && (CoTouchlabAndroidThreadingTasksTaskQueue_INCLUDE_ALL || defined(CoTouchlabAndroidThreadingTasksTaskQueue_INCLUDE))
#define CoTouchlabAndroidThreadingTasksTaskQueue_

#define CoTouchlabAndroidThreadingTasksBaseTaskQueue_RESTRICT 1
#define CoTouchlabAndroidThreadingTasksBaseTaskQueue_INCLUDE 1
#include "co/touchlab/android/threading/tasks/BaseTaskQueue.h"

@class AndroidContentContext;
@class AndroidOsMessage;
@class CoTouchlabAndroidThreadingTasksTask;

@interface CoTouchlabAndroidThreadingTasksTaskQueue : CoTouchlabAndroidThreadingTasksBaseTaskQueue

#pragma mark Public

- (instancetype)initWithAndroidContentContext:(AndroidContentContext *)application;

- (instancetype)initWithAndroidContentContext:(AndroidContentContext *)application
                                  withBoolean:(jboolean)fifo;

- (void)executeWithCoTouchlabAndroidThreadingTasksTask:(CoTouchlabAndroidThreadingTasksTask *)task;

+ (CoTouchlabAndroidThreadingTasksTaskQueue *)loadQueueWithAndroidContentContext:(AndroidContentContext *)context
                                                                    withNSString:(NSString *)name;

+ (CoTouchlabAndroidThreadingTasksTaskQueue *)loadQueueWithAndroidContentContext:(AndroidContentContext *)context
                                                                    withNSString:(NSString *)name
                                                                     withBoolean:(jboolean)fifo;

+ (CoTouchlabAndroidThreadingTasksTaskQueue *)loadQueueDefaultWithAndroidContentContext:(AndroidContentContext *)context;

+ (CoTouchlabAndroidThreadingTasksTaskQueue *)loadQueueNetworkWithAndroidContentContext:(AndroidContentContext *)context;

#pragma mark Protected

- (void)finishTaskWithAndroidOsMessage:(AndroidOsMessage *)msg
withCoTouchlabAndroidThreadingTasksTask:(CoTouchlabAndroidThreadingTasksTask *)task;

- (void)runTaskWithCoTouchlabAndroidThreadingTasksTask:(CoTouchlabAndroidThreadingTasksTask *)task;

@end

J2OBJC_STATIC_INIT(CoTouchlabAndroidThreadingTasksTaskQueue)

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksTaskQueue *CoTouchlabAndroidThreadingTasksTaskQueue_loadQueueWithAndroidContentContext_withNSString_(AndroidContentContext *context, NSString *name);

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksTaskQueue *CoTouchlabAndroidThreadingTasksTaskQueue_loadQueueWithAndroidContentContext_withNSString_withBoolean_(AndroidContentContext *context, NSString *name, jboolean fifo);

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksTaskQueue *CoTouchlabAndroidThreadingTasksTaskQueue_loadQueueDefaultWithAndroidContentContext_(AndroidContentContext *context);

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksTaskQueue *CoTouchlabAndroidThreadingTasksTaskQueue_loadQueueNetworkWithAndroidContentContext_(AndroidContentContext *context);

FOUNDATION_EXPORT void CoTouchlabAndroidThreadingTasksTaskQueue_initWithAndroidContentContext_(CoTouchlabAndroidThreadingTasksTaskQueue *self, AndroidContentContext *application);

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksTaskQueue *new_CoTouchlabAndroidThreadingTasksTaskQueue_initWithAndroidContentContext_(AndroidContentContext *application) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksTaskQueue *create_CoTouchlabAndroidThreadingTasksTaskQueue_initWithAndroidContentContext_(AndroidContentContext *application);

FOUNDATION_EXPORT void CoTouchlabAndroidThreadingTasksTaskQueue_initWithAndroidContentContext_withBoolean_(CoTouchlabAndroidThreadingTasksTaskQueue *self, AndroidContentContext *application, jboolean fifo);

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksTaskQueue *new_CoTouchlabAndroidThreadingTasksTaskQueue_initWithAndroidContentContext_withBoolean_(AndroidContentContext *application, jboolean fifo) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksTaskQueue *create_CoTouchlabAndroidThreadingTasksTaskQueue_initWithAndroidContentContext_withBoolean_(AndroidContentContext *application, jboolean fifo);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabAndroidThreadingTasksTaskQueue)

#endif

#if !defined (CoTouchlabAndroidThreadingTasksTaskQueue_LinkedListQueue_) && (CoTouchlabAndroidThreadingTasksTaskQueue_INCLUDE_ALL || defined(CoTouchlabAndroidThreadingTasksTaskQueue_LinkedListQueue_INCLUDE))
#define CoTouchlabAndroidThreadingTasksTaskQueue_LinkedListQueue_

#define CoTouchlabAndroidThreadingTasksBaseTaskQueue_RESTRICT 1
#define CoTouchlabAndroidThreadingTasksBaseTaskQueue_QueueWrapper_INCLUDE 1
#include "co/touchlab/android/threading/tasks/BaseTaskQueue.h"

@protocol JavaUtilCollection;

@interface CoTouchlabAndroidThreadingTasksTaskQueue_LinkedListQueue : NSObject < CoTouchlabAndroidThreadingTasksBaseTaskQueue_QueueWrapper >

#pragma mark Public

- (instancetype)initWithBoolean:(jboolean)fifo;

- (id<JavaUtilCollection>)all;

- (void)offerWithId:(id)task;

- (id)poll;

- (void)removeWithId:(id)task;

@end

J2OBJC_EMPTY_STATIC_INIT(CoTouchlabAndroidThreadingTasksTaskQueue_LinkedListQueue)

FOUNDATION_EXPORT void CoTouchlabAndroidThreadingTasksTaskQueue_LinkedListQueue_initWithBoolean_(CoTouchlabAndroidThreadingTasksTaskQueue_LinkedListQueue *self, jboolean fifo);

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksTaskQueue_LinkedListQueue *new_CoTouchlabAndroidThreadingTasksTaskQueue_LinkedListQueue_initWithBoolean_(jboolean fifo) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksTaskQueue_LinkedListQueue *create_CoTouchlabAndroidThreadingTasksTaskQueue_LinkedListQueue_initWithBoolean_(jboolean fifo);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabAndroidThreadingTasksTaskQueue_LinkedListQueue)

#endif

#pragma pop_macro("CoTouchlabAndroidThreadingTasksTaskQueue_INCLUDE_ALL")
