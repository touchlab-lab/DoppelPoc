//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/RxJava/src/main/java/rx/schedulers/GenericScheduledExecutorService.java
//

#include "J2ObjC_source.h"
#include "java/lang/Runtime.h"
#include "java/util/concurrent/Executors.h"
#include "java/util/concurrent/ScheduledExecutorService.h"
#include "rx/internal/util/RxThreadFactory.h"
#include "rx/schedulers/GenericScheduledExecutorService.h"

@interface RxSchedulersGenericScheduledExecutorService () {
 @public
  id<JavaUtilConcurrentScheduledExecutorService> executor_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(RxSchedulersGenericScheduledExecutorService, executor_, id<JavaUtilConcurrentScheduledExecutorService>)

inline NSString *RxSchedulersGenericScheduledExecutorService_get_THREAD_NAME_PREFIX();
static NSString *RxSchedulersGenericScheduledExecutorService_THREAD_NAME_PREFIX = @"RxScheduledExecutorPool-";
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxSchedulersGenericScheduledExecutorService, THREAD_NAME_PREFIX, NSString *)

inline RxInternalUtilRxThreadFactory *RxSchedulersGenericScheduledExecutorService_get_THREAD_FACTORY();
static RxInternalUtilRxThreadFactory *RxSchedulersGenericScheduledExecutorService_THREAD_FACTORY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxSchedulersGenericScheduledExecutorService, THREAD_FACTORY, RxInternalUtilRxThreadFactory *)

inline RxSchedulersGenericScheduledExecutorService *RxSchedulersGenericScheduledExecutorService_get_INSTANCE();
static RxSchedulersGenericScheduledExecutorService *RxSchedulersGenericScheduledExecutorService_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(RxSchedulersGenericScheduledExecutorService, INSTANCE, RxSchedulersGenericScheduledExecutorService *)

__attribute__((unused)) static void RxSchedulersGenericScheduledExecutorService_init(RxSchedulersGenericScheduledExecutorService *self);

__attribute__((unused)) static RxSchedulersGenericScheduledExecutorService *new_RxSchedulersGenericScheduledExecutorService_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static RxSchedulersGenericScheduledExecutorService *create_RxSchedulersGenericScheduledExecutorService_init();

J2OBJC_INITIALIZED_DEFN(RxSchedulersGenericScheduledExecutorService)

@implementation RxSchedulersGenericScheduledExecutorService

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  RxSchedulersGenericScheduledExecutorService_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (id<JavaUtilConcurrentScheduledExecutorService>)getInstance {
  return RxSchedulersGenericScheduledExecutorService_getInstance();
}

+ (void)initialize {
  if (self == [RxSchedulersGenericScheduledExecutorService class]) {
    RxSchedulersGenericScheduledExecutorService_THREAD_FACTORY = new_RxInternalUtilRxThreadFactory_initWithNSString_(RxSchedulersGenericScheduledExecutorService_THREAD_NAME_PREFIX);
    RxSchedulersGenericScheduledExecutorService_INSTANCE = new_RxSchedulersGenericScheduledExecutorService_init();
    J2OBJC_SET_INITIALIZED(RxSchedulersGenericScheduledExecutorService)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "GenericScheduledExecutorService", NULL, 0x2, NULL, NULL },
    { "getInstance", NULL, "Ljava.util.concurrent.ScheduledExecutorService;", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "THREAD_NAME_PREFIX", "THREAD_NAME_PREFIX", 0x1a, "Ljava.lang.String;", &RxSchedulersGenericScheduledExecutorService_THREAD_NAME_PREFIX, NULL, .constantValue.asLong = 0 },
    { "THREAD_FACTORY", "THREAD_FACTORY", 0x1a, "Lrx.internal.util.RxThreadFactory;", &RxSchedulersGenericScheduledExecutorService_THREAD_FACTORY, NULL, .constantValue.asLong = 0 },
    { "INSTANCE", "INSTANCE", 0x1a, "Lrx.schedulers.GenericScheduledExecutorService;", &RxSchedulersGenericScheduledExecutorService_INSTANCE, NULL, .constantValue.asLong = 0 },
    { "executor_", NULL, 0x12, "Ljava.util.concurrent.ScheduledExecutorService;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _RxSchedulersGenericScheduledExecutorService = { 2, "GenericScheduledExecutorService", "rx.schedulers", NULL, 0x10, 2, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_RxSchedulersGenericScheduledExecutorService;
}

@end

void RxSchedulersGenericScheduledExecutorService_init(RxSchedulersGenericScheduledExecutorService *self) {
  NSObject_init(self);
  jint count = [((JavaLangRuntime *) nil_chk(JavaLangRuntime_getRuntime())) availableProcessors];
  if (count > 4) {
    count = count / 2;
  }
  if (count > 8) {
    count = 8;
  }
  self->executor_ = JavaUtilConcurrentExecutors_newScheduledThreadPoolWithInt_withJavaUtilConcurrentThreadFactory_(count, RxSchedulersGenericScheduledExecutorService_THREAD_FACTORY);
}

RxSchedulersGenericScheduledExecutorService *new_RxSchedulersGenericScheduledExecutorService_init() {
  RxSchedulersGenericScheduledExecutorService *self = [RxSchedulersGenericScheduledExecutorService alloc];
  RxSchedulersGenericScheduledExecutorService_init(self);
  return self;
}

RxSchedulersGenericScheduledExecutorService *create_RxSchedulersGenericScheduledExecutorService_init() {
  return new_RxSchedulersGenericScheduledExecutorService_init();
}

id<JavaUtilConcurrentScheduledExecutorService> RxSchedulersGenericScheduledExecutorService_getInstance() {
  RxSchedulersGenericScheduledExecutorService_initialize();
  return ((RxSchedulersGenericScheduledExecutorService *) nil_chk(RxSchedulersGenericScheduledExecutorService_INSTANCE))->executor_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(RxSchedulersGenericScheduledExecutorService)
