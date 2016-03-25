//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/magicthreads/library/src/main/java/co/touchlab/android/threading/tasks/persisted/PersistedTaskQueueConfig.java
//

#include "J2ObjC_header.h"

#pragma push_macro("CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_INCLUDE_ALL")
#ifdef CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_RESTRICT
#define CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_INCLUDE_ALL 0
#else
#define CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_INCLUDE_ALL 1
#endif
#undef CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_RESTRICT

#if !defined (CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_) && (CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_INCLUDE_ALL || defined(CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_INCLUDE))
#define CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_

@protocol CoTouchlabAndroidThreadingTasksPersistedBusLog;
@protocol CoTouchlabAndroidThreadingTasksPersistedCommandPurgePolicy;
@protocol CoTouchlabAndroidThreadingTasksPersistedPersistenceProvider;
@protocol JavaUtilList;

@interface CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig : NSObject {
 @public
  id<CoTouchlabAndroidThreadingTasksPersistedBusLog> log_;
  id<CoTouchlabAndroidThreadingTasksPersistedCommandPurgePolicy> commandPurgePolicy_;
  id<CoTouchlabAndroidThreadingTasksPersistedPersistenceProvider> persistenceProvider_;
}

#pragma mark Public

- (instancetype)init;

- (id<CoTouchlabAndroidThreadingTasksPersistedCommandPurgePolicy>)getCommandPurgePolicy;

- (id<JavaUtilList>)getEventListeners;

- (id<CoTouchlabAndroidThreadingTasksPersistedBusLog>)getLog;

- (id<CoTouchlabAndroidThreadingTasksPersistedPersistenceProvider>)getPersistenceProvider;

@end

J2OBJC_EMPTY_STATIC_INIT(CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig)

J2OBJC_FIELD_SETTER(CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig, log_, id<CoTouchlabAndroidThreadingTasksPersistedBusLog>)
J2OBJC_FIELD_SETTER(CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig, commandPurgePolicy_, id<CoTouchlabAndroidThreadingTasksPersistedCommandPurgePolicy>)
J2OBJC_FIELD_SETTER(CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig, persistenceProvider_, id<CoTouchlabAndroidThreadingTasksPersistedPersistenceProvider>)

inline NSString *CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_get_PERSISTED_QUEUE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_PERSISTED_QUEUE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig, PERSISTED_QUEUE, NSString *)

FOUNDATION_EXPORT void CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_init(CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig *self);

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig *new_CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig *create_CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_init();

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig)

#endif

#if !defined (CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder_) && (CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_INCLUDE_ALL || defined(CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder_INCLUDE))
#define CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder_

@class AndroidContentContext;
@class AndroidDatabaseSqliteSQLiteDatabase;
@class CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig;
@protocol CoTouchlabAndroidThreadingTasksBaseTaskQueue_QueueListener;
@protocol CoTouchlabAndroidThreadingTasksPersistedBusLog;
@protocol CoTouchlabAndroidThreadingTasksPersistedCommandPurgePolicy;
@protocol CoTouchlabAndroidThreadingTasksPersistedPersistenceProvider;

@interface CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder : NSObject {
 @public
  CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig *config_;
}

#pragma mark Public

- (instancetype)init;

- (CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder *)addQueueListenerWithCoTouchlabAndroidThreadingTasksBaseTaskQueue_QueueListener:(id<CoTouchlabAndroidThreadingTasksBaseTaskQueue_QueueListener>)eventListener;

- (CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig *)buildWithAndroidContentContext:(AndroidContentContext *)context;

- (CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder *)setCommandPurgePolicyWithCoTouchlabAndroidThreadingTasksPersistedCommandPurgePolicy:(id<CoTouchlabAndroidThreadingTasksPersistedCommandPurgePolicy>)p;

- (CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder *)setDatabaseWithAndroidDatabaseSqliteSQLiteDatabase:(AndroidDatabaseSqliteSQLiteDatabase *)database;

- (CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder *)setLogWithCoTouchlabAndroidThreadingTasksPersistedBusLog:(id<CoTouchlabAndroidThreadingTasksPersistedBusLog>)l;

- (CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder *)setPersistenceProviderWithCoTouchlabAndroidThreadingTasksPersistedPersistenceProvider:(id<CoTouchlabAndroidThreadingTasksPersistedPersistenceProvider>)p;

@end

J2OBJC_EMPTY_STATIC_INIT(CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder)

J2OBJC_FIELD_SETTER(CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder, config_, CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig *)

FOUNDATION_EXPORT void CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder_init(CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder *self);

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder *new_CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder *create_CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder_init();

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_Builder)

#endif

#pragma pop_macro("CoTouchlabAndroidThreadingTasksPersistedPersistedTaskQueueConfig_INCLUDE_ALL")
