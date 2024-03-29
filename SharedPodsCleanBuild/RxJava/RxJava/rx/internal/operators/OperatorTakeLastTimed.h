//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OperatorTakeLastTimed.java
//

#include "J2ObjC_header.h"

#pragma push_macro("RxInternalOperatorsOperatorTakeLastTimed_INCLUDE_ALL")
#ifdef RxInternalOperatorsOperatorTakeLastTimed_RESTRICT
#define RxInternalOperatorsOperatorTakeLastTimed_INCLUDE_ALL 0
#else
#define RxInternalOperatorsOperatorTakeLastTimed_INCLUDE_ALL 1
#endif
#undef RxInternalOperatorsOperatorTakeLastTimed_RESTRICT

#if !defined (RxInternalOperatorsOperatorTakeLastTimed_) && (RxInternalOperatorsOperatorTakeLastTimed_INCLUDE_ALL || defined(RxInternalOperatorsOperatorTakeLastTimed_INCLUDE))
#define RxInternalOperatorsOperatorTakeLastTimed_

#define RxObservable_RESTRICT 1
#define RxObservable_Operator_INCLUDE 1
#include "rx/Observable.h"

@class JavaUtilConcurrentTimeUnit;
@class RxScheduler;
@class RxSubscriber;

@interface RxInternalOperatorsOperatorTakeLastTimed : NSObject < RxObservable_Operator >

#pragma mark Public

- (instancetype)initWithInt:(jint)count
                   withLong:(jlong)time
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit
            withRxScheduler:(RxScheduler *)scheduler;

- (instancetype)initWithLong:(jlong)time
withJavaUtilConcurrentTimeUnit:(JavaUtilConcurrentTimeUnit *)unit
             withRxScheduler:(RxScheduler *)scheduler;

- (RxSubscriber *)callWithId:(RxSubscriber *)subscriber;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorTakeLastTimed)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorTakeLastTimed_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(RxInternalOperatorsOperatorTakeLastTimed *self, jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler);

FOUNDATION_EXPORT RxInternalOperatorsOperatorTakeLastTimed *new_RxInternalOperatorsOperatorTakeLastTimed_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorTakeLastTimed *create_RxInternalOperatorsOperatorTakeLastTimed_initWithLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler);

FOUNDATION_EXPORT void RxInternalOperatorsOperatorTakeLastTimed_initWithInt_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(RxInternalOperatorsOperatorTakeLastTimed *self, jint count, jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler);

FOUNDATION_EXPORT RxInternalOperatorsOperatorTakeLastTimed *new_RxInternalOperatorsOperatorTakeLastTimed_initWithInt_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(jint count, jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorTakeLastTimed *create_RxInternalOperatorsOperatorTakeLastTimed_initWithInt_withLong_withJavaUtilConcurrentTimeUnit_withRxScheduler_(jint count, jlong time, JavaUtilConcurrentTimeUnit *unit, RxScheduler *scheduler);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorTakeLastTimed)

#endif

#pragma pop_macro("RxInternalOperatorsOperatorTakeLastTimed_INCLUDE_ALL")
