//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OperatorBufferWithTime.java
//

#include "J2ObjC_header.h"

#pragma push_macro("RxInternalOperatorsOperatorBufferWithTime_INCLUDE_ALL")
#ifdef RxInternalOperatorsOperatorBufferWithTime_RESTRICT
#define RxInternalOperatorsOperatorBufferWithTime_INCLUDE_ALL 0
#else
#define RxInternalOperatorsOperatorBufferWithTime_INCLUDE_ALL 1
#endif
#undef RxInternalOperatorsOperatorBufferWithTime_RESTRICT

#if !defined (RxInternalOperatorsOperatorBufferWithTime_) && (RxInternalOperatorsOperatorBufferWithTime_INCLUDE_ALL || defined(RxInternalOperatorsOperatorBufferWithTime_INCLUDE))
#define RxInternalOperatorsOperatorBufferWithTime_

#define RxObservable_RESTRICT 1
#define RxObservable_Operator_INCLUDE 1
#include "rx/Observable.h"

@class JavaUtilConcurrentTimeUnit;
@class RxScheduler;
@class RxSubscriber;

@interface RxInternalOperatorsOperatorBufferWithTime : NSObject < RxObservable_Operator > {
 @public
  jlong timespan_;
  jlong timeshift_;
  JavaUtilConcurrentTimeUnit *unit_;
  jint count_;
  RxScheduler *scheduler_;
}

#pragma mark Public

- (instancetype)initWithLong:(jlong)timespan
                    withLong:(jlong)timeshift
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit
                     withInt:(jint)count
             withRxScheduler:(RxScheduler *)scheduler;

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorBufferWithTime)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithTime, unit_, JavaUtilConcurrentTimeUnit *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithTime, scheduler_, RxScheduler *)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorBufferWithTime_initWithLong_withLong_withJavaUtilConcurrentTimeUnit_withInt_withRxScheduler_(RxInternalOperatorsOperatorBufferWithTime *self, jlong timespan, jlong timeshift, JavaUtilConcurrentTimeUnit *unit, jint count, RxScheduler *scheduler);

FOUNDATION_EXPORT RxInternalOperatorsOperatorBufferWithTime *new_RxInternalOperatorsOperatorBufferWithTime_initWithLong_withLong_withJavaUtilConcurrentTimeUnit_withInt_withRxScheduler_(jlong timespan, jlong timeshift, JavaUtilConcurrentTimeUnit *unit, jint count, RxScheduler *scheduler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorBufferWithTime *create_RxInternalOperatorsOperatorBufferWithTime_initWithLong_withLong_withJavaUtilConcurrentTimeUnit_withInt_withRxScheduler_(jlong timespan, jlong timeshift, JavaUtilConcurrentTimeUnit *unit, jint count, RxScheduler *scheduler);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorBufferWithTime)

#endif

#if !defined (RxInternalOperatorsOperatorBufferWithTime_InexactSubscriber_) && (RxInternalOperatorsOperatorBufferWithTime_INCLUDE_ALL || defined(RxInternalOperatorsOperatorBufferWithTime_InexactSubscriber_INCLUDE))
#define RxInternalOperatorsOperatorBufferWithTime_InexactSubscriber_

#define RxSubscriber_RESTRICT 1
#define RxSubscriber_INCLUDE 1
#include "rx/Subscriber.h"

@class RxInternalOperatorsOperatorBufferWithTime;
@class RxScheduler_Worker;
@protocol JavaUtilList;

@interface RxInternalOperatorsOperatorBufferWithTime_InexactSubscriber : RxSubscriber {
 @public
  RxSubscriber *child_;
  RxScheduler_Worker *inner_;
  id<JavaUtilList> chunks_;
  jboolean done_;
}

#pragma mark Public

- (instancetype)initWithRxInternalOperatorsOperatorBufferWithTime:(RxInternalOperatorsOperatorBufferWithTime *)outer$
                                                 withRxSubscriber:(RxSubscriber *)child
                                           withRxScheduler_Worker:(RxScheduler_Worker *)inner;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

- (void)emitChunkWithJavaUtilList:(id<JavaUtilList>)chunkToEmit;

- (void)scheduleChunk;

- (void)startNewChunk;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorBufferWithTime_InexactSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithTime_InexactSubscriber, child_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithTime_InexactSubscriber, inner_, RxScheduler_Worker *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithTime_InexactSubscriber, chunks_, id<JavaUtilList>)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorBufferWithTime_InexactSubscriber_initWithRxInternalOperatorsOperatorBufferWithTime_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorBufferWithTime_InexactSubscriber *self, RxInternalOperatorsOperatorBufferWithTime *outer$, RxSubscriber *child, RxScheduler_Worker *inner);

FOUNDATION_EXPORT RxInternalOperatorsOperatorBufferWithTime_InexactSubscriber *new_RxInternalOperatorsOperatorBufferWithTime_InexactSubscriber_initWithRxInternalOperatorsOperatorBufferWithTime_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorBufferWithTime *outer$, RxSubscriber *child, RxScheduler_Worker *inner) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorBufferWithTime_InexactSubscriber *create_RxInternalOperatorsOperatorBufferWithTime_InexactSubscriber_initWithRxInternalOperatorsOperatorBufferWithTime_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorBufferWithTime *outer$, RxSubscriber *child, RxScheduler_Worker *inner);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorBufferWithTime_InexactSubscriber)

#endif

#if !defined (RxInternalOperatorsOperatorBufferWithTime_ExactSubscriber_) && (RxInternalOperatorsOperatorBufferWithTime_INCLUDE_ALL || defined(RxInternalOperatorsOperatorBufferWithTime_ExactSubscriber_INCLUDE))
#define RxInternalOperatorsOperatorBufferWithTime_ExactSubscriber_

#define RxSubscriber_RESTRICT 1
#define RxSubscriber_INCLUDE 1
#include "rx/Subscriber.h"

@class RxInternalOperatorsOperatorBufferWithTime;
@class RxScheduler_Worker;
@protocol JavaUtilList;

@interface RxInternalOperatorsOperatorBufferWithTime_ExactSubscriber : RxSubscriber {
 @public
  RxSubscriber *child_;
  RxScheduler_Worker *inner_;
  id<JavaUtilList> chunk_;
  jboolean done_;
}

#pragma mark Public

- (instancetype)initWithRxInternalOperatorsOperatorBufferWithTime:(RxInternalOperatorsOperatorBufferWithTime *)outer$
                                                 withRxSubscriber:(RxSubscriber *)child
                                           withRxScheduler_Worker:(RxScheduler_Worker *)inner;

- (void)onCompleted;

- (void)onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define onErrorWithJavaLangThrowable onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)onNextWithId:(id)t;

#pragma mark Package-Private

- (void)emit;

- (void)scheduleExact;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorBufferWithTime_ExactSubscriber)

J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithTime_ExactSubscriber, child_, RxSubscriber *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithTime_ExactSubscriber, inner_, RxScheduler_Worker *)
J2OBJC_FIELD_SETTER(RxInternalOperatorsOperatorBufferWithTime_ExactSubscriber, chunk_, id<JavaUtilList>)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorBufferWithTime_ExactSubscriber_initWithRxInternalOperatorsOperatorBufferWithTime_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorBufferWithTime_ExactSubscriber *self, RxInternalOperatorsOperatorBufferWithTime *outer$, RxSubscriber *child, RxScheduler_Worker *inner);

FOUNDATION_EXPORT RxInternalOperatorsOperatorBufferWithTime_ExactSubscriber *new_RxInternalOperatorsOperatorBufferWithTime_ExactSubscriber_initWithRxInternalOperatorsOperatorBufferWithTime_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorBufferWithTime *outer$, RxSubscriber *child, RxScheduler_Worker *inner) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorBufferWithTime_ExactSubscriber *create_RxInternalOperatorsOperatorBufferWithTime_ExactSubscriber_initWithRxInternalOperatorsOperatorBufferWithTime_withRxSubscriber_withRxScheduler_Worker_(RxInternalOperatorsOperatorBufferWithTime *outer$, RxSubscriber *child, RxScheduler_Worker *inner);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorBufferWithTime_ExactSubscriber)

#endif

#pragma pop_macro("RxInternalOperatorsOperatorBufferWithTime_INCLUDE_ALL")
