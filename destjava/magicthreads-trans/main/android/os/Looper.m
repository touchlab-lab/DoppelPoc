//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/androidbase/AndroidBase/lib/src/main/java/android/os/Looper.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "android/os/Handler.h"
#include "android/os/Looper.h"
#include "android/os/Message.h"
#include "android/os/MessageQueue.h"
#include "android/util/Printer.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/lang/Thread.h"
#include "java/lang/ThreadLocal.h"

@interface AndroidOsLooper () {
 @public
  id<AndroidUtilPrinter> mLogging_;
}

+ (void)setMainLooperWithAndroidOsLooper:(AndroidOsLooper *)looper;

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(AndroidOsLooper, mLogging_, id<AndroidUtilPrinter>)

inline NSString *AndroidOsLooper_get_TAG();
static NSString *AndroidOsLooper_TAG = @"Looper";
J2OBJC_STATIC_FIELD_OBJ_FINAL(AndroidOsLooper, TAG, NSString *)

inline AndroidOsLooper *AndroidOsLooper_get_mMainLooper();
inline AndroidOsLooper *AndroidOsLooper_set_mMainLooper(AndroidOsLooper *value);
static AndroidOsLooper *AndroidOsLooper_mMainLooper;
J2OBJC_STATIC_FIELD_OBJ(AndroidOsLooper, mMainLooper, AndroidOsLooper *)

__attribute__((unused)) static void AndroidOsLooper_setMainLooperWithAndroidOsLooper_(AndroidOsLooper *looper);

__attribute__((unused)) static void AndroidOsLooper_init(AndroidOsLooper *self);

__attribute__((unused)) static AndroidOsLooper *new_AndroidOsLooper_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static AndroidOsLooper *create_AndroidOsLooper_init();

@interface AndroidOsLooper_Profiler : NSObject

@end

J2OBJC_INITIALIZED_DEFN(AndroidOsLooper)

JavaLangThreadLocal *AndroidOsLooper_sThreadLocal;

@implementation AndroidOsLooper

+ (void)prepare {
  AndroidOsLooper_prepare();
}

+ (void)prepareMainLooper {
  AndroidOsLooper_prepareMainLooper();
}

+ (void)setMainLooperWithAndroidOsLooper:(AndroidOsLooper *)looper {
  AndroidOsLooper_setMainLooperWithAndroidOsLooper_(looper);
}

+ (AndroidOsLooper *)getMainLooper {
  return AndroidOsLooper_getMainLooper();
}

- (void)nudge {
  AndroidOsLooper_loop();
}

+ (void)loop {
  AndroidOsLooper_loop();
}

+ (AndroidOsLooper *)myLooper {
  return AndroidOsLooper_myLooper();
}

- (void)setMessageLoggingWithAndroidUtilPrinter:(id<AndroidUtilPrinter>)printer {
  mLogging_ = printer;
}

+ (AndroidOsMessageQueue *)myQueue {
  return AndroidOsLooper_myQueue();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  AndroidOsLooper_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)quit {
  AndroidOsMessage *msg = AndroidOsMessage_obtain();
  [((AndroidOsMessageQueue *) nil_chk(mQueue_)) enqueueMessageWithAndroidOsMessage:msg withLong:0];
}

- (JavaLangThread *)getThread {
  return mThread_;
}

- (AndroidOsMessageQueue *)getQueue {
  return mQueue_;
}

- (void)dumpWithAndroidUtilPrinter:(id<AndroidUtilPrinter>)pw
                      withNSString:(NSString *)prefix {
}

- (NSString *)description {
  return JreStrcat("$$C", @"Looper{", JavaLangInteger_toHexStringWithInt_(JavaLangSystem_identityHashCodeWithId_(self)), '}');
}

+ (void)initialize {
  if (self == [AndroidOsLooper class]) {
    AndroidOsLooper_sThreadLocal = new_JavaLangThreadLocal_init();
    AndroidOsLooper_mMainLooper = nil;
    J2OBJC_SET_INITIALIZED(AndroidOsLooper)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "prepare", NULL, "V", 0x9, NULL, NULL },
    { "prepareMainLooper", NULL, "V", 0x9, NULL, NULL },
    { "setMainLooperWithAndroidOsLooper:", "setMainLooper", "V", 0x2a, NULL, NULL },
    { "getMainLooper", NULL, "Landroid.os.Looper;", 0x29, NULL, NULL },
    { "nudge", NULL, "V", 0x1, NULL, NULL },
    { "loop", NULL, "V", 0x9, NULL, NULL },
    { "myLooper", NULL, "Landroid.os.Looper;", 0x9, NULL, NULL },
    { "setMessageLoggingWithAndroidUtilPrinter:", "setMessageLogging", "V", 0x1, NULL, NULL },
    { "myQueue", NULL, "Landroid.os.MessageQueue;", 0x9, NULL, NULL },
    { "init", "Looper", NULL, 0x2, NULL, NULL },
    { "quit", NULL, "V", 0x1, NULL, NULL },
    { "getThread", NULL, "Ljava.lang.Thread;", 0x1, NULL, NULL },
    { "getQueue", NULL, "Landroid.os.MessageQueue;", 0x1, NULL, NULL },
    { "dumpWithAndroidUtilPrinter:withNSString:", "dump", "V", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TAG", "TAG", 0x1a, "Ljava.lang.String;", &AndroidOsLooper_TAG, NULL, .constantValue.asLong = 0 },
    { "sThreadLocal", "sThreadLocal", 0x18, "Ljava.lang.ThreadLocal;", &AndroidOsLooper_sThreadLocal, "Ljava/lang/ThreadLocal<Landroid/os/Looper;>;", .constantValue.asLong = 0 },
    { "mQueue_", NULL, 0x10, "Landroid.os.MessageQueue;", NULL, NULL, .constantValue.asLong = 0 },
    { "mThread_", NULL, 0x10, "Ljava.lang.Thread;", NULL, NULL, .constantValue.asLong = 0 },
    { "mRun_", NULL, 0x40, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "mLogging_", NULL, 0x2, "Landroid.util.Printer;", NULL, NULL, .constantValue.asLong = 0 },
    { "mMainLooper", "mMainLooper", 0xa, "Landroid.os.Looper;", &AndroidOsLooper_mMainLooper, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Landroid.os.Looper$Profiler;"};
  static const J2ObjcClassInfo _AndroidOsLooper = { 2, "Looper", "android.os", NULL, 0x1, 15, methods, 7, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_AndroidOsLooper;
}

@end

void AndroidOsLooper_prepare() {
  AndroidOsLooper_initialize();
  if ([((JavaLangThreadLocal *) nil_chk(AndroidOsLooper_sThreadLocal)) get] != nil) {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"Only one Looper may be created per thread");
  }
  [AndroidOsLooper_sThreadLocal setWithId:new_AndroidOsLooper_init()];
}

void AndroidOsLooper_prepareMainLooper() {
  AndroidOsLooper_initialize();
  AndroidOsLooper_prepare();
  AndroidOsLooper_setMainLooperWithAndroidOsLooper_(AndroidOsLooper_myLooper());
  ((AndroidOsMessageQueue *) nil_chk(((AndroidOsLooper *) nil_chk(AndroidOsLooper_myLooper()))->mQueue_))->mQuitAllowed_ = false;
}

void AndroidOsLooper_setMainLooperWithAndroidOsLooper_(AndroidOsLooper *looper) {
  AndroidOsLooper_initialize();
  @synchronized(AndroidOsLooper_class_()) {
    AndroidOsLooper_mMainLooper = looper;
  }
}

AndroidOsLooper *AndroidOsLooper_getMainLooper() {
  AndroidOsLooper_initialize();
  @synchronized(AndroidOsLooper_class_()) {
    return AndroidOsLooper_mMainLooper;
  }
}

void AndroidOsLooper_loop() {
  AndroidOsLooper_initialize();
  AndroidOsLooper *me = AndroidOsLooper_myLooper();
  if (me == nil) {
    AndroidOsLooper_prepare();
    me = AndroidOsLooper_myLooper();
  }
  AndroidOsMessageQueue *queue = ((AndroidOsLooper *) nil_chk(me))->mQueue_;
  while (true) {
    AndroidOsMessage *msg = [((AndroidOsMessageQueue *) nil_chk(queue)) next];
    if (msg == nil) {
      return;
    }
    else {
      if (msg->target_ == nil) {
        return;
      }
      jlong wallStart = 0;
      jlong threadStart = 0;
      [msg->target_ dispatchMessageWithAndroidOsMessage:msg];
      [msg recycle];
    }
  }
}

AndroidOsLooper *AndroidOsLooper_myLooper() {
  AndroidOsLooper_initialize();
  return [((JavaLangThreadLocal *) nil_chk(AndroidOsLooper_sThreadLocal)) get];
}

AndroidOsMessageQueue *AndroidOsLooper_myQueue() {
  AndroidOsLooper_initialize();
  return ((AndroidOsLooper *) nil_chk(AndroidOsLooper_myLooper()))->mQueue_;
}

void AndroidOsLooper_init(AndroidOsLooper *self) {
  NSObject_init(self);
  self->mLogging_ = nil;
  self->mQueue_ = new_AndroidOsMessageQueue_initWithAndroidOsThreadNudger_(self);
  JreAssignVolatileBoolean(&self->mRun_, true);
  self->mThread_ = JavaLangThread_currentThread();
}

AndroidOsLooper *new_AndroidOsLooper_init() {
  J2OBJC_NEW_IMPL(AndroidOsLooper, init)
}

AndroidOsLooper *create_AndroidOsLooper_init() {
  J2OBJC_CREATE_IMPL(AndroidOsLooper, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidOsLooper)

@implementation AndroidOsLooper_Profiler

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "profileWithAndroidOsMessage:withLong:withLong:withLong:withLong:", "profile", "V", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _AndroidOsLooper_Profiler = { 2, "Profiler", "android.os", "Looper", 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_AndroidOsLooper_Profiler;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(AndroidOsLooper_Profiler)