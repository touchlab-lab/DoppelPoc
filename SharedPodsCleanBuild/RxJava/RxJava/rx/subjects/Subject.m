//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/subjects/Subject.java
//

#include "J2ObjC_source.h"
#include "rx/Observable.h"
#include "rx/subjects/SerializedSubject.h"
#include "rx/subjects/Subject.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation RxSubjectsSubject

- (instancetype)initWithRxObservable_OnSubscribe:(id<RxObservable_OnSubscribe>)onSubscribe {
  RxSubjectsSubject_initWithRxObservable_OnSubscribe_(self, onSubscribe);
  return self;
}

- (jboolean)hasObservers {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (RxSubjectsSerializedSubject *)toSerialized {
  return new_RxSubjectsSerializedSubject_initWithRxSubjectsSubject_(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithRxObservable_OnSubscribe:", "Subject", NULL, 0x4, NULL, "(Lrx/Observable$OnSubscribe<TR;>;)V" },
    { "hasObservers", NULL, "Z", 0x401, NULL, NULL },
    { "toSerialized", NULL, "Lrx.subjects.SerializedSubject;", 0x11, NULL, "()Lrx/subjects/SerializedSubject<TT;TR;>;" },
  };
  static const char *superclass_type_args[] = {"TR;"};
  static const J2ObjcClassInfo _RxSubjectsSubject = { 2, "Subject", "rx.subjects", NULL, 0x401, 3, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "<T:Ljava/lang/Object;R:Ljava/lang/Object;>Lrx/Observable<TR;>;Lrx/Observer<TT;>;" };
  return &_RxSubjectsSubject;
}

@end

void RxSubjectsSubject_initWithRxObservable_OnSubscribe_(RxSubjectsSubject *self, id<RxObservable_OnSubscribe> onSubscribe) {
  RxObservable_initWithRxObservable_OnSubscribe_(self, onSubscribe);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxSubjectsSubject)
