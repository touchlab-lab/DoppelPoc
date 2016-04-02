//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OperatorTake.java
//

#include "J2ObjC_header.h"

#pragma push_macro("RxInternalOperatorsOperatorTake_INCLUDE_ALL")
#ifdef RxInternalOperatorsOperatorTake_RESTRICT
#define RxInternalOperatorsOperatorTake_INCLUDE_ALL 0
#else
#define RxInternalOperatorsOperatorTake_INCLUDE_ALL 1
#endif
#undef RxInternalOperatorsOperatorTake_RESTRICT

#if !defined (RxInternalOperatorsOperatorTake_) && (RxInternalOperatorsOperatorTake_INCLUDE_ALL || defined(RxInternalOperatorsOperatorTake_INCLUDE))
#define RxInternalOperatorsOperatorTake_

#define RxObservable_RESTRICT 1
#define RxObservable_Operator_INCLUDE 1
#include "rx/Observable.h"

@class RxSubscriber;

@interface RxInternalOperatorsOperatorTake : NSObject < RxObservable_Operator > {
 @public
  jint limit_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)limit;

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorTake)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorTake_initWithInt_(RxInternalOperatorsOperatorTake *self, jint limit);

FOUNDATION_EXPORT RxInternalOperatorsOperatorTake *new_RxInternalOperatorsOperatorTake_initWithInt_(jint limit) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorTake *create_RxInternalOperatorsOperatorTake_initWithInt_(jint limit);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorTake)

#endif

#pragma pop_macro("RxInternalOperatorsOperatorTake_INCLUDE_ALL")
