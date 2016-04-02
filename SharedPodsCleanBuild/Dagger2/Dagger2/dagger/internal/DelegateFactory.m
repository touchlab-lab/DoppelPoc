//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/dagger/core/src/main/java/dagger/internal/DelegateFactory.java
//

#include "J2ObjC_source.h"
#include "dagger/internal/DelegateFactory.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "javax/inject/Provider.h"

@interface DaggerInternalDelegateFactory () {
 @public
  id<JavaxInjectProvider> delegate_;
}

@end

J2OBJC_FIELD_SETTER(DaggerInternalDelegateFactory, delegate_, id<JavaxInjectProvider>)

@implementation DaggerInternalDelegateFactory

- (id)get {
  if (delegate_ == nil) {
    @throw new_JavaLangIllegalStateException_init();
  }
  return [((id<JavaxInjectProvider>) nil_chk(delegate_)) get];
}

- (void)setDelegatedProviderWithJavaxInjectProvider:(id<JavaxInjectProvider>)delegate {
  if (delegate == nil) {
    @throw new_JavaLangIllegalArgumentException_init();
  }
  if (self->delegate_ != nil) {
    @throw new_JavaLangIllegalStateException_init();
  }
  self->delegate_ = delegate;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  DaggerInternalDelegateFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "get", NULL, "TT;", 0x1, NULL, "()TT;" },
    { "setDelegatedProviderWithJavaxInjectProvider:", "setDelegatedProvider", "V", 0x1, NULL, "(Ljavax/inject/Provider<TT;>;)V" },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", NULL, 0x2, "Ljavax.inject.Provider;", NULL, "Ljavax/inject/Provider<TT;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _DaggerInternalDelegateFactory = { 2, "DelegateFactory", "dagger.internal", NULL, 0x11, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, "<T:Ljava/lang/Object;>Ljava/lang/Object;Ldagger/internal/Factory<TT;>;" };
  return &_DaggerInternalDelegateFactory;
}

@end

void DaggerInternalDelegateFactory_init(DaggerInternalDelegateFactory *self) {
  NSObject_init(self);
}

DaggerInternalDelegateFactory *new_DaggerInternalDelegateFactory_init() {
  DaggerInternalDelegateFactory *self = [DaggerInternalDelegateFactory alloc];
  DaggerInternalDelegateFactory_init(self);
  return self;
}

DaggerInternalDelegateFactory *create_DaggerInternalDelegateFactory_init() {
  return new_DaggerInternalDelegateFactory_init();
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DaggerInternalDelegateFactory)
