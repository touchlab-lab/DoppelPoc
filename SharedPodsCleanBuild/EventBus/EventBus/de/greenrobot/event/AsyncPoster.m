//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/EventBus/EventBus/src/de/greenrobot/event/AsyncPoster.java
//

#include "J2ObjC_source.h"
#include "de/greenrobot/event/AsyncPoster.h"
#include "de/greenrobot/event/EventBus.h"
#include "de/greenrobot/event/PendingPost.h"
#include "de/greenrobot/event/PendingPostQueue.h"
#include "de/greenrobot/event/Subscription.h"
#include "java/lang/IllegalStateException.h"
#include "java/util/concurrent/ExecutorService.h"

@interface DeGreenrobotEventAsyncPoster () {
 @public
  DeGreenrobotEventPendingPostQueue *queue_;
  DeGreenrobotEventEventBus *eventBus_;
}

@end

J2OBJC_FIELD_SETTER(DeGreenrobotEventAsyncPoster, queue_, DeGreenrobotEventPendingPostQueue *)
J2OBJC_FIELD_SETTER(DeGreenrobotEventAsyncPoster, eventBus_, DeGreenrobotEventEventBus *)

@implementation DeGreenrobotEventAsyncPoster

- (instancetype)initWithDeGreenrobotEventEventBus:(DeGreenrobotEventEventBus *)eventBus {
  DeGreenrobotEventAsyncPoster_initWithDeGreenrobotEventEventBus_(self, eventBus);
  return self;
}

- (void)enqueueWithDeGreenrobotEventSubscription:(DeGreenrobotEventSubscription *)subscription
                                          withId:(id)event {
  DeGreenrobotEventPendingPost *pendingPost = DeGreenrobotEventPendingPost_obtainPendingPostWithDeGreenrobotEventSubscription_withId_(subscription, event);
  [((DeGreenrobotEventPendingPostQueue *) nil_chk(queue_)) enqueueWithDeGreenrobotEventPendingPost:pendingPost];
  [((id<JavaUtilConcurrentExecutorService>) nil_chk([((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) getExecutorService])) executeWithJavaLangRunnable:self];
}

- (void)run {
  DeGreenrobotEventPendingPost *pendingPost = [((DeGreenrobotEventPendingPostQueue *) nil_chk(queue_)) poll];
  if (pendingPost == nil) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"No pending post available");
  }
  [((DeGreenrobotEventEventBus *) nil_chk(eventBus_)) invokeSubscriberWithDeGreenrobotEventPendingPost:pendingPost];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithDeGreenrobotEventEventBus:", "AsyncPoster", NULL, 0x0, NULL, NULL },
    { "enqueueWithDeGreenrobotEventSubscription:withId:", "enqueue", "V", 0x1, NULL, NULL },
    { "run", NULL, "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "queue_", NULL, 0x12, "Lde.greenrobot.event.PendingPostQueue;", NULL, NULL, .constantValue.asLong = 0 },
    { "eventBus_", NULL, 0x12, "Lde.greenrobot.event.EventBus;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _DeGreenrobotEventAsyncPoster = { 2, "AsyncPoster", "de.greenrobot.event", NULL, 0x0, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_DeGreenrobotEventAsyncPoster;
}

@end

void DeGreenrobotEventAsyncPoster_initWithDeGreenrobotEventEventBus_(DeGreenrobotEventAsyncPoster *self, DeGreenrobotEventEventBus *eventBus) {
  NSObject_init(self);
  self->eventBus_ = eventBus;
  self->queue_ = new_DeGreenrobotEventPendingPostQueue_init();
}

DeGreenrobotEventAsyncPoster *new_DeGreenrobotEventAsyncPoster_initWithDeGreenrobotEventEventBus_(DeGreenrobotEventEventBus *eventBus) {
  DeGreenrobotEventAsyncPoster *self = [DeGreenrobotEventAsyncPoster alloc];
  DeGreenrobotEventAsyncPoster_initWithDeGreenrobotEventEventBus_(self, eventBus);
  return self;
}

DeGreenrobotEventAsyncPoster *create_DeGreenrobotEventAsyncPoster_initWithDeGreenrobotEventEventBus_(DeGreenrobotEventEventBus *eventBus) {
  return new_DeGreenrobotEventAsyncPoster_initWithDeGreenrobotEventEventBus_(eventBus);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DeGreenrobotEventAsyncPoster)
