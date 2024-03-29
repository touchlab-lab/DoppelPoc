//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/exceptions/OnErrorThrowable.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/RuntimeException.h"
#include "rx/exceptions/Exceptions.h"
#include "rx/exceptions/OnErrorThrowable.h"

@interface RxExceptionsOnErrorThrowable () {
 @public
  jboolean hasValue_;
  id value_;
}

- (instancetype)initWithNSException:(NSException *)exception;
#ifdef J2OBJC_RENAME_ALIASES
#define initWithJavaLangThrowable initWithNSException
#endif // J2OBJC_RENAME_ALIASES

- (instancetype)initWithNSException:(NSException *)exception
                             withId:(id)value;
#ifdef J2OBJC_RENAME_ALIASES
#define initWithJavaLangThrowable initWithNSException
#endif // J2OBJC_RENAME_ALIASES

@end

J2OBJC_FIELD_SETTER(RxExceptionsOnErrorThrowable, value_, id)

inline jlong RxExceptionsOnErrorThrowable_get_serialVersionUID();
#define RxExceptionsOnErrorThrowable_serialVersionUID -569558213262703934LL
J2OBJC_STATIC_FIELD_CONSTANT(RxExceptionsOnErrorThrowable, serialVersionUID, jlong)

__attribute__((unused)) static void RxExceptionsOnErrorThrowable_initWithNSException_(RxExceptionsOnErrorThrowable *self, NSException *exception);

__attribute__((unused)) static RxExceptionsOnErrorThrowable *new_RxExceptionsOnErrorThrowable_initWithNSException_(NSException *exception) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxExceptionsOnErrorThrowable *create_RxExceptionsOnErrorThrowable_initWithNSException_(NSException *exception);

__attribute__((unused)) static void RxExceptionsOnErrorThrowable_initWithNSException_withId_(RxExceptionsOnErrorThrowable *self, NSException *exception, id value);

__attribute__((unused)) static RxExceptionsOnErrorThrowable *new_RxExceptionsOnErrorThrowable_initWithNSException_withId_(NSException *exception, id value) NS_RETURNS_RETAINED;

__attribute__((unused)) static RxExceptionsOnErrorThrowable *create_RxExceptionsOnErrorThrowable_initWithNSException_withId_(NSException *exception, id value);

@interface RxExceptionsOnErrorThrowable_OnNextValue () {
 @public
  id value_;
}

+ (NSString *)renderValueWithId:(id)value;

@end

J2OBJC_FIELD_SETTER(RxExceptionsOnErrorThrowable_OnNextValue, value_, id)

inline jlong RxExceptionsOnErrorThrowable_OnNextValue_get_serialVersionUID();
#define RxExceptionsOnErrorThrowable_OnNextValue_serialVersionUID -3454462756050397899LL
J2OBJC_STATIC_FIELD_CONSTANT(RxExceptionsOnErrorThrowable_OnNextValue, serialVersionUID, jlong)

__attribute__((unused)) static NSString *RxExceptionsOnErrorThrowable_OnNextValue_renderValueWithId_(id value);

@implementation RxExceptionsOnErrorThrowable

- (instancetype)initWithNSException:(NSException *)exception {
  RxExceptionsOnErrorThrowable_initWithNSException_(self, exception);
  return self;
}

- (instancetype)initWithNSException:(NSException *)exception
                             withId:(id)value {
  RxExceptionsOnErrorThrowable_initWithNSException_withId_(self, exception, value);
  return self;
}

- (id)getValue {
  return value_;
}

- (jboolean)isValueNull {
  return hasValue_;
}

+ (RxExceptionsOnErrorThrowable *)fromWithNSException:(NSException *)t {
  return RxExceptionsOnErrorThrowable_fromWithNSException_(t);
}

+ (NSException *)addValueAsLastCauseWithNSException:(NSException *)e
                                             withId:(id)value {
  return RxExceptionsOnErrorThrowable_addValueAsLastCauseWithNSException_withId_(e, value);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSException:", "OnErrorThrowable", NULL, 0x2, NULL, NULL },
    { "initWithNSException:withId:", "OnErrorThrowable", NULL, 0x2, NULL, NULL },
    { "getValue", NULL, "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "isValueNull", NULL, "Z", 0x1, NULL, NULL },
    { "fromWithNSException:", "from", "Lrx.exceptions.OnErrorThrowable;", 0x9, NULL, NULL },
    { "addValueAsLastCauseWithNSException:withId:", "addValueAsLastCause", "Ljava.lang.Throwable;", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = RxExceptionsOnErrorThrowable_serialVersionUID },
    { "hasValue_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "value_", NULL, 0x12, "Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lrx.exceptions.OnErrorThrowable$OnNextValue;"};
  static const J2ObjcClassInfo _RxExceptionsOnErrorThrowable = { 2, "OnErrorThrowable", "rx.exceptions", NULL, 0x11, 6, methods, 3, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_RxExceptionsOnErrorThrowable;
}

@end

void RxExceptionsOnErrorThrowable_initWithNSException_(RxExceptionsOnErrorThrowable *self, NSException *exception) {
  JavaLangRuntimeException_initWithNSException_(self, exception);
  self->hasValue_ = false;
  self->value_ = nil;
}

RxExceptionsOnErrorThrowable *new_RxExceptionsOnErrorThrowable_initWithNSException_(NSException *exception) {
  RxExceptionsOnErrorThrowable *self = [RxExceptionsOnErrorThrowable alloc];
  RxExceptionsOnErrorThrowable_initWithNSException_(self, exception);
  return self;
}

RxExceptionsOnErrorThrowable *create_RxExceptionsOnErrorThrowable_initWithNSException_(NSException *exception) {
  return new_RxExceptionsOnErrorThrowable_initWithNSException_(exception);
}

void RxExceptionsOnErrorThrowable_initWithNSException_withId_(RxExceptionsOnErrorThrowable *self, NSException *exception, id value) {
  JavaLangRuntimeException_initWithNSException_(self, exception);
  self->hasValue_ = true;
  self->value_ = value;
}

RxExceptionsOnErrorThrowable *new_RxExceptionsOnErrorThrowable_initWithNSException_withId_(NSException *exception, id value) {
  RxExceptionsOnErrorThrowable *self = [RxExceptionsOnErrorThrowable alloc];
  RxExceptionsOnErrorThrowable_initWithNSException_withId_(self, exception, value);
  return self;
}

RxExceptionsOnErrorThrowable *create_RxExceptionsOnErrorThrowable_initWithNSException_withId_(NSException *exception, id value) {
  return new_RxExceptionsOnErrorThrowable_initWithNSException_withId_(exception, value);
}

RxExceptionsOnErrorThrowable *RxExceptionsOnErrorThrowable_fromWithNSException_(NSException *t) {
  RxExceptionsOnErrorThrowable_initialize();
  NSException *cause = RxExceptionsExceptions_getFinalCauseWithNSException_(t);
  if ([cause isKindOfClass:[RxExceptionsOnErrorThrowable_OnNextValue class]]) {
    return new_RxExceptionsOnErrorThrowable_initWithNSException_withId_(t, [((RxExceptionsOnErrorThrowable_OnNextValue *) nil_chk(((RxExceptionsOnErrorThrowable_OnNextValue *) cast_chk(cause, [RxExceptionsOnErrorThrowable_OnNextValue class])))) getValue]);
  }
  else {
    return new_RxExceptionsOnErrorThrowable_initWithNSException_(t);
  }
}

NSException *RxExceptionsOnErrorThrowable_addValueAsLastCauseWithNSException_withId_(NSException *e, id value) {
  RxExceptionsOnErrorThrowable_initialize();
  NSException *lastCause = RxExceptionsExceptions_getFinalCauseWithNSException_(e);
  if (lastCause != nil && [lastCause isKindOfClass:[RxExceptionsOnErrorThrowable_OnNextValue class]]) {
    if ([((RxExceptionsOnErrorThrowable_OnNextValue *) cast_chk(lastCause, [RxExceptionsOnErrorThrowable_OnNextValue class])) getValue] == value) {
      return e;
    }
  }
  RxExceptionsExceptions_addCauseWithNSException_withNSException_(e, new_RxExceptionsOnErrorThrowable_OnNextValue_initWithId_(value));
  return e;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxExceptionsOnErrorThrowable)

@implementation RxExceptionsOnErrorThrowable_OnNextValue

- (instancetype)initWithId:(id)value {
  RxExceptionsOnErrorThrowable_OnNextValue_initWithId_(self, value);
  return self;
}

- (id)getValue {
  return value_;
}

+ (NSString *)renderValueWithId:(id)value {
  return RxExceptionsOnErrorThrowable_OnNextValue_renderValueWithId_(value);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithId:", "OnNextValue", NULL, 0x1, NULL, NULL },
    { "getValue", NULL, "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "renderValueWithId:", "renderValue", "Ljava.lang.String;", 0xa, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = RxExceptionsOnErrorThrowable_OnNextValue_serialVersionUID },
    { "value_", NULL, 0x12, "Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _RxExceptionsOnErrorThrowable_OnNextValue = { 2, "OnNextValue", "rx.exceptions", "OnErrorThrowable", 0x9, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_RxExceptionsOnErrorThrowable_OnNextValue;
}

@end

void RxExceptionsOnErrorThrowable_OnNextValue_initWithId_(RxExceptionsOnErrorThrowable_OnNextValue *self, id value) {
  JavaLangRuntimeException_initWithNSString_(self, JreStrcat("$$", @"OnError while emitting onNext value: ", RxExceptionsOnErrorThrowable_OnNextValue_renderValueWithId_(value)));
  self->value_ = value;
}

RxExceptionsOnErrorThrowable_OnNextValue *new_RxExceptionsOnErrorThrowable_OnNextValue_initWithId_(id value) {
  RxExceptionsOnErrorThrowable_OnNextValue *self = [RxExceptionsOnErrorThrowable_OnNextValue alloc];
  RxExceptionsOnErrorThrowable_OnNextValue_initWithId_(self, value);
  return self;
}

RxExceptionsOnErrorThrowable_OnNextValue *create_RxExceptionsOnErrorThrowable_OnNextValue_initWithId_(id value) {
  return new_RxExceptionsOnErrorThrowable_OnNextValue_initWithId_(value);
}

NSString *RxExceptionsOnErrorThrowable_OnNextValue_renderValueWithId_(id value) {
  RxExceptionsOnErrorThrowable_OnNextValue_initialize();
  if (value == nil) {
    return @"null";
  }
  if ([[nil_chk(value) getClass] isPrimitive]) {
    return [value description];
  }
  if ([value isKindOfClass:[NSString class]]) {
    return (NSString *) cast_chk(value, [NSString class]);
  }
  if ([value isKindOfClass:[JavaLangEnum class]]) {
    return [((JavaLangEnum *) cast_chk(value, [JavaLangEnum class])) name];
  }
  return JreStrcat("$$", [[value getClass] getName], @".class");
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxExceptionsOnErrorThrowable_OnNextValue)
