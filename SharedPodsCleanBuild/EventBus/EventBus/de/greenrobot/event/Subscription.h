//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/EventBus/EventBus/src/de/greenrobot/event/Subscription.java
//

#include "J2ObjC_header.h"

#pragma push_macro("DeGreenrobotEventSubscription_INCLUDE_ALL")
#ifdef DeGreenrobotEventSubscription_RESTRICT
#define DeGreenrobotEventSubscription_INCLUDE_ALL 0
#else
#define DeGreenrobotEventSubscription_INCLUDE_ALL 1
#endif
#undef DeGreenrobotEventSubscription_RESTRICT

#if !defined (DeGreenrobotEventSubscription_) && (DeGreenrobotEventSubscription_INCLUDE_ALL || defined(DeGreenrobotEventSubscription_INCLUDE))
#define DeGreenrobotEventSubscription_

@class DeGreenrobotEventSubscriberMethod;

@interface DeGreenrobotEventSubscription : NSObject {
 @public
  id subscriber_;
  DeGreenrobotEventSubscriberMethod *subscriberMethod_;
  jint priority_;
  volatile_jboolean active_;
}

#pragma mark Public

- (jboolean)isEqual:(id)other;

- (NSUInteger)hash;

#pragma mark Package-Private

- (instancetype)initWithId:(id)subscriber
withDeGreenrobotEventSubscriberMethod:(DeGreenrobotEventSubscriberMethod *)subscriberMethod
                   withInt:(jint)priority;

@end

J2OBJC_EMPTY_STATIC_INIT(DeGreenrobotEventSubscription)

J2OBJC_FIELD_SETTER(DeGreenrobotEventSubscription, subscriber_, id)
J2OBJC_FIELD_SETTER(DeGreenrobotEventSubscription, subscriberMethod_, DeGreenrobotEventSubscriberMethod *)

FOUNDATION_EXPORT void DeGreenrobotEventSubscription_initWithId_withDeGreenrobotEventSubscriberMethod_withInt_(DeGreenrobotEventSubscription *self, id subscriber, DeGreenrobotEventSubscriberMethod *subscriberMethod, jint priority);

FOUNDATION_EXPORT DeGreenrobotEventSubscription *new_DeGreenrobotEventSubscription_initWithId_withDeGreenrobotEventSubscriberMethod_withInt_(id subscriber, DeGreenrobotEventSubscriberMethod *subscriberMethod, jint priority) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT DeGreenrobotEventSubscription *create_DeGreenrobotEventSubscription_initWithId_withDeGreenrobotEventSubscriberMethod_withInt_(id subscriber, DeGreenrobotEventSubscriberMethod *subscriberMethod, jint priority);

J2OBJC_TYPE_LITERAL_HEADER(DeGreenrobotEventSubscription)

#endif

#pragma pop_macro("DeGreenrobotEventSubscription_INCLUDE_ALL")
