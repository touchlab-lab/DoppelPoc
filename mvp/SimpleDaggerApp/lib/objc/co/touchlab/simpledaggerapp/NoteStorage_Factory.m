//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/SharedPodsFixHistory/SimpleDaggerApp/lib/build/generated/source/apt/main/co/touchlab/simpledaggerapp/NoteStorage_Factory.java
//

#include "J2ObjC_source.h"
#include "co/touchlab/simpledaggerapp/NoteStorage.h"
#include "co/touchlab/simpledaggerapp/NoteStorage_Factory.h"
#include "co/touchlab/simpledaggerapp/PlatformContext.h"
#include "dagger/internal/Factory.h"
#include "javax/inject/Provider.h"

@interface CoTouchlabSimpledaggerappNoteStorage_Factory () {
 @public
  id<JavaxInjectProvider> platformContextProvider_;
}

@end

J2OBJC_FIELD_SETTER(CoTouchlabSimpledaggerappNoteStorage_Factory, platformContextProvider_, id<JavaxInjectProvider>)

@implementation CoTouchlabSimpledaggerappNoteStorage_Factory

- (instancetype)initWithJavaxInjectProvider:(id<JavaxInjectProvider>)platformContextProvider {
  CoTouchlabSimpledaggerappNoteStorage_Factory_initWithJavaxInjectProvider_(self, platformContextProvider);
  return self;
}

- (CoTouchlabSimpledaggerappNoteStorage *)get {
  return new_CoTouchlabSimpledaggerappNoteStorage_initWithCoTouchlabSimpledaggerappPlatformContext_([((id<JavaxInjectProvider>) nil_chk(platformContextProvider_)) get]);
}

+ (id<DaggerInternalFactory>)createWithJavaxInjectProvider:(id<JavaxInjectProvider>)platformContextProvider {
  return CoTouchlabSimpledaggerappNoteStorage_Factory_createWithJavaxInjectProvider_(platformContextProvider);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaxInjectProvider:", "NoteStorage_Factory", NULL, 0x1, NULL, "(Ljavax/inject/Provider<Lco/touchlab/simpledaggerapp/PlatformContext;>;)V" },
    { "get", NULL, "Lco.touchlab.simpledaggerapp.NoteStorage;", 0x1, NULL, NULL },
    { "createWithJavaxInjectProvider:", "create", "Ldagger.internal.Factory;", 0x9, NULL, "(Ljavax/inject/Provider<Lco/touchlab/simpledaggerapp/PlatformContext;>;)Ldagger/internal/Factory<Lco/touchlab/simpledaggerapp/NoteStorage;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "platformContextProvider_", NULL, 0x12, "Ljavax.inject.Provider;", NULL, "Ljavax/inject/Provider<Lco/touchlab/simpledaggerapp/PlatformContext;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _CoTouchlabSimpledaggerappNoteStorage_Factory = { 2, "NoteStorage_Factory", "co.touchlab.simpledaggerapp", NULL, 0x11, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Ldagger/internal/Factory<Lco/touchlab/simpledaggerapp/NoteStorage;>;" };
  return &_CoTouchlabSimpledaggerappNoteStorage_Factory;
}

@end

void CoTouchlabSimpledaggerappNoteStorage_Factory_initWithJavaxInjectProvider_(CoTouchlabSimpledaggerappNoteStorage_Factory *self, id<JavaxInjectProvider> platformContextProvider) {
  NSObject_init(self);
  JreAssert((platformContextProvider != nil), (@"co/touchlab/simpledaggerapp/NoteStorage_Factory.java:12 condition failed: assert platformContextProvider != null;"));
  self->platformContextProvider_ = platformContextProvider;
}

CoTouchlabSimpledaggerappNoteStorage_Factory *new_CoTouchlabSimpledaggerappNoteStorage_Factory_initWithJavaxInjectProvider_(id<JavaxInjectProvider> platformContextProvider) {
  CoTouchlabSimpledaggerappNoteStorage_Factory *self = [CoTouchlabSimpledaggerappNoteStorage_Factory alloc];
  CoTouchlabSimpledaggerappNoteStorage_Factory_initWithJavaxInjectProvider_(self, platformContextProvider);
  return self;
}

CoTouchlabSimpledaggerappNoteStorage_Factory *create_CoTouchlabSimpledaggerappNoteStorage_Factory_initWithJavaxInjectProvider_(id<JavaxInjectProvider> platformContextProvider) {
  return new_CoTouchlabSimpledaggerappNoteStorage_Factory_initWithJavaxInjectProvider_(platformContextProvider);
}

id<DaggerInternalFactory> CoTouchlabSimpledaggerappNoteStorage_Factory_createWithJavaxInjectProvider_(id<JavaxInjectProvider> platformContextProvider) {
  CoTouchlabSimpledaggerappNoteStorage_Factory_initialize();
  return new_CoTouchlabSimpledaggerappNoteStorage_Factory_initWithJavaxInjectProvider_(platformContextProvider);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CoTouchlabSimpledaggerappNoteStorage_Factory)
