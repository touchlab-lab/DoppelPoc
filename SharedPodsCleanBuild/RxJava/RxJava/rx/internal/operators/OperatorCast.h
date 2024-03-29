//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OperatorCast.java
//

#include "J2ObjC_header.h"

#pragma push_macro("RxInternalOperatorsOperatorCast_INCLUDE_ALL")
#ifdef RxInternalOperatorsOperatorCast_RESTRICT
#define RxInternalOperatorsOperatorCast_INCLUDE_ALL 0
#else
#define RxInternalOperatorsOperatorCast_INCLUDE_ALL 1
#endif
#undef RxInternalOperatorsOperatorCast_RESTRICT

#if !defined (RxInternalOperatorsOperatorCast_) && (RxInternalOperatorsOperatorCast_INCLUDE_ALL || defined(RxInternalOperatorsOperatorCast_INCLUDE))
#define RxInternalOperatorsOperatorCast_

#define RxObservable_RESTRICT 1
#define RxObservable_Operator_INCLUDE 1
#include "rx/Observable.h"

@class IOSClass;
@class RxSubscriber;

@interface RxInternalOperatorsOperatorCast : NSObject < RxObservable_Operator >

#pragma mark Public

- (instancetype)initWithIOSClass:(IOSClass *)castClass;

- (RxSubscriber *)callWithId:(RxSubscriber *)o;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOperatorCast)

FOUNDATION_EXPORT void RxInternalOperatorsOperatorCast_initWithIOSClass_(RxInternalOperatorsOperatorCast *self, IOSClass *castClass);

FOUNDATION_EXPORT RxInternalOperatorsOperatorCast *new_RxInternalOperatorsOperatorCast_initWithIOSClass_(IOSClass *castClass) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT RxInternalOperatorsOperatorCast *create_RxInternalOperatorsOperatorCast_initWithIOSClass_(IOSClass *castClass);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOperatorCast)

#endif

#pragma pop_macro("RxInternalOperatorsOperatorCast_INCLUDE_ALL")
