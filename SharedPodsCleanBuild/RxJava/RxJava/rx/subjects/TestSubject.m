//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/subjects/TestSubject.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/concurrent/TimeUnit.h"
#include "rx/Observable.h"
#include "rx/Observer.h"
#include "rx/Scheduler.h"
#include "rx/Subscription.h"
#include "rx/functions/Action0.h"
#include "rx/functions/Action1.h"
#include "rx/internal/operators/NotificationLite.h"
#include "rx/schedulers/TestScheduler.h"
#include "rx/subjects/Subject.h"
#include "rx/subjects/SubjectSubscriptionManager.h"
#include "rx/subjects/TestSubject.h"

@interface RxSubjectsTestSubject () {
 @public
  RxSubjectsSubjectSubscriptionManager *state_;
  RxScheduler_Worker *innerScheduler_;
}

- (void)_onCompleted;

- (void)_onErrorWithNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define _onErrorWithJavaLangThrowable _onErrorWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (void)_onNextWithId:(id)v;

@end

J2OBJC_FIELD_SETTER(RxSubjectsTestSubject, state_, RxSubjectsSubjectSubscriptionManager *)
J2OBJC_FIELD_SETTER(RxSubjectsTestSubject, innerScheduler_, RxScheduler_Worker *)

__attribute__((unused)) static void RxSubjectsTestSubject__onCompleted(RxSubjectsTestSubject *self);

__attribute__((unused)) static void RxSubjectsTestSubject__onErrorWithNSException_(RxSubjectsTestSubject *self, NSException *e);

__attribute__((unused)) static void RxSubjectsTestSubject__onNextWithId_(RxSubjectsTestSubject *self, id v);

@interface RxSubjectsTestSubject_$1 : NSObject < RxFunctionsAction1 > {
 @public
  RxSubjectsSubjectSubscriptionManager *val$state_;
}

- (void)callWithId:(RxSubjectsSubjectSubscriptionManager_SubjectObserver *)o;

- (instancetype)initWithRxSubjectsSubjectSubscriptionManager:(RxSubjectsSubjectSubscriptionManager *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxSubjectsTestSubject_$1)

J2OBJC_FIELD_SETTER(RxSubjectsTestSubject_$1, val$state_, RxSubjectsSubjectSubscriptionManager *)

__attribute__((unused)) static void RxSubjectsTestSubject_$1_initWithRxSubjectsSubjectSubscriptionManager_(RxSubjectsTestSubject_$1 *self, RxSubjectsSubjectSubscriptionManager *capture$0);

__attribute__((unused)) static RxSubjectsTestSubject_$1 *new_RxSubjectsTestSubject_$1_initWithRxSubjectsSubjectSubscriptionManager_(RxSubjectsSubjectSubscriptionManager *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxSubjectsTestSubject_$1 *create_RxSubjectsTestSubject_$1_initWithRxSubjectsSubjectSubscriptionManager_(RxSubjectsSubjectSubscriptionManager *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxSubjectsTestSubject_$1)

@interface RxSubjectsTestSubject_$2 : NSObject < RxFunctionsAction0 > {
 @public
  RxSubjectsTestSubject *this$0_;
}

- (void)call;

- (instancetype)initWithRxSubjectsTestSubject:(RxSubjectsTestSubject *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(RxSubjectsTestSubject_$2)

J2OBJC_FIELD_SETTER(RxSubjectsTestSubject_$2, this$0_, RxSubjectsTestSubject *)

__attribute__((unused)) static void RxSubjectsTestSubject_$2_initWithRxSubjectsTestSubject_(RxSubjectsTestSubject_$2 *self, RxSubjectsTestSubject *outer$);

__attribute__((unused)) static RxSubjectsTestSubject_$2 *new_RxSubjectsTestSubject_$2_initWithRxSubjectsTestSubject_(RxSubjectsTestSubject *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxSubjectsTestSubject_$2 *create_RxSubjectsTestSubject_$2_initWithRxSubjectsTestSubject_(RxSubjectsTestSubject *outer$);

J2OBJC_TYPE_LITERAL_HEADER(RxSubjectsTestSubject_$2)

@interface RxSubjectsTestSubject_$3 : NSObject < RxFunctionsAction0 > {
 @public
  RxSubjectsTestSubject *this$0_;
  NSException *val$e_;
}

- (void)call;

- (instancetype)initWithRxSubjectsTestSubject:(RxSubjectsTestSubject *)outer$
                              withNSException:(NSException *)capture$0;
#ifdef J2OBJC_RENAME_ALIASES
#define withJavaLangThrowable withNSException
#endif // J2OBJC_RENAME_ALIASES

@end

J2OBJC_EMPTY_STATIC_INIT(RxSubjectsTestSubject_$3)

J2OBJC_FIELD_SETTER(RxSubjectsTestSubject_$3, this$0_, RxSubjectsTestSubject *)
J2OBJC_FIELD_SETTER(RxSubjectsTestSubject_$3, val$e_, NSException *)

__attribute__((unused)) static void RxSubjectsTestSubject_$3_initWithRxSubjectsTestSubject_withNSException_(RxSubjectsTestSubject_$3 *self, RxSubjectsTestSubject *outer$, NSException *capture$0);

__attribute__((unused)) static RxSubjectsTestSubject_$3 *new_RxSubjectsTestSubject_$3_initWithRxSubjectsTestSubject_withNSException_(RxSubjectsTestSubject *outer$, NSException *capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxSubjectsTestSubject_$3 *create_RxSubjectsTestSubject_$3_initWithRxSubjectsTestSubject_withNSException_(RxSubjectsTestSubject *outer$, NSException *capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxSubjectsTestSubject_$3)

@interface RxSubjectsTestSubject_$4 : NSObject < RxFunctionsAction0 > {
 @public
  RxSubjectsTestSubject *this$0_;
  id val$v_;
}

- (void)call;

- (instancetype)initWithRxSubjectsTestSubject:(RxSubjectsTestSubject *)outer$
                                       withId:(id)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(RxSubjectsTestSubject_$4)

J2OBJC_FIELD_SETTER(RxSubjectsTestSubject_$4, this$0_, RxSubjectsTestSubject *)
J2OBJC_FIELD_SETTER(RxSubjectsTestSubject_$4, val$v_, id)

__attribute__((unused)) static void RxSubjectsTestSubject_$4_initWithRxSubjectsTestSubject_withId_(RxSubjectsTestSubject_$4 *self, RxSubjectsTestSubject *outer$, id capture$0);

__attribute__((unused)) static RxSubjectsTestSubject_$4 *new_RxSubjectsTestSubject_$4_initWithRxSubjectsTestSubject_withId_(RxSubjectsTestSubject *outer$, id capture$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxSubjectsTestSubject_$4 *create_RxSubjectsTestSubject_$4_initWithRxSubjectsTestSubject_withId_(RxSubjectsTestSubject *outer$, id capture$0);

J2OBJC_TYPE_LITERAL_HEADER(RxSubjectsTestSubject_$4)

@implementation RxSubjectsTestSubject

+ (RxSubjectsTestSubject *)createWithRxSchedulersTestScheduler:(RxSchedulersTestScheduler *)scheduler {
  return RxSubjectsTestSubject_createWithRxSchedulersTestScheduler_(scheduler);
}

- (instancetype)initWithRxObservable_OnSubscribe:(id<RxObservable_OnSubscribe>)onSubscribe
        withRxSubjectsSubjectSubscriptionManager:(RxSubjectsSubjectSubscriptionManager *)state
                   withRxSchedulersTestScheduler:(RxSchedulersTestScheduler *)scheduler {
  RxSubjectsTestSubject_initWithRxObservable_OnSubscribe_withRxSubjectsSubjectSubscriptionManager_withRxSchedulersTestScheduler_(self, onSubscribe, state, scheduler);
  return self;
}

- (void)onCompleted {
  [self onCompletedWithLong:[((RxScheduler_Worker *) nil_chk(innerScheduler_)) now]];
}

- (void)_onCompleted {
  RxSubjectsTestSubject__onCompleted(self);
}

- (void)onCompletedWithLong:(jlong)timeInMilliseconds {
  (void) [((RxScheduler_Worker *) nil_chk(innerScheduler_)) scheduleWithRxFunctionsAction0:new_RxSubjectsTestSubject_$2_initWithRxSubjectsTestSubject_(self) withLong:timeInMilliseconds withJavaUtilConcurrentTimeUnit:JreLoadEnum(JavaUtilConcurrentTimeUnit, MILLISECONDS)];
}

- (void)onErrorWithNSException:(NSException *)e {
  [self onErrorWithNSException:e withLong:[((RxScheduler_Worker *) nil_chk(innerScheduler_)) now]];
}

- (void)_onErrorWithNSException:(NSException *)e {
  RxSubjectsTestSubject__onErrorWithNSException_(self, e);
}

- (void)onErrorWithNSException:(NSException *)e
                      withLong:(jlong)timeInMilliseconds {
  (void) [((RxScheduler_Worker *) nil_chk(innerScheduler_)) scheduleWithRxFunctionsAction0:new_RxSubjectsTestSubject_$3_initWithRxSubjectsTestSubject_withNSException_(self, e) withLong:timeInMilliseconds withJavaUtilConcurrentTimeUnit:JreLoadEnum(JavaUtilConcurrentTimeUnit, MILLISECONDS)];
}

- (void)onNextWithId:(id)v {
  [self onNextWithId:v withLong:[((RxScheduler_Worker *) nil_chk(innerScheduler_)) now]];
}

- (void)_onNextWithId:(id)v {
  RxSubjectsTestSubject__onNextWithId_(self, v);
}

- (void)onNextWithId:(id)v
            withLong:(jlong)timeInMilliseconds {
  (void) [((RxScheduler_Worker *) nil_chk(innerScheduler_)) scheduleWithRxFunctionsAction0:new_RxSubjectsTestSubject_$4_initWithRxSubjectsTestSubject_withId_(self, v) withLong:timeInMilliseconds withJavaUtilConcurrentTimeUnit:JreLoadEnum(JavaUtilConcurrentTimeUnit, MILLISECONDS)];
}

- (jboolean)hasObservers {
  return ((IOSObjectArray *) nil_chk([((RxSubjectsSubjectSubscriptionManager *) nil_chk(state_)) observers]))->size_ > 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createWithRxSchedulersTestScheduler:", "create", "Lrx.subjects.TestSubject;", 0x9, NULL, "<T:Ljava/lang/Object;>(Lrx/schedulers/TestScheduler;)Lrx/subjects/TestSubject<TT;>;" },
    { "initWithRxObservable_OnSubscribe:withRxSubjectsSubjectSubscriptionManager:withRxSchedulersTestScheduler:", "TestSubject", NULL, 0x4, NULL, "(Lrx/Observable$OnSubscribe<TT;>;Lrx/subjects/SubjectSubscriptionManager<TT;>;Lrx/schedulers/TestScheduler;)V" },
    { "onCompleted", NULL, "V", 0x1, NULL, NULL },
    { "_onCompleted", NULL, "V", 0x2, NULL, NULL },
    { "onCompletedWithLong:", "onCompleted", "V", 0x1, NULL, NULL },
    { "onErrorWithNSException:", "onError", "V", 0x1, NULL, NULL },
    { "_onErrorWithNSException:", "_onError", "V", 0x2, NULL, NULL },
    { "onErrorWithNSException:withLong:", "onError", "V", 0x1, NULL, NULL },
    { "onNextWithId:", "onNext", "V", 0x1, NULL, "(TT;)V" },
    { "_onNextWithId:", "_onNext", "V", 0x2, NULL, "(TT;)V" },
    { "onNextWithId:withLong:", "onNext", "V", 0x1, NULL, "(TT;J)V" },
    { "hasObservers", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "state_", NULL, 0x12, "Lrx.subjects.SubjectSubscriptionManager;", NULL, "Lrx/subjects/SubjectSubscriptionManager<TT;>;", .constantValue.asLong = 0 },
    { "innerScheduler_", NULL, 0x12, "Lrx.Scheduler$Worker;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TT;", "TT;"};
  static const J2ObjcClassInfo _RxSubjectsTestSubject = { 2, "TestSubject", "rx.subjects", NULL, 0x11, 12, methods, 2, fields, 2, superclass_type_args, 0, NULL, NULL, "<T:Ljava/lang/Object;>Lrx/subjects/Subject<TT;TT;>;" };
  return &_RxSubjectsTestSubject;
}

@end

RxSubjectsTestSubject *RxSubjectsTestSubject_createWithRxSchedulersTestScheduler_(RxSchedulersTestScheduler *scheduler) {
  RxSubjectsTestSubject_initialize();
  RxSubjectsSubjectSubscriptionManager *state = new_RxSubjectsSubjectSubscriptionManager_init();
  state->onAdded_ = new_RxSubjectsTestSubject_$1_initWithRxSubjectsSubjectSubscriptionManager_(state);
  state->onTerminated_ = state->onAdded_;
  return new_RxSubjectsTestSubject_initWithRxObservable_OnSubscribe_withRxSubjectsSubjectSubscriptionManager_withRxSchedulersTestScheduler_(state, state, scheduler);
}

void RxSubjectsTestSubject_initWithRxObservable_OnSubscribe_withRxSubjectsSubjectSubscriptionManager_withRxSchedulersTestScheduler_(RxSubjectsTestSubject *self, id<RxObservable_OnSubscribe> onSubscribe, RxSubjectsSubjectSubscriptionManager *state, RxSchedulersTestScheduler *scheduler) {
  RxSubjectsSubject_initWithRxObservable_OnSubscribe_(self, onSubscribe);
  self->state_ = state;
  self->innerScheduler_ = [((RxSchedulersTestScheduler *) nil_chk(scheduler)) createWorker];
}

RxSubjectsTestSubject *new_RxSubjectsTestSubject_initWithRxObservable_OnSubscribe_withRxSubjectsSubjectSubscriptionManager_withRxSchedulersTestScheduler_(id<RxObservable_OnSubscribe> onSubscribe, RxSubjectsSubjectSubscriptionManager *state, RxSchedulersTestScheduler *scheduler) {
  RxSubjectsTestSubject *self = [RxSubjectsTestSubject alloc];
  RxSubjectsTestSubject_initWithRxObservable_OnSubscribe_withRxSubjectsSubjectSubscriptionManager_withRxSchedulersTestScheduler_(self, onSubscribe, state, scheduler);
  return self;
}

RxSubjectsTestSubject *create_RxSubjectsTestSubject_initWithRxObservable_OnSubscribe_withRxSubjectsSubjectSubscriptionManager_withRxSchedulersTestScheduler_(id<RxObservable_OnSubscribe> onSubscribe, RxSubjectsSubjectSubscriptionManager *state, RxSchedulersTestScheduler *scheduler) {
  return new_RxSubjectsTestSubject_initWithRxObservable_OnSubscribe_withRxSubjectsSubjectSubscriptionManager_withRxSchedulersTestScheduler_(onSubscribe, state, scheduler);
}

void RxSubjectsTestSubject__onCompleted(RxSubjectsTestSubject *self) {
  if (((RxSubjectsSubjectSubscriptionManager *) nil_chk(self->state_))->active_) {
    {
      IOSObjectArray *a__ = [self->state_ terminateWithId:[((RxInternalOperatorsNotificationLite *) nil_chk(RxInternalOperatorsNotificationLite_instance())) completed]];
      RxSubjectsSubjectSubscriptionManager_SubjectObserver * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      RxSubjectsSubjectSubscriptionManager_SubjectObserver * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        RxSubjectsSubjectSubscriptionManager_SubjectObserver *bo = *b__++;
        [((RxSubjectsSubjectSubscriptionManager_SubjectObserver *) nil_chk(bo)) onCompleted];
      }
    }
  }
}

void RxSubjectsTestSubject__onErrorWithNSException_(RxSubjectsTestSubject *self, NSException *e) {
  if (((RxSubjectsSubjectSubscriptionManager *) nil_chk(self->state_))->active_) {
    {
      IOSObjectArray *a__ = [self->state_ terminateWithId:[((RxInternalOperatorsNotificationLite *) nil_chk(RxInternalOperatorsNotificationLite_instance())) errorWithNSException:e]];
      RxSubjectsSubjectSubscriptionManager_SubjectObserver * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      RxSubjectsSubjectSubscriptionManager_SubjectObserver * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        RxSubjectsSubjectSubscriptionManager_SubjectObserver *bo = *b__++;
        [((RxSubjectsSubjectSubscriptionManager_SubjectObserver *) nil_chk(bo)) onErrorWithNSException:e];
      }
    }
  }
}

void RxSubjectsTestSubject__onNextWithId_(RxSubjectsTestSubject *self, id v) {
  {
    IOSObjectArray *a__ = [((RxSubjectsSubjectSubscriptionManager *) nil_chk(self->state_)) observers];
    RxSubjectsSubjectSubscriptionManager_SubjectObserver * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    RxSubjectsSubjectSubscriptionManager_SubjectObserver * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<RxObserver> o = *b__++;
      [((id<RxObserver>) nil_chk(o)) onNextWithId:v];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxSubjectsTestSubject)

@implementation RxSubjectsTestSubject_$1

- (void)callWithId:(RxSubjectsSubjectSubscriptionManager_SubjectObserver *)o {
  [((RxSubjectsSubjectSubscriptionManager_SubjectObserver *) nil_chk(o)) emitFirstWithId:[((RxSubjectsSubjectSubscriptionManager *) nil_chk(val$state_)) get] withRxInternalOperatorsNotificationLite:val$state_->nl_];
}

- (instancetype)initWithRxSubjectsSubjectSubscriptionManager:(RxSubjectsSubjectSubscriptionManager *)capture$0 {
  RxSubjectsTestSubject_$1_initWithRxSubjectsSubjectSubscriptionManager_(self, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithId:", "call", "V", 0x1, NULL, "(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;)V" },
    { "initWithRxSubjectsSubjectSubscriptionManager:", "", NULL, 0x0, NULL, "(Lrx/subjects/SubjectSubscriptionManager<TT;>;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$state_", NULL, 0x1012, "Lrx.subjects.SubjectSubscriptionManager;", NULL, "Lrx/subjects/SubjectSubscriptionManager<TT;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxSubjectsTestSubject", "createWithRxSchedulersTestScheduler:" };
  static const J2ObjcClassInfo _RxSubjectsTestSubject_$1 = { 2, "", "rx.subjects", "TestSubject", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, "Ljava/lang/Object;Lrx/functions/Action1<Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;>;" };
  return &_RxSubjectsTestSubject_$1;
}

@end

void RxSubjectsTestSubject_$1_initWithRxSubjectsSubjectSubscriptionManager_(RxSubjectsTestSubject_$1 *self, RxSubjectsSubjectSubscriptionManager *capture$0) {
  self->val$state_ = capture$0;
  NSObject_init(self);
}

RxSubjectsTestSubject_$1 *new_RxSubjectsTestSubject_$1_initWithRxSubjectsSubjectSubscriptionManager_(RxSubjectsSubjectSubscriptionManager *capture$0) {
  RxSubjectsTestSubject_$1 *self = [RxSubjectsTestSubject_$1 alloc];
  RxSubjectsTestSubject_$1_initWithRxSubjectsSubjectSubscriptionManager_(self, capture$0);
  return self;
}

RxSubjectsTestSubject_$1 *create_RxSubjectsTestSubject_$1_initWithRxSubjectsSubjectSubscriptionManager_(RxSubjectsSubjectSubscriptionManager *capture$0) {
  return new_RxSubjectsTestSubject_$1_initWithRxSubjectsSubjectSubscriptionManager_(capture$0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxSubjectsTestSubject_$1)

@implementation RxSubjectsTestSubject_$2

- (void)call {
  RxSubjectsTestSubject__onCompleted(this$0_);
}

- (instancetype)initWithRxSubjectsTestSubject:(RxSubjectsTestSubject *)outer$ {
  RxSubjectsTestSubject_$2_initWithRxSubjectsTestSubject_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "call", NULL, "V", 0x1, NULL, NULL },
    { "initWithRxSubjectsTestSubject:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lrx.subjects.TestSubject;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxSubjectsTestSubject", "onCompletedWithLong:" };
  static const J2ObjcClassInfo _RxSubjectsTestSubject_$2 = { 2, "", "rx.subjects", "TestSubject", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_RxSubjectsTestSubject_$2;
}

@end

void RxSubjectsTestSubject_$2_initWithRxSubjectsTestSubject_(RxSubjectsTestSubject_$2 *self, RxSubjectsTestSubject *outer$) {
  self->this$0_ = outer$;
  NSObject_init(self);
}

RxSubjectsTestSubject_$2 *new_RxSubjectsTestSubject_$2_initWithRxSubjectsTestSubject_(RxSubjectsTestSubject *outer$) {
  RxSubjectsTestSubject_$2 *self = [RxSubjectsTestSubject_$2 alloc];
  RxSubjectsTestSubject_$2_initWithRxSubjectsTestSubject_(self, outer$);
  return self;
}

RxSubjectsTestSubject_$2 *create_RxSubjectsTestSubject_$2_initWithRxSubjectsTestSubject_(RxSubjectsTestSubject *outer$) {
  return new_RxSubjectsTestSubject_$2_initWithRxSubjectsTestSubject_(outer$);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxSubjectsTestSubject_$2)

@implementation RxSubjectsTestSubject_$3

- (void)call {
  RxSubjectsTestSubject__onErrorWithNSException_(this$0_, val$e_);
}

- (instancetype)initWithRxSubjectsTestSubject:(RxSubjectsTestSubject *)outer$
                              withNSException:(NSException *)capture$0 {
  RxSubjectsTestSubject_$3_initWithRxSubjectsTestSubject_withNSException_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "call", NULL, "V", 0x1, NULL, NULL },
    { "initWithRxSubjectsTestSubject:withNSException:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lrx.subjects.TestSubject;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$e_", NULL, 0x1012, "Ljava.lang.Throwable;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxSubjectsTestSubject", "onErrorWithNSException:withLong:" };
  static const J2ObjcClassInfo _RxSubjectsTestSubject_$3 = { 2, "", "rx.subjects", "TestSubject", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_RxSubjectsTestSubject_$3;
}

@end

void RxSubjectsTestSubject_$3_initWithRxSubjectsTestSubject_withNSException_(RxSubjectsTestSubject_$3 *self, RxSubjectsTestSubject *outer$, NSException *capture$0) {
  self->this$0_ = outer$;
  self->val$e_ = capture$0;
  NSObject_init(self);
}

RxSubjectsTestSubject_$3 *new_RxSubjectsTestSubject_$3_initWithRxSubjectsTestSubject_withNSException_(RxSubjectsTestSubject *outer$, NSException *capture$0) {
  RxSubjectsTestSubject_$3 *self = [RxSubjectsTestSubject_$3 alloc];
  RxSubjectsTestSubject_$3_initWithRxSubjectsTestSubject_withNSException_(self, outer$, capture$0);
  return self;
}

RxSubjectsTestSubject_$3 *create_RxSubjectsTestSubject_$3_initWithRxSubjectsTestSubject_withNSException_(RxSubjectsTestSubject *outer$, NSException *capture$0) {
  return new_RxSubjectsTestSubject_$3_initWithRxSubjectsTestSubject_withNSException_(outer$, capture$0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxSubjectsTestSubject_$3)

@implementation RxSubjectsTestSubject_$4

- (void)call {
  RxSubjectsTestSubject__onNextWithId_(this$0_, val$v_);
}

- (instancetype)initWithRxSubjectsTestSubject:(RxSubjectsTestSubject *)outer$
                                       withId:(id)capture$0 {
  RxSubjectsTestSubject_$4_initWithRxSubjectsTestSubject_withId_(self, outer$, capture$0);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "call", NULL, "V", 0x1, NULL, NULL },
    { "initWithRxSubjectsTestSubject:withId:", "", NULL, 0x0, NULL, "(Lrx/subjects/TestSubject;TT;)V" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lrx.subjects.TestSubject;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$v_", NULL, 0x1012, "TT;", NULL, "TT;", .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "RxSubjectsTestSubject", "onNextWithId:withLong:" };
  static const J2ObjcClassInfo _RxSubjectsTestSubject_$4 = { 2, "", "rx.subjects", "TestSubject", 0x8008, 2, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_RxSubjectsTestSubject_$4;
}

@end

void RxSubjectsTestSubject_$4_initWithRxSubjectsTestSubject_withId_(RxSubjectsTestSubject_$4 *self, RxSubjectsTestSubject *outer$, id capture$0) {
  self->this$0_ = outer$;
  self->val$v_ = capture$0;
  NSObject_init(self);
}

RxSubjectsTestSubject_$4 *new_RxSubjectsTestSubject_$4_initWithRxSubjectsTestSubject_withId_(RxSubjectsTestSubject *outer$, id capture$0) {
  RxSubjectsTestSubject_$4 *self = [RxSubjectsTestSubject_$4 alloc];
  RxSubjectsTestSubject_$4_initWithRxSubjectsTestSubject_withId_(self, outer$, capture$0);
  return self;
}

RxSubjectsTestSubject_$4 *create_RxSubjectsTestSubject_$4_initWithRxSubjectsTestSubject_withId_(RxSubjectsTestSubject *outer$, id capture$0) {
  return new_RxSubjectsTestSubject_$4_initWithRxSubjectsTestSubject_withId_(outer$, capture$0);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxSubjectsTestSubject_$4)
