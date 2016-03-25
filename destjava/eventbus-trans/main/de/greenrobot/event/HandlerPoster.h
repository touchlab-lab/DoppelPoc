//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/EventBus/EventBus/src/de/greenrobot/event/HandlerPoster.java
//

#include "J2ObjC_header.h"

#pragma push_macro("DeGreenrobotEventHandlerPoster_INCLUDE_ALL")
#ifdef DeGreenrobotEventHandlerPoster_RESTRICT
#define DeGreenrobotEventHandlerPoster_INCLUDE_ALL 0
#else
#define DeGreenrobotEventHandlerPoster_INCLUDE_ALL 1
#endif
#undef DeGreenrobotEventHandlerPoster_RESTRICT

#if !defined (DeGreenrobotEventHandlerPoster_) && (DeGreenrobotEventHandlerPoster_INCLUDE_ALL || defined(DeGreenrobotEventHandlerPoster_INCLUDE))
#define DeGreenrobotEventHandlerPoster_

#define AndroidOsHandler_RESTRICT 1
#define AndroidOsHandler_INCLUDE 1
#include "android/os/Handler.h"

@class AndroidOsLooper;
@class AndroidOsMessage;
@class DeGreenrobotEventEventBus;
@class DeGreenrobotEventSubscription;

@interface DeGreenrobotEventHandlerPoster : AndroidOsHandler

#pragma mark Public

- (void)handleMessageWithAndroidOsMessage:(AndroidOsMessage *)msg;

#pragma mark Package-Private

- (instancetype)initWithDeGreenrobotEventEventBus:(DeGreenrobotEventEventBus *)eventBus
                              withAndroidOsLooper:(AndroidOsLooper *)looper
                                          withInt:(jint)maxMillisInsideHandleMessage;

- (void)enqueueWithDeGreenrobotEventSubscription:(DeGreenrobotEventSubscription *)subscription
                                          withId:(id)event;

@end

J2OBJC_EMPTY_STATIC_INIT(DeGreenrobotEventHandlerPoster)

FOUNDATION_EXPORT void DeGreenrobotEventHandlerPoster_initWithDeGreenrobotEventEventBus_withAndroidOsLooper_withInt_(DeGreenrobotEventHandlerPoster *self, DeGreenrobotEventEventBus *eventBus, AndroidOsLooper *looper, jint maxMillisInsideHandleMessage);

FOUNDATION_EXPORT DeGreenrobotEventHandlerPoster *new_DeGreenrobotEventHandlerPoster_initWithDeGreenrobotEventEventBus_withAndroidOsLooper_withInt_(DeGreenrobotEventEventBus *eventBus, AndroidOsLooper *looper, jint maxMillisInsideHandleMessage) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT DeGreenrobotEventHandlerPoster *create_DeGreenrobotEventHandlerPoster_initWithDeGreenrobotEventEventBus_withAndroidOsLooper_withInt_(DeGreenrobotEventEventBus *eventBus, AndroidOsLooper *looper, jint maxMillisInsideHandleMessage);

J2OBJC_TYPE_LITERAL_HEADER(DeGreenrobotEventHandlerPoster)

#endif

#pragma pop_macro("DeGreenrobotEventHandlerPoster_INCLUDE_ALL")
