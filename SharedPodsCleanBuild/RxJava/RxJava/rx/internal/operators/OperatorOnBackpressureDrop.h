//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OperatorOnBackpressureDrop.java
//

#include "J2ObjC_header.h"

#pragma push_macro("RxInternalOperatorsOperatorOnBackpressureDrop_INCLUDE_ALL")
#ifdef RxInternalOperatorsOperatorOnBackpressureDrop_RESTRICT
#define RxInternalOperatorsOperatorOnBackpressureDrop_INCLUDE_ALL 0
#else
#define RxInternalOperatorsOperatorOnBackpressureDrop_INCLUDE_ALL 1
#endif
#undef RxInternalOperatorsOperatorOnBackpressureDrop_RESTRICT

#if !defined (RxInternalOperatorsOperatorOnBackpressureDrop_) && (RxInternalOperatorsOperatorOnBackpressureDrop_INCLUDE_ALL || defined(RxInternalOperatorsOperatorOnBackpressureDrop_INCLUDE))
#define RxInternalOperatorsOperatorOnBackpressureDrop_

#define RxObservable_RESTRICT 1
#define RxObservable_Operator_INCLUDE 1
#include "rx/Observable.h"

@class RxSubscriber;

@interface RxInternalOperatorsOperatorOnBackpressureDrop : NSObject < RxObservable_Operator >

#pragma mark Public

- (instancetype)init;

- (RxSubscriber *)callWithId:(RxSubscriber *)child;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorOnBackpressureDrop)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorOnBackpressureDrop_init(RxInternalOperatorsOperatorOnBackpressureDrop *self);

FOUNDATION_EXPORT RxInternalOperatorsOperatorOnBackpressureDrop *new_RxInternalOperatorsOperatorOnBackpressureDrop_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorOnBackpressureDrop *create_RxInternalOperatorsOperatorOnBackpressureDrop_init();

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorOnBackpressureDrop)

#endif

#pragma pop_macro("RxInternalOperatorsOperatorOnBackpressureDrop_INCLUDE_ALL")
