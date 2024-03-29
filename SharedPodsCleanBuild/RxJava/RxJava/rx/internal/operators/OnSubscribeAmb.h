//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/internal/operators/OnSubscribeAmb.java
//

#include "J2ObjC_header.h"

#pragma push_macro("RxInternalOperatorsOnSubscribeAmb_INCLUDE_ALL")
#ifdef RxInternalOperatorsOnSubscribeAmb_RESTRICT
#define RxInternalOperatorsOnSubscribeAmb_INCLUDE_ALL 0
#else
#define RxInternalOperatorsOnSubscribeAmb_INCLUDE_ALL 1
#endif
#undef RxInternalOperatorsOnSubscribeAmb_RESTRICT

#if !defined (RxInternalOperatorsOnSubscribeAmb_) && (RxInternalOperatorsOnSubscribeAmb_INCLUDE_ALL || defined(RxInternalOperatorsOnSubscribeAmb_INCLUDE))
#define RxInternalOperatorsOnSubscribeAmb_

#define RxObservable_RESTRICT 1
#define RxObservable_OnSubscribe_INCLUDE 1
#include "rx/Observable.h"

@class RxObservable;
@class RxSubscriber;
@protocol JavaLangIterable;

@interface RxInternalOperatorsOnSubscribeAmb : NSObject < RxObservable_OnSubscribe >

#pragma mark Public

+ (id<RxObservable_OnSubscribe>)ambWithJavaLangIterable:(id<JavaLangIterable>)sources;

+ (id<RxObservable_OnSubscribe>)ambWithRxObservable:(RxObservable *)o1
                                   withRxObservable:(RxObservable *)o2;

+ (id<RxObservable_OnSubscribe>)ambWithRxObservable:(RxObservable *)o1
                                   withRxObservable:(RxObservable *)o2
                                   withRxObservable:(RxObservable *)o3;

+ (id<RxObservable_OnSubscribe>)ambWithRxObservable:(RxObservable *)o1
                                   withRxObservable:(RxObservable *)o2
                                   withRxObservable:(RxObservable *)o3
                                   withRxObservable:(RxObservable *)o4;

+ (id<RxObservable_OnSubscribe>)ambWithRxObservable:(RxObservable *)o1
                                   withRxObservable:(RxObservable *)o2
                                   withRxObservable:(RxObservable *)o3
                                   withRxObservable:(RxObservable *)o4
                                   withRxObservable:(RxObservable *)o5;

+ (id<RxObservable_OnSubscribe>)ambWithRxObservable:(RxObservable *)o1
                                   withRxObservable:(RxObservable *)o2
                                   withRxObservable:(RxObservable *)o3
                                   withRxObservable:(RxObservable *)o4
                                   withRxObservable:(RxObservable *)o5
                                   withRxObservable:(RxObservable *)o6;

+ (id<RxObservable_OnSubscribe>)ambWithRxObservable:(RxObservable *)o1
                                   withRxObservable:(RxObservable *)o2
                                   withRxObservable:(RxObservable *)o3
                                   withRxObservable:(RxObservable *)o4
                                   withRxObservable:(RxObservable *)o5
                                   withRxObservable:(RxObservable *)o6
                                   withRxObservable:(RxObservable *)o7;

+ (id<RxObservable_OnSubscribe>)ambWithRxObservable:(RxObservable *)o1
                                   withRxObservable:(RxObservable *)o2
                                   withRxObservable:(RxObservable *)o3
                                   withRxObservable:(RxObservable *)o4
                                   withRxObservable:(RxObservable *)o5
                                   withRxObservable:(RxObservable *)o6
                                   withRxObservable:(RxObservable *)o7
                                   withRxObservable:(RxObservable *)o8;

+ (id<RxObservable_OnSubscribe>)ambWithRxObservable:(RxObservable *)o1
                                   withRxObservable:(RxObservable *)o2
                                   withRxObservable:(RxObservable *)o3
                                   withRxObservable:(RxObservable *)o4
                                   withRxObservable:(RxObservable *)o5
                                   withRxObservable:(RxObservable *)o6
                                   withRxObservable:(RxObservable *)o7
                                   withRxObservable:(RxObservable *)o8
                                   withRxObservable:(RxObservable *)o9;

- (void)callWithId:(RxSubscriber *)subscriber;

@end

J2OBJC_EMPTY_STATIC_INIT(RxInternalOperatorsOnSubscribeAmb)

FOUNDATION_EXPORT id<RxObservable_OnSubscribe> RxInternalOperatorsOnSubscribeAmb_ambWithRxObservable_withRxObservable_(RxObservable *o1, RxObservable *o2);

FOUNDATION_EXPORT id<RxObservable_OnSubscribe> RxInternalOperatorsOnSubscribeAmb_ambWithRxObservable_withRxObservable_withRxObservable_(RxObservable *o1, RxObservable *o2, RxObservable *o3);

FOUNDATION_EXPORT id<RxObservable_OnSubscribe> RxInternalOperatorsOnSubscribeAmb_ambWithRxObservable_withRxObservable_withRxObservable_withRxObservable_(RxObservable *o1, RxObservable *o2, RxObservable *o3, RxObservable *o4);

FOUNDATION_EXPORT id<RxObservable_OnSubscribe> RxInternalOperatorsOnSubscribeAmb_ambWithRxObservable_withRxObservable_withRxObservable_withRxObservable_withRxObservable_(RxObservable *o1, RxObservable *o2, RxObservable *o3, RxObservable *o4, RxObservable *o5);

FOUNDATION_EXPORT id<RxObservable_OnSubscribe> RxInternalOperatorsOnSubscribeAmb_ambWithRxObservable_withRxObservable_withRxObservable_withRxObservable_withRxObservable_withRxObservable_(RxObservable *o1, RxObservable *o2, RxObservable *o3, RxObservable *o4, RxObservable *o5, RxObservable *o6);

FOUNDATION_EXPORT id<RxObservable_OnSubscribe> RxInternalOperatorsOnSubscribeAmb_ambWithRxObservable_withRxObservable_withRxObservable_withRxObservable_withRxObservable_withRxObservable_withRxObservable_(RxObservable *o1, RxObservable *o2, RxObservable *o3, RxObservable *o4, RxObservable *o5, RxObservable *o6, RxObservable *o7);

FOUNDATION_EXPORT id<RxObservable_OnSubscribe> RxInternalOperatorsOnSubscribeAmb_ambWithRxObservable_withRxObservable_withRxObservable_withRxObservable_withRxObservable_withRxObservable_withRxObservable_withRxObservable_(RxObservable *o1, RxObservable *o2, RxObservable *o3, RxObservable *o4, RxObservable *o5, RxObservable *o6, RxObservable *o7, RxObservable *o8);

FOUNDATION_EXPORT id<RxObservable_OnSubscribe> RxInternalOperatorsOnSubscribeAmb_ambWithRxObservable_withRxObservable_withRxObservable_withRxObservable_withRxObservable_withRxObservable_withRxObservable_withRxObservable_withRxObservable_(RxObservable *o1, RxObservable *o2, RxObservable *o3, RxObservable *o4, RxObservable *o5, RxObservable *o6, RxObservable *o7, RxObservable *o8, RxObservable *o9);

FOUNDATION_EXPORT id<RxObservable_OnSubscribe> RxInternalOperatorsOnSubscribeAmb_ambWithJavaLangIterable_(id<JavaLangIterable> sources);

J2OBJC_TYPE_LITERAL_HEADER(RxInternalOperatorsOnSubscribeAmb)

#endif

#pragma pop_macro("RxInternalOperatorsOnSubscribeAmb_INCLUDE_ALL")
