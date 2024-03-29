//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OperatorWindowWithSize.java
//

#include "J2ObjC_header.h"

#pragma push_macro("RxInternalOperatorsOperatorWindowWithSize_INCLUDE_ALL")
#ifdef RxInternalOperatorsOperatorWindowWithSize_RESTRICT
#define RxInternalOperatorsOperatorWindowWithSize_INCLUDE_ALL 0
#else
#define RxInternalOperatorsOperatorWindowWithSize_INCLUDE_ALL 1
#endif
#undef RxInternalOperatorsOperatorWindowWithSize_RESTRICT

#if !defined (RxInternalOperatorsOperatorWindowWithSize_) && (RxInternalOperatorsOperatorWindowWithSize_INCLUDE_ALL || defined(RxInternalOperatorsOperatorWindowWithSize_INCLUDE))
#define RxInternalOperatorsOperatorWindowWithSize_

#define RxObservable_RESTRICT 1
#define RxObservable_Operator_INCLUDE 1
#include "rx/Observable.h"

@class RxSubscriber;

@interface RxInternalOperatorsOperatorWindowWithSize : NSObject < RxObservable_Operator > {
 @public
  jint size_;
  jint skip_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)size
                    withInt:(jint)skip;

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorWindowWithSize)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorWindowWithSize_initWithInt_withInt_(RxInternalOperatorsOperatorWindowWithSize *self, jint size, jint skip);

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithSize *new_RxInternalOperatorsOperatorWindowWithSize_initWithInt_withInt_(jint size, jint skip) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithSize *create_RxInternalOperatorsOperatorWindowWithSize_initWithInt_withInt_(jint size, jint skip);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorWindowWithSize)

#endif

#if !defined (RxInternalOperatorsOperatorWindowWithSize_ExactSubscriber_) && (RxInternalOperatorsOperatorWindowWithSize_INCLUDE_ALL || defined(RxInternalOperatorsOperatorWindowWithSize_ExactSubscriber_INCLUDE))
#define RxInternalOperatorsOperatorWindowWithSize_ExactSubscriber_

#define RxSubscriber_RESTRICT 1
#define RxSubscriber_INCLUDE 1
#include "rx/Subscriber.h"

@class RxInternalOperatorsBufferUntilSubscriber;
@class RxInternalOperatorsOperatorWindowWithSize;
@protocol RxSubscription;

@interface RxInternalOperatorsOperatorWindowWithSize_ExactSubscriber : RxSubscriber {
 @public
  RxSubscriber *child_;
  jint count_;
  RxInternalOperatorsBufferUntilSubscriber *window_;
  volatile_jboolean noWindow_;
  id<RxSubscription> parentSubscription_;
}

#pragma mark Public

- (instancetype)initWithRxInternalOperatorsOperatorWindowWithSize:(RxInternalOperatorsOperatorWindowWithSize *)outer$
                                                 withRxSubscriber:(RxSubscriber *)child;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)onNextWithId:(id)t;

- (void)onStart;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorWindowWithSize_ExactSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithSize_ExactSubscriber, child_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithSize_ExactSubscriber, window_, RxInternalOperatorsBufferUntilSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithSize_ExactSubscriber, parentSubscription_, id<RxSubscription>)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorWindowWithSize_ExactSubscriber_initWithRxInternalOperatorsOperatorWindowWithSize_withRxSubscriber_(RxInternalOperatorsOperatorWindowWithSize_ExactSubscriber *self, RxInternalOperatorsOperatorWindowWithSize *outer$, RxSubscriber *child);

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithSize_ExactSubscriber *new_RxInternalOperatorsOperatorWindowWithSize_ExactSubscriber_initWithRxInternalOperatorsOperatorWindowWithSize_withRxSubscriber_(RxInternalOperatorsOperatorWindowWithSize *outer$, RxSubscriber *child) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithSize_ExactSubscriber *create_RxInternalOperatorsOperatorWindowWithSize_ExactSubscriber_initWithRxInternalOperatorsOperatorWindowWithSize_withRxSubscriber_(RxInternalOperatorsOperatorWindowWithSize *outer$, RxSubscriber *child);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorWindowWithSize_ExactSubscriber)

#endif

#if !defined (RxInternalOperatorsOperatorWindowWithSize_InexactSubscriber_) && (RxInternalOperatorsOperatorWindowWithSize_INCLUDE_ALL || defined(RxInternalOperatorsOperatorWindowWithSize_InexactSubscriber_INCLUDE))
#define RxInternalOperatorsOperatorWindowWithSize_InexactSubscriber_

#define RxSubscriber_RESTRICT 1
#define RxSubscriber_INCLUDE 1
#include "rx/Subscriber.h"

@class RxInternalOperatorsOperatorWindowWithSize;
@class RxInternalOperatorsOperatorWindowWithSize_CountedSubject;
@protocol JavaUtilList;
@protocol RxSubscription;

@interface RxInternalOperatorsOperatorWindowWithSize_InexactSubscriber : RxSubscriber {
 @public
  RxSubscriber *child_;
  jint count_;
  id<JavaUtilList> chunks_;
  id<RxSubscription> parentSubscription_;
}

#pragma mark Public

- (instancetype)initWithRxInternalOperatorsOperatorWindowWithSize:(RxInternalOperatorsOperatorWindowWithSize *)outer$
                                                 withRxSubscriber:(RxSubscriber *)child;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)onNextWithId:(id)t;

- (void)onStart;

#pragma mark Package-Private

- (RxInternalOperatorsOperatorWindowWithSize_CountedSubject *)createCountedSubject;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorWindowWithSize_InexactSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithSize_InexactSubscriber, child_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithSize_InexactSubscriber, chunks_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithSize_InexactSubscriber, parentSubscription_, id<RxSubscription>)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorWindowWithSize_InexactSubscriber_initWithRxInternalOperatorsOperatorWindowWithSize_withRxSubscriber_(RxInternalOperatorsOperatorWindowWithSize_InexactSubscriber *self, RxInternalOperatorsOperatorWindowWithSize *outer$, RxSubscriber *child);

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithSize_InexactSubscriber *new_RxInternalOperatorsOperatorWindowWithSize_InexactSubscriber_initWithRxInternalOperatorsOperatorWindowWithSize_withRxSubscriber_(RxInternalOperatorsOperatorWindowWithSize *outer$, RxSubscriber *child) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithSize_InexactSubscriber *create_RxInternalOperatorsOperatorWindowWithSize_InexactSubscriber_initWithRxInternalOperatorsOperatorWindowWithSize_withRxSubscriber_(RxInternalOperatorsOperatorWindowWithSize *outer$, RxSubscriber *child);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorWindowWithSize_InexactSubscriber)

#endif

#if !defined (RxInternalOperatorsOperatorWindowWithSize_CountedSubject_) && (RxInternalOperatorsOperatorWindowWithSize_INCLUDE_ALL || defined(RxInternalOperatorsOperatorWindowWithSize_CountedSubject_INCLUDE))
#define RxInternalOperatorsOperatorWindowWithSize_CountedSubject_

@class RxObservable;
@protocol RxObserver;

@interface RxInternalOperatorsOperatorWindowWithSize_CountedSubject : NSObject {
 @public
  id<RxObserver> consumer_;
  RxObservable *producer_;
  jint count_;
}

#pragma mark Public

- (instancetype)initWithRxObserver:(id<RxObserver>)consumer
                  withRxObservable:(RxObservable *)producer;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorWindowWithSize_CountedSubject)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithSize_CountedSubject, consumer_, id<RxObserver>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorWindowWithSize_CountedSubject, producer_, RxObservable *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorWindowWithSize_CountedSubject_initWithRxObserver_withRxObservable_(RxInternalOperatorsOperatorWindowWithSize_CountedSubject *self, id<RxObserver> consumer, RxObservable *producer);

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithSize_CountedSubject *new_RxInternalOperatorsOperatorWindowWithSize_CountedSubject_initWithRxObserver_withRxObservable_(id<RxObserver> consumer, RxObservable *producer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorWindowWithSize_CountedSubject *create_RxInternalOperatorsOperatorWindowWithSize_CountedSubject_initWithRxObserver_withRxObservable_(id<RxObserver> consumer, RxObservable *producer);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorWindowWithSize_CountedSubject)

#endif

#pragma pop_macro("RxInternalOperatorsOperatorWindowWithSize_INCLUDE_ALL")
