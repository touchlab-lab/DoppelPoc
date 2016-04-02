//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/Notification.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "rx/Notification.h"
#include "rx/Observer.h"

@interface RxNotification () {
 @public
  RxNotification_Kind *kind_;
  NSException *throwable_;
  id value_;
}

- (instancetype)initWithRxNotification_Kind:(RxNotification_Kind *)kind
                                     withId:(id)value
                            withNSException:(NSException *)e;
#ifdef J2OBJC_RENAME_ALIASES
#define withJavaLangThrowable withNSException
#endif // J2OBJC_RENAME_ALIASES

@end

J2OBJC_FIELD_SETTER(RxNotification, kind_, RxNotification_Kind *)
J2OBJC_FIELD_SETTER(RxNotification, throwable_, NSException *)
J2OBJC_FIELD_SETTER(RxNotification, value_, id)

inline RxNotification *RxNotification_get_ON_COMPLETED();
static RxNotification *RxNotification_ON_COMPLETED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxNotification, ON_COMPLETED, RxNotification *)

__attribute__((unused)) static void RxNotification_initWithRxNotification_Kind_withId_withNSException_(RxNotification *self, RxNotification_Kind *kind, id value, NSException *e);

__attribute__((unused)) static RxNotification *new_RxNotification_initWithRxNotification_Kind_withId_withNSException_(RxNotification_Kind *kind, id value, NSException *e) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxNotification *create_RxNotification_initWithRxNotification_Kind_withId_withNSException_(RxNotification_Kind *kind, id value, NSException *e);

__attribute__((unused)) static void RxNotification_Kind_initWithNSString_withInt_(RxNotification_Kind *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static RxNotification_Kind *new_RxNotification_Kind_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(RxNotification)

@implementation RxNotification

+ (RxNotification *)createOnNextWithId:(id)t {
  return RxNotification_createOnNextWithId_(t);
}

+ (RxNotification *)createOnErrorWithNSException:(NSException *)e {
  return RxNotification_createOnErrorWithNSException_(e);
}

+ (RxNotification *)createOnCompleted {
  return RxNotification_createOnCompleted();
}

+ (RxNotification *)createOnCompletedWithIOSClass:(IOSClass *)type {
  return RxNotification_createOnCompletedWithIOSClass_(type);
}

- (instancetype)initWithRxNotification_Kind:(RxNotification_Kind *)kind
                                     withId:(id)value
                            withNSException:(NSException *)e {
  RxNotification_initWithRxNotification_Kind_withId_withNSException_(self, kind, value, e);
  return self;
}

- (NSException *)getThrowable {
  return throwable_;
}

- (id)getValue {
  return value_;
}

- (jboolean)hasValue {
  return [self isOnNext] && value_ != nil;
}

- (jboolean)hasThrowable {
  return [self isOnError] && throwable_ != nil;
}

- (RxNotification_Kind *)getKind {
  return kind_;
}

- (jboolean)isOnError {
  return [self getKind] == JreLoadEnum(RxNotification_Kind, OnError);
}

- (jboolean)isOnCompleted {
  return [self getKind] == JreLoadEnum(RxNotification_Kind, OnCompleted);
}

- (jboolean)isOnNext {
  return [self getKind] == JreLoadEnum(RxNotification_Kind, OnNext);
}

- (void)acceptWithRxObserver:(id<RxObserver>)observer {
  if ([self isOnNext]) {
    [((id<RxObserver>) nil_chk(observer)) onNextWithId:[self getValue]];
  }
  else if ([self isOnCompleted]) {
    [((id<RxObserver>) nil_chk(observer)) onCompleted];
  }
  else if ([self isOnError]) {
    [((id<RxObserver>) nil_chk(observer)) onErrorWithNSException:[self getThrowable]];
  }
}

- (NSString *)description {
  JavaLangStringBuilder *str = [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([new_JavaLangStringBuilder_initWithNSString_(@"[") appendWithNSString:[super description]])) appendWithNSString:@" "])) appendWithId:[self getKind]];
  if ([self hasValue]) (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(str)) appendWithNSString:@" "])) appendWithId:[self getValue]];
  if ([self hasThrowable]) (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(str)) appendWithNSString:@" "])) appendWithNSString:[((NSException *) nil_chk([self getThrowable])) getMessage]];
  (void) [((JavaLangStringBuilder *) nil_chk(str)) appendWithNSString:@"]"];
  return [str description];
}

- (NSUInteger)hash {
  jint hash_ = ((jint) [((RxNotification_Kind *) nil_chk([self getKind])) hash]);
  if ([self hasValue]) hash_ = hash_ * 31 + ((jint) [((id) nil_chk([self getValue])) hash]);
  if ([self hasThrowable]) hash_ = hash_ * 31 + ((jint) [((NSException *) nil_chk([self getThrowable])) hash]);
  return hash_;
}

- (jboolean)isEqual:(id)obj {
  if (obj == nil) return false;
  if (self == obj) return true;
  if ([nil_chk(obj) getClass] != (id) [self getClass]) return false;
  RxNotification *notification = (RxNotification *) cast_chk(obj, [RxNotification class]);
  if ([notification getKind] != [self getKind]) return false;
  if ([self hasValue] && ![((id) nil_chk([self getValue])) isEqual:[notification getValue]]) return false;
  if ([self hasThrowable] && ![((NSException *) nil_chk([self getThrowable])) isEqual:[notification getThrowable]]) return false;
  return true;
}

+ (void)initialize {
  if (self == [RxNotification class]) {
    RxNotification_ON_COMPLETED = new_RxNotification_initWithRxNotification_Kind_withId_withNSException_(JreLoadEnum(RxNotification_Kind, OnCompleted), nil, nil);
    J2OBJC_SET_INITIALIZED(RxNotification)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createOnNextWithId:", "createOnNext", "Lrx.Notification;", 0x9, NULL, "<T:Ljava/lang/Object;>(TT;)Lrx/Notification<TT;>;" },
    { "createOnErrorWithNSException:", "createOnError", "Lrx.Notification;", 0x9, NULL, "<T:Ljava/lang/Object;>(Ljava/lang/Throwable;)Lrx/Notification<TT;>;" },
    { "createOnCompleted", NULL, "Lrx.Notification;", 0x9, NULL, "<T:Ljava/lang/Object;>()Lrx/Notification<TT;>;" },
    { "createOnCompletedWithIOSClass:", "createOnCompleted", "Lrx.Notification;", 0x9, NULL, "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Lrx/Notification<TT;>;" },
    { "initWithRxNotification_Kind:withId:withNSException:", "Notification", NULL, 0x2, NULL, "(Lrx/Notification$Kind;TT;Ljava/lang/Throwable;)V" },
    { "getThrowable", NULL, "Ljava.lang.Throwable;", 0x1, NULL, NULL },
    { "getValue", NULL, "TT;", 0x1, NULL, "()TT;" },
    { "hasValue", NULL, "Z", 0x1, NULL, NULL },
    { "hasThrowable", NULL, "Z", 0x1, NULL, NULL },
    { "getKind", NULL, "Lrx.Notification$Kind;", 0x1, NULL, NULL },
    { "isOnError", NULL, "Z", 0x1, NULL, NULL },
    { "isOnCompleted", NULL, "Z", 0x1, NULL, NULL },
    { "isOnNext", NULL, "Z", 0x1, NULL, NULL },
    { "acceptWithRxObserver:", "accept", "V", 0x1, NULL, "(Lrx/Observer<-TT;>;)V" },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "kind_", NULL, 0x12, "Lrx.Notification$Kind;", NULL, NULL, .constantValue.asLong = 0 },
    { "throwable_", NULL, 0x12, "Ljava.lang.Throwable;", NULL, NULL, .constantValue.asLong = 0 },
    { "value_", NULL, 0x12, "TT;", NULL, "TT;", .constantValue.asLong = 0 },
    { "ON_COMPLETED", "ON_COMPLETED", 0x1a, "Lrx.Notification;", &RxNotification_ON_COMPLETED, "Lrx/Notification<Ljava/lang/Void;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lrx.Notification$Kind;"};
  static const J2ObjcClassInfo _RxNotification = { 2, "Notification", "rx", NULL, 0x11, 17, methods, 4, fields, 0, NULL, 1, inner_classes, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  return &_RxNotification;
}

@end

RxNotification *RxNotification_createOnNextWithId_(id t) {
  RxNotification_initialize();
  return new_RxNotification_initWithRxNotification_Kind_withId_withNSException_(JreLoadEnum(RxNotification_Kind, OnNext), t, nil);
}

RxNotification *RxNotification_createOnErrorWithNSException_(NSException *e) {
  RxNotification_initialize();
  return new_RxNotification_initWithRxNotification_Kind_withId_withNSException_(JreLoadEnum(RxNotification_Kind, OnError), nil, e);
}

RxNotification *RxNotification_createOnCompleted() {
  RxNotification_initialize();
  return RxNotification_ON_COMPLETED;
}

RxNotification *RxNotification_createOnCompletedWithIOSClass_(IOSClass *type) {
  RxNotification_initialize();
  return RxNotification_ON_COMPLETED;
}

void RxNotification_initWithRxNotification_Kind_withId_withNSException_(RxNotification *self, RxNotification_Kind *kind, id value, NSException *e) {
  NSObject_init(self);
  self->value_ = value;
  self->throwable_ = e;
  self->kind_ = kind;
}

RxNotification *new_RxNotification_initWithRxNotification_Kind_withId_withNSException_(RxNotification_Kind *kind, id value, NSException *e) {
  RxNotification *self = [RxNotification alloc];
  RxNotification_initWithRxNotification_Kind_withId_withNSException_(self, kind, value, e);
  return self;
}

RxNotification *create_RxNotification_initWithRxNotification_Kind_withId_withNSException_(RxNotification_Kind *kind, id value, NSException *e) {
  return new_RxNotification_initWithRxNotification_Kind_withId_withNSException_(kind, value, e);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxNotification)

J2OBJC_INITIALIZED_DEFN(RxNotification_Kind)

RxNotification_Kind *RxNotification_Kind_values_[3];

@implementation RxNotification_Kind

+ (IOSObjectArray *)values {
  return RxNotification_Kind_values();
}

+ (RxNotification_Kind *)valueOfWithNSString:(NSString *)name {
  return RxNotification_Kind_valueOfWithNSString_(name);
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [RxNotification_Kind class]) {
    JreEnum(RxNotification_Kind, OnNext) = new_RxNotification_Kind_initWithNSString_withInt_(@"OnNext", 0);
    JreEnum(RxNotification_Kind, OnError) = new_RxNotification_Kind_initWithNSString_withInt_(@"OnError", 1);
    JreEnum(RxNotification_Kind, OnCompleted) = new_RxNotification_Kind_initWithNSString_withInt_(@"OnCompleted", 2);
    J2OBJC_SET_INITIALIZED(RxNotification_Kind)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "OnNext", "OnNext", 0x4019, "Lrx.Notification$Kind;", &JreEnum(RxNotification_Kind, OnNext), NULL, .constantValue.asLong = 0 },
    { "OnError", "OnError", 0x4019, "Lrx.Notification$Kind;", &JreEnum(RxNotification_Kind, OnError), NULL, .constantValue.asLong = 0 },
    { "OnCompleted", "OnCompleted", 0x4019, "Lrx.Notification$Kind;", &JreEnum(RxNotification_Kind, OnCompleted), NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lrx.Notification$Kind;"};
  static const J2ObjcClassInfo _RxNotification_Kind = { 2, "Kind", "rx", "Notification", 0x4019, 0, NULL, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lrx/Notification$Kind;>;" };
  return &_RxNotification_Kind;
}

@end

void RxNotification_Kind_initWithNSString_withInt_(RxNotification_Kind *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

RxNotification_Kind *new_RxNotification_Kind_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  RxNotification_Kind *self = [RxNotification_Kind alloc];
  RxNotification_Kind_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *RxNotification_Kind_values() {
  RxNotification_Kind_initialize();
  return [IOSObjectArray arrayWithObjects:RxNotification_Kind_values_ count:3 type:RxNotification_Kind_class_()];
}

RxNotification_Kind *RxNotification_Kind_valueOfWithNSString_(NSString *name) {
  RxNotification_Kind_initialize();
  for (int i = 0; i < 3; i++) {
    RxNotification_Kind *e = RxNotification_Kind_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

RxNotification_Kind *RxNotification_Kind_fromOrdinal(NSUInteger ordinal) {
  RxNotification_Kind_initialize();
  if (ordinal >= 3) {
    return nil;
  }
  return RxNotification_Kind_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxNotification_Kind)
