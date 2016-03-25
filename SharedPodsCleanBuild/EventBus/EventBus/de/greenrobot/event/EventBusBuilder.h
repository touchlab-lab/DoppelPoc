//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/EventBus/EventBus/src/de/greenrobot/event/EventBusBuilder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("DeGreenrobotEventEventBusBuilder_INCLUDE_ALL")
#ifdef DeGreenrobotEventEventBusBuilder_RESTRICT
#define DeGreenrobotEventEventBusBuilder_INCLUDE_ALL 0
#else
#define DeGreenrobotEventEventBusBuilder_INCLUDE_ALL 1
#endif
#undef DeGreenrobotEventEventBusBuilder_RESTRICT

#if !defined (DeGreenrobotEventEventBusBuilder_) && (DeGreenrobotEventEventBusBuilder_INCLUDE_ALL || defined(DeGreenrobotEventEventBusBuilder_INCLUDE))
#define DeGreenrobotEventEventBusBuilder_

@class DeGreenrobotEventEventBus;
@class IOSClass;
@protocol JavaUtilConcurrentExecutorService;
@protocol JavaUtilList;

@interface DeGreenrobotEventEventBusBuilder : NSObject {
 @public
  jboolean logSubscriberExceptions_;
  jboolean logNoSubscriberMessages_;
  jboolean sendSubscriberExceptionEvent_;
  jboolean sendNoSubscriberEvent_;
  jboolean throwSubscriberException_;
  jboolean eventInheritance_;
  id<JavaUtilConcurrentExecutorService> executorService_;
  id<JavaUtilList> skipMethodVerificationForClasses_;
}

#pragma mark Public

- (DeGreenrobotEventEventBus *)build;

- (DeGreenrobotEventEventBusBuilder *)eventInheritanceWithBoolean:(jboolean)eventInheritance;

- (DeGreenrobotEventEventBusBuilder *)executorServiceWithJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)executorService;

- (DeGreenrobotEventEventBus *)installDefaultEventBus;

- (DeGreenrobotEventEventBusBuilder *)logNoSubscriberMessagesWithBoolean:(jboolean)logNoSubscriberMessages;

- (DeGreenrobotEventEventBusBuilder *)logSubscriberExceptionsWithBoolean:(jboolean)logSubscriberExceptions;

- (DeGreenrobotEventEventBusBuilder *)sendNoSubscriberEventWithBoolean:(jboolean)sendNoSubscriberEvent;

- (DeGreenrobotEventEventBusBuilder *)sendSubscriberExceptionEventWithBoolean:(jboolean)sendSubscriberExceptionEvent;

- (DeGreenrobotEventEventBusBuilder *)skipMethodVerificationForWithIOSClass:(IOSClass *)clazz;

- (DeGreenrobotEventEventBusBuilder *)throwSubscriberExceptionWithBoolean:(jboolean)throwSubscriberException;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(DeGreenrobotEventEventBusBuilder)

J2OBJC_FIELD_SETTER(DeGreenrobotEventEventBusBuilder, executorService_, id<JavaUtilConcurrentExecutorService>)
J2OBJC_FIELD_SETTER(DeGreenrobotEventEventBusBuilder, skipMethodVerificationForClasses_, id<JavaUtilList>)

FOUNDATION_EXPORT void DeGreenrobotEventEventBusBuilder_init(DeGreenrobotEventEventBusBuilder *self);

FOUNDATION_EXPORT DeGreenrobotEventEventBusBuilder *new_DeGreenrobotEventEventBusBuilder_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT DeGreenrobotEventEventBusBuilder *create_DeGreenrobotEventEventBusBuilder_init();

J2OBJC_TYPE_LITERAL_HEADER(DeGreenrobotEventEventBusBuilder)

#endif

#pragma pop_macro("DeGreenrobotEventEventBusBuilder_INCLUDE_ALL")
