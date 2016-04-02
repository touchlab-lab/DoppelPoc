//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/subjects/SubjectSubscriptionManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("RxSubjectsSubjectSubscriptionManager_INCLUDE_ALL")
#ifdef RxSubjectsSubjectSubscriptionManager_RESTRICT
#define RxSubjectsSubjectSubscriptionManager_INCLUDE_ALL 0
#else
#define RxSubjectsSubjectSubscriptionManager_INCLUDE_ALL 1
#endif
#undef RxSubjectsSubjectSubscriptionManager_RESTRICT

#if !defined (RxSubjectsSubjectSubscriptionManager_) && (RxSubjectsSubjectSubscriptionManager_INCLUDE_ALL || defined(RxSubjectsSubjectSubscriptionManager_INCLUDE))
#define RxSubjectsSubjectSubscriptionManager_

#define RxObservable_RESTRICT 1
#define RxObservable_OnSubscribe_INCLUDE 1
#include "rx/Observable.h"

@class IOSObjectArray;
@class JavaUtilConcurrentAtomicAtomicReferenceFieldUpdater;
@class RxInternalOperatorsNotificationLite;
@class RxSubjectsSubjectSubscriptionManager_State;
@class RxSubjectsSubjectSubscriptionManager_SubjectObserver;
@class RxSubscriber;
@protocol RxFunctionsAction1;

@interface RxSubjectsSubjectSubscriptionManager : NSObject < RxObservable_OnSubscribe > {
 @public
  volatile_id state_;
  volatile_id latest_;
  jboolean active_;
  id<RxFunctionsAction1> onStart_;
  id<RxFunctionsAction1> onAdded_;
  id<RxFunctionsAction1> onTerminated_;
  RxInternalOperatorsNotificationLite *nl_;
}

#pragma mark Public

- (void)callWithId:(RxSubscriber *)child;

#pragma mark Package-Private

- (instancetype)init;

- (jboolean)addWithRxSubjectsSubjectSubscriptionManager_SubjectObserver:(RxSubjectsSubjectSubscriptionManager_SubjectObserver *)o;

- (void)addUnsubscriberWithRxSubscriber:(RxSubscriber *)child
withRxSubjectsSubjectSubscriptionManager_SubjectObserver:(RxSubjectsSubjectSubscriptionManager_SubjectObserver *)bo;

- (id)get;

- (IOSObjectArray *)nextWithId:(id)n;

- (IOSObjectArray *)observers;

- (void)removeWithRxSubjectsSubjectSubscriptionManager_SubjectObserver:(RxSubjectsSubjectSubscriptionManager_SubjectObserver *)o;

- (void)setWithId:(id)value;

- (IOSObjectArray *)terminateWithId:(id)n;

@end

J2OBJC_STATIC_INIT(RxSubjectsSubjectSubscriptionManager)

J2OBJC_VOLATILE_FIELD_SETTER(RxSubjectsSubjectSubscriptionManager, state_, RxSubjectsSubjectSubscriptionManager_State *)
J2OBJC_VOLATILE_FIELD_SETTER(RxSubjectsSubjectSubscriptionManager, latest_, id)
J2OBJC_FIELD_SETTER(RxSubjectsSubjectSubscriptionManager, onStart_, id<RxFunctionsAction1>)
J2OBJC_FIELD_SETTER(RxSubjectsSubjectSubscriptionManager, onAdded_, id<RxFunctionsAction1>)
J2OBJC_FIELD_SETTER(RxSubjectsSubjectSubscriptionManager, onTerminated_, id<RxFunctionsAction1>)
J2OBJC_FIELD_SETTER(RxSubjectsSubjectSubscriptionManager, nl_, RxInternalOperatorsNotificationLite *)

inline JavaUtilConcurrentAtomicAtomicReferenceFieldUpdater *RxSubjectsSubjectSubscriptionManager_get_STATE_UPDATER();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilConcurrentAtomicAtomicReferenceFieldUpdater *RxSubjectsSubjectSubscriptionManager_STATE_UPDATER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxSubjectsSubjectSubscriptionManager, STATE_UPDATER, JavaUtilConcurrentAtomicAtomicReferenceFieldUpdater *)

inline JavaUtilConcurrentAtomicAtomicReferenceFieldUpdater *RxSubjectsSubjectSubscriptionManager_get_LATEST_UPDATER();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaUtilConcurrentAtomicAtomicReferenceFieldUpdater *RxSubjectsSubjectSubscriptionManager_LATEST_UPDATER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxSubjectsSubjectSubscriptionManager, LATEST_UPDATER, JavaUtilConcurrentAtomicAtomicReferenceFieldUpdater *)

FOUNDATION_EXPORT void RxSubjectsSubjectSubscriptionManager_init(RxSubjectsSubjectSubscriptionManager *self);

FOUNDATION_EXPORT RxSubjectsSubjectSubscriptionManager *new_RxSubjectsSubjectSubscriptionManager_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxSubjectsSubjectSubscriptionManager *create_RxSubjectsSubjectSubscriptionManager_init();

J2OBJC_TYPE_LITERAL_HEADER(RxSubjectsSubjectSubscriptionManager)

#endif

#if !defined (RxSubjectsSubjectSubscriptionManager_State_) && (RxSubjectsSubjectSubscriptionManager_INCLUDE_ALL || defined(RxSubjectsSubjectSubscriptionManager_State_INCLUDE))
#define RxSubjectsSubjectSubscriptionManager_State_

@class IOSObjectArray;
@class RxSubjectsSubjectSubscriptionManager_SubjectObserver;

@interface RxSubjectsSubjectSubscriptionManager_State : NSObject {
 @public
  jboolean terminated_;
  IOSObjectArray *observers_;
}

#pragma mark Public

- (instancetype)initWithBoolean:(jboolean)terminated
withRxSubjectsSubjectSubscriptionManager_SubjectObserverArray:(IOSObjectArray *)observers;

- (RxSubjectsSubjectSubscriptionManager_State *)addWithRxSubjectsSubjectSubscriptionManager_SubjectObserver:(RxSubjectsSubjectSubscriptionManager_SubjectObserver *)o;

- (RxSubjectsSubjectSubscriptionManager_State *)removeWithRxSubjectsSubjectSubscriptionManager_SubjectObserver:(RxSubjectsSubjectSubscriptionManager_SubjectObserver *)o;

@end

J2OBJC_STATIC_INIT(RxSubjectsSubjectSubscriptionManager_State)

J2OBJC_FIELD_SETTER(RxSubjectsSubjectSubscriptionManager_State, observers_, IOSObjectArray *)

inline IOSObjectArray *RxSubjectsSubjectSubscriptionManager_State_get_NO_OBSERVERS();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *RxSubjectsSubjectSubscriptionManager_State_NO_OBSERVERS;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxSubjectsSubjectSubscriptionManager_State, NO_OBSERVERS, IOSObjectArray *)

inline RxSubjectsSubjectSubscriptionManager_State *RxSubjectsSubjectSubscriptionManager_State_get_TERMINATED();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT RxSubjectsSubjectSubscriptionManager_State *RxSubjectsSubjectSubscriptionManager_State_TERMINATED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxSubjectsSubjectSubscriptionManager_State, TERMINATED, RxSubjectsSubjectSubscriptionManager_State *)

inline RxSubjectsSubjectSubscriptionManager_State *RxSubjectsSubjectSubscriptionManager_State_get_EMPTY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT RxSubjectsSubjectSubscriptionManager_State *RxSubjectsSubjectSubscriptionManager_State_EMPTY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxSubjectsSubjectSubscriptionManager_State, EMPTY, RxSubjectsSubjectSubscriptionManager_State *)

FOUNDATION_EXPORT void RxSubjectsSubjectSubscriptionManager_State_initWithBoolean_withRxSubjectsSubjectSubscriptionManager_SubjectObserverArray_(RxSubjectsSubjectSubscriptionManager_State *self, jboolean terminated, IOSObjectArray *observers);

FOUNDATION_EXPORT RxSubjectsSubjectSubscriptionManager_State *new_RxSubjectsSubjectSubscriptionManager_State_initWithBoolean_withRxSubjectsSubjectSubscriptionManager_SubjectObserverArray_(jboolean terminated, IOSObjectArray *observers) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxSubjectsSubjectSubscriptionManager_State *create_RxSubjectsSubjectSubscriptionManager_State_initWithBoolean_withRxSubjectsSubjectSubscriptionManager_SubjectObserverArray_(jboolean terminated, IOSObjectArray *observers);

J2OBJC_TYPE_LITERAL_HEADER(RxSubjectsSubjectSubscriptionManager_State)

#endif

#if !defined (RxSubjectsSubjectSubscriptionManager_SubjectObserver_) && (RxSubjectsSubjectSubscriptionManager_INCLUDE_ALL || defined(RxSubjectsSubjectSubscriptionManager_SubjectObserver_INCLUDE))
#define RxSubjectsSubjectSubscriptionManager_SubjectObserver_

#define RxObserver_RESTRICT 1
#define RxObserver_INCLUDE 1
#include "rx/Observer.h"

@class RxInternalOperatorsNotificationLite;
@protocol JavaUtilList;

@interface RxSubjectsSubjectSubscriptionManager_SubjectObserver : NSObject < RxObserver > {
 @public
  id<RxObserver> actual_;
  jboolean first_;
  jboolean emitting_;
  id<JavaUtilList> queue_;
  jboolean fastPath_;
  volatile_jboolean caughtUp_;
}

#pragma mark Public

- (instancetype)initWithRxObserver:(id<RxObserver>)actual;

- (id)index;

- (void)indexWithId:(id)newIndex;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)onNextWithId:(id)t;

#pragma mark Protected

- (void)acceptWithId:(id)n
withRxInternalOperatorsNotificationLite:(RxInternalOperatorsNotificationLite *)nl;

- (void)emitFirstWithId:(id)n
withRxInternalOperatorsNotificationLite:(RxInternalOperatorsNotificationLite *)nl;

- (void)emitLoopWithJavaUtilList:(id<JavaUtilList>)localQueue
                          withId:(id)current
withRxInternalOperatorsNotificationLite:(RxInternalOperatorsNotificationLite *)nl;

- (void)emitNextWithId:(id)n
withRxInternalOperatorsNotificationLite:(RxInternalOperatorsNotificationLite *)nl;

- (id<RxObserver>)getActual;

@end

J2OBJC_EMPTY_STATIC_INIT(RxSubjectsSubjectSubscriptionManager_SubjectObserver)

J2OBJC_FIELD_SETTER(RxSubjectsSubjectSubscriptionManager_SubjectObserver, actual_, id<RxObserver>)
J2OBJC_FIELD_SETTER(RxSubjectsSubjectSubscriptionManager_SubjectObserver, queue_, id<JavaUtilList>)

FOUNDATION_EXPORT void RxSubjectsSubjectSubscriptionManager_SubjectObserver_initWithRxObserver_(RxSubjectsSubjectSubscriptionManager_SubjectObserver *self, id<RxObserver> actual);

FOUNDATION_EXPORT RxSubjectsSubjectSubscriptionManager_SubjectObserver *new_RxSubjectsSubjectSubscriptionManager_SubjectObserver_initWithRxObserver_(id<RxObserver> actual) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxSubjectsSubjectSubscriptionManager_SubjectObserver *create_RxSubjectsSubjectSubscriptionManager_SubjectObserver_initWithRxObserver_(id<RxObserver> actual);

J2OBJC_TYPE_LITERAL_HEADER(RxSubjectsSubjectSubscriptionManager_SubjectObserver)

#endif

#pragma pop_macro("RxSubjectsSubjectSubscriptionManager_INCLUDE_ALL")
