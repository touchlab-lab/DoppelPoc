//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/BlockingOperatorMostRecent.java
//

#include "J2ObjC_header.h"

#pragma push_macro("RxInternalOperatorsBlockingOperatorMostRecent_INCLUDE_ALL")
#ifdef RxInternalOperatorsBlockingOperatorMostRecent_RESTRICT
#define RxInternalOperatorsBlockingOperatorMostRecent_INCLUDE_ALL 0
#else
#define RxInternalOperatorsBlockingOperatorMostRecent_INCLUDE_ALL 1
#endif
#undef RxInternalOperatorsBlockingOperatorMostRecent_RESTRICT

#if !defined (RxInternalOperatorsBlockingOperatorMostRecent_) && (RxInternalOperatorsBlockingOperatorMostRecent_INCLUDE_ALL || defined(RxInternalOperatorsBlockingOperatorMostRecent_INCLUDE))
#define RxInternalOperatorsBlockingOperatorMostRecent_

@class RxObservable;
@protocol JavaLangIterable;

@interface RxInternalOperatorsBlockingOperatorMostRecent : NSObject

#pragma mark Public

+ (id<JavaLangIterable>)mostRecentWithRxObservable:(RxObservable *)source
                                            withId:(id)initialValue;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsBlockingOperatorMostRecent)

FOUNDATION_EXPORT id<JavaLangIterable> RxInternalOperatorsBlockingOperatorMostRecent_mostRecentWithRxObservable_withId_(RxObservable *source, id initialValue);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsBlockingOperatorMostRecent)

#endif

#pragma pop_macro("RxInternalOperatorsBlockingOperatorMostRecent_INCLUDE_ALL")
