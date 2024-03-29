//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OperatorBufferWithStartEndObservable.java
//

#include "J2ObjC_header.h"

#pragma push_macro("RxInternalOperatorsOperatorBufferWithStartEndObservable_INCLUDE_ALL")
#ifdef RxInternalOperatorsOperatorBufferWithStartEndObservable_RESTRICT
#define RxInternalOperatorsOperatorBufferWithStartEndObservable_INCLUDE_ALL 0
#else
#define RxInternalOperatorsOperatorBufferWithStartEndObservable_INCLUDE_ALL 1
#endif
#undef RxInternalOperatorsOperatorBufferWithStartEndObservable_RESTRICT

#if !defined (RxInternalOperatorsOperatorBufferWithStartEndObservable_) && (RxInternalOperatorsOperatorBufferWithStartEndObservable_INCLUDE_ALL || defined(RxInternalOperatorsOperatorBufferWithStartEndObservable_INCLUDE))
#define RxInternalOperatorsOperatorBufferWithStartEndObservable_

#define RxObservable_RESTRICT 1
#define RxObservable_Operator_INCLUDE 1
#include "rx/Observable.h"

@class RxObservable;
@class RxSubscriber;
@protocol RxFunctionsFunc1;

@interface RxInternalOperatorsOperatorBufferWithStartEndObservable : NSObject < RxObservable_Operator > {
 @public
  RxObservable *bufferOpening_;
  id<RxFunctionsFunc1> bufferClosing_;
}

#pragma mark Public

- (instancetype)initWithRxObservable:(RxObservable *)bufferOpenings
                withRxFunctionsFunc1:(id<RxFunctionsFunc1>)bufferClosingSelector;

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorBufferWithStartEndObservable)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithStartEndObservable, bufferOpening_, RxObservable *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithStartEndObservable, bufferClosing_, id<RxFunctionsFunc1>)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorBufferWithStartEndObservable_initWithRxObservable_withRxFunctionsFunc1_(RxInternalOperatorsOperatorBufferWithStartEndObservable *self, RxObservable *bufferOpenings, id<RxFunctionsFunc1> bufferClosingSelector);

FOUNDATION_EXPORT RxInternalOperatorsOperatorBufferWithStartEndObservable *new_RxInternalOperatorsOperatorBufferWithStartEndObservable_initWithRxObservable_withRxFunctionsFunc1_(RxObservable *bufferOpenings, id<RxFunctionsFunc1> bufferClosingSelector) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorBufferWithStartEndObservable *create_RxInternalOperatorsOperatorBufferWithStartEndObservable_initWithRxObservable_withRxFunctionsFunc1_(RxObservable *bufferOpenings, id<RxFunctionsFunc1> bufferClosingSelector);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorBufferWithStartEndObservable)

#endif

#if !defined (RxInternalOperatorsOperatorBufferWithStartEndObservable_BufferingSubscriber_) && (RxInternalOperatorsOperatorBufferWithStartEndObservable_INCLUDE_ALL || defined(RxInternalOperatorsOperatorBufferWithStartEndObservable_BufferingSubscriber_INCLUDE))
#define RxInternalOperatorsOperatorBufferWithStartEndObservable_BufferingSubscriber_

#define RxSubscriber_RESTRICT 1
#define RxSubscriber_INCLUDE 1
#include "rx/Subscriber.h"

@class RxInternalOperatorsOperatorBufferWithStartEndObservable;
@class RxSubscriptionsCompositeSubscription;
@protocol JavaUtilList;

@interface RxInternalOperatorsOperatorBufferWithStartEndObservable_BufferingSubscriber : RxSubscriber {
 @public
  RxSubscriber *child_;
  id<JavaUtilList> chunks_;
  jboolean done_;
  RxSubscriptionsCompositeSubscription *closingSubscriptions_;
}

#pragma mark Public

- (instancetype)initWithRxInternalOperatorsOperatorBufferWithStartEndObservable:(RxInternalOperatorsOperatorBufferWithStartEndObservable *)outer$
                                                               withRxSubscriber:(RxSubscriber *)child;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

- (void)endBufferWithJavaUtilList:(id<JavaUtilList>)toEnd;

- (void)startBufferWithId:(id)v;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorBufferWithStartEndObservable_BufferingSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithStartEndObservable_BufferingSubscriber, child_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithStartEndObservable_BufferingSubscriber, chunks_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithStartEndObservable_BufferingSubscriber, closingSubscriptions_, RxSubscriptionsCompositeSubscription *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorBufferWithStartEndObservable_BufferingSubscriber_initWithRxInternalOperatorsOperatorBufferWithStartEndObservable_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithStartEndObservable_BufferingSubscriber *self, RxInternalOperatorsOperatorBufferWithStartEndObservable *outer$, RxSubscriber *child);

FOUNDATION_EXPORT RxInternalOperatorsOperatorBufferWithStartEndObservable_BufferingSubscriber *new_RxInternalOperatorsOperatorBufferWithStartEndObservable_BufferingSubscriber_initWithRxInternalOperatorsOperatorBufferWithStartEndObservable_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithStartEndObservable *outer$, RxSubscriber *child) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorBufferWithStartEndObservable_BufferingSubscriber *create_RxInternalOperatorsOperatorBufferWithStartEndObservable_BufferingSubscriber_initWithRxInternalOperatorsOperatorBufferWithStartEndObservable_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithStartEndObservable *outer$, RxSubscriber *child);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorBufferWithStartEndObservable_BufferingSubscriber)

#endif

#pragma pop_macro("RxInternalOperatorsOperatorBufferWithStartEndObservable_INCLUDE_ALL")
