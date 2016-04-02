//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/schedulers/ScheduledAction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("RxInternalSchedulersScheduledAction_INCLUDE_ALL")
#ifdef RxInternalSchedulersScheduledAction_RESTRICT
#define RxInternalSchedulersScheduledAction_INCLUDE_ALL 0
#else
#define RxInternalSchedulersScheduledAction_INCLUDE_ALL 1
#endif
#undef RxInternalSchedulersScheduledAction_RESTRICT

#if !defined (RxInternalSchedulersScheduledAction_) && (RxInternalSchedulersScheduledAction_INCLUDE_ALL || defined(RxInternalSchedulersScheduledAction_INCLUDE))
#define RxInternalSchedulersScheduledAction_

#define JavaLangRunnable_RESTRICT 1
#define JavaLangRunnable_INCLUDE 1
#include "java/lang/Runnable.h"

#define RxSubscription_RESTRICT 1
#define RxSubscription_INCLUDE 1
#include "rx/Subscription.h"

@class JavaUtilConcurrentAtomicAtomicIntegerFieldUpdater;
@class RxSubscriptionsCompositeSubscription;
@protocol RxFunctionsAction0;

@interface RxInternalSchedulersScheduledAction : NSObject < JavaLangRunnable, RxSubscription > {
 @public
  RxSubscriptionsCompositeSubscription *cancel_;
  id<RxFunctionsAction0> action_;
  volatile_jint once_;
}

#pragma mark Public

- (instancetype)initWithRxFunctionsAction0:(id<RxFunctionsAction0>)action;

- (void)addWithRxSubscription:(id<RxSubscription>)s;

- (void)addParentWithRxSubscriptionsCompositeSubscription:(RxSubscriptionsCompositeSubscription *)parent;

- (jboolean)isUnsubscribed;

- (void)run;

- (void)unsubscribe;

@end

J2OBJC_STATIC_INIT(RxInternalSchedulersScheduledAction)

J2OBJC_FIELD_SETTER(RxInternalSchedulersScheduledAction, cancel_, RxSubscriptionsCompositeSubscription *)
J2OBJC_FIELD_SETTER(RxInternalSchedulersScheduledAction, action_, id<RxFunctionsAction0>)

inline JavaUtilConcurrentAtomicAtomicIntegerFieldUpdater *RxInternalSchedulersScheduledAction_get_ONCE_UPDATER();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilConcurrentAtomicAtomicIntegerFieldUpdater *RxInternalSchedulersScheduledAction_ONCE_UPDATER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxInternalSchedulersScheduledAction, ONCE_UPDATER, JavaUtilConcurrentAtomicAtomicIntegerFieldUpdater *)

FOUNDATION_EXPORT void RxInternalSchedulersScheduledAction_initWithRxFunctionsAction0_(RxInternalSchedulersScheduledAction *self, id<RxFunctionsAction0> action);

FOUNDATION_EXPORT RxInternalSchedulersScheduledAction *new_RxInternalSchedulersScheduledAction_initWithRxFunctionsAction0_(id<RxFunctionsAction0> action) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalSchedulersScheduledAction *create_RxInternalSchedulersScheduledAction_initWithRxFunctionsAction0_(id<RxFunctionsAction0> action);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalSchedulersScheduledAction)

#endif

#pragma pop_macro("RxInternalSchedulersScheduledAction_INCLUDE_ALL")
