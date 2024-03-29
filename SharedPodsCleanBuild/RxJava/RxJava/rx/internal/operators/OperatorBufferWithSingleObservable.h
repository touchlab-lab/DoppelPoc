//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OperatorBufferWithSingleObservable.java
//

#include "J2ObjC_header.h"

#pragma push_macro("RxInternalOperatorsOperatorBufferWithSingleObservable_INCLUDE_ALL")
#ifdef RxInternalOperatorsOperatorBufferWithSingleObservable_RESTRICT
#define RxInternalOperatorsOperatorBufferWithSingleObservable_INCLUDE_ALL 0
#else
#define RxInternalOperatorsOperatorBufferWithSingleObservable_INCLUDE_ALL 1
#endif
#undef RxInternalOperatorsOperatorBufferWithSingleObservable_RESTRICT

#if !defined (RxInternalOperatorsOperatorBufferWithSingleObservable_) && (RxInternalOperatorsOperatorBufferWithSingleObservable_INCLUDE_ALL || defined(RxInternalOperatorsOperatorBufferWithSingleObservable_INCLUDE))
#define RxInternalOperatorsOperatorBufferWithSingleObservable_

#define RxObservable_RESTRICT 1
#define RxObservable_Operator_INCLUDE 1
#include "rx/Observable.h"

@class RxObservable;
@class RxSubscriber;
@protocol RxFunctionsFunc0;

@interface RxInternalOperatorsOperatorBufferWithSingleObservable : NSObject < RxObservable_Operator > {
 @public
  id<RxFunctionsFunc0> bufferClosingSelector_;
  jint initialCapacity_;
}

#pragma mark Public

- (instancetype)initWithRxFunctionsFunc0:(id<RxFunctionsFunc0>)bufferClosingSelector
                                 withInt:(jint)initialCapacity;

- (instancetype)initWithRxObservable:(RxObservable *)bufferClosing
                             withInt:(jint)initialCapacity;

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorBufferWithSingleObservable)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithSingleObservable, bufferClosingSelector_, id<RxFunctionsFunc0>)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorBufferWithSingleObservable_initWithRxFunctionsFunc0_withInt_(RxInternalOperatorsOperatorBufferWithSingleObservable *self, id<RxFunctionsFunc0> bufferClosingSelector, jint initialCapacity);

FOUNDATION_EXPORT RxInternalOperatorsOperatorBufferWithSingleObservable *new_RxInternalOperatorsOperatorBufferWithSingleObservable_initWithRxFunctionsFunc0_withInt_(id<RxFunctionsFunc0> bufferClosingSelector, jint initialCapacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorBufferWithSingleObservable *create_RxInternalOperatorsOperatorBufferWithSingleObservable_initWithRxFunctionsFunc0_withInt_(id<RxFunctionsFunc0> bufferClosingSelector, jint initialCapacity);

FOUNDATION_EXPORT void RxInternalOperatorsOperatorBufferWithSingleObservable_initWithRxObservable_withInt_(RxInternalOperatorsOperatorBufferWithSingleObservable *self, RxObservable *bufferClosing, jint initialCapacity);

FOUNDATION_EXPORT RxInternalOperatorsOperatorBufferWithSingleObservable *new_RxInternalOperatorsOperatorBufferWithSingleObservable_initWithRxObservable_withInt_(RxObservable *bufferClosing, jint initialCapacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorBufferWithSingleObservable *create_RxInternalOperatorsOperatorBufferWithSingleObservable_initWithRxObservable_withInt_(RxObservable *bufferClosing, jint initialCapacity);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorBufferWithSingleObservable)

#endif

#if !defined (RxInternalOperatorsOperatorBufferWithSingleObservable_BufferingSubscriber_) && (RxInternalOperatorsOperatorBufferWithSingleObservable_INCLUDE_ALL || defined(RxInternalOperatorsOperatorBufferWithSingleObservable_BufferingSubscriber_INCLUDE))
#define RxInternalOperatorsOperatorBufferWithSingleObservable_BufferingSubscriber_

#define RxSubscriber_RESTRICT 1
#define RxSubscriber_INCLUDE 1
#include "rx/Subscriber.h"

@class RxInternalOperatorsOperatorBufferWithSingleObservable;
@protocol JavaUtilList;

@interface RxInternalOperatorsOperatorBufferWithSingleObservable_BufferingSubscriber : RxSubscriber {
 @public
  RxSubscriber *child_;
  id<JavaUtilList> chunk_;
  jboolean done_;
}

#pragma mark Public

- (instancetype)initWithRxInternalOperatorsOperatorBufferWithSingleObservable:(RxInternalOperatorsOperatorBufferWithSingleObservable *)outer$
                                                             withRxSubscriber:(RxSubscriber *)child;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

- (void)emit;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorBufferWithSingleObservable_BufferingSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithSingleObservable_BufferingSubscriber, child_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithSingleObservable_BufferingSubscriber, chunk_, id<JavaUtilList>)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorBufferWithSingleObservable_BufferingSubscriber_initWithRxInternalOperatorsOperatorBufferWithSingleObservable_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithSingleObservable_BufferingSubscriber *self, RxInternalOperatorsOperatorBufferWithSingleObservable *outer$, RxSubscriber *child);

FOUNDATION_EXPORT RxInternalOperatorsOperatorBufferWithSingleObservable_BufferingSubscriber *new_RxInternalOperatorsOperatorBufferWithSingleObservable_BufferingSubscriber_initWithRxInternalOperatorsOperatorBufferWithSingleObservable_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithSingleObservable *outer$, RxSubscriber *child) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorBufferWithSingleObservable_BufferingSubscriber *create_RxInternalOperatorsOperatorBufferWithSingleObservable_BufferingSubscriber_initWithRxInternalOperatorsOperatorBufferWithSingleObservable_withRxSubscriber_(RxInternalOperatorsOperatorBufferWithSingleObservable *outer$, RxSubscriber *child);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorBufferWithSingleObservable_BufferingSubscriber)

#endif

#pragma pop_macro("RxInternalOperatorsOperatorBufferWithSingleObservable_INCLUDE_ALL")
