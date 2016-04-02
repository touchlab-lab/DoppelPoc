//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/androidbase/AndroidBase/lib/src/main/java/android/database/MergeCursor.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "android/database/AbstractCursor.h"
#include "android/database/Cursor.h"
#include "android/database/DataSetObserver.h"
#include "android/database/MergeCursor.h"

@interface AndroidDatabaseMergeCursor () {
 @public
  AndroidDatabaseDataSetObserver *mObserver_;
  id<AndroidDatabaseCursor> mCursor_;
  IOSObjectArray *mCursors_;
}

@end

J2OBJC_FIELD_SETTER(AndroidDatabaseMergeCursor, mObserver_, AndroidDatabaseDataSetObserver *)
J2OBJC_FIELD_SETTER(AndroidDatabaseMergeCursor, mCursor_, id<AndroidDatabaseCursor>)
J2OBJC_FIELD_SETTER(AndroidDatabaseMergeCursor, mCursors_, IOSObjectArray *)

@interface AndroidDatabaseMergeCursor_$1 : AndroidDatabaseDataSetObserver {
 @public
  AndroidDatabaseMergeCursor *this$0_;
}

- (void)onChanged;

- (void)onInvalidated;

- (instancetype)initWithAndroidDatabaseMergeCursor:(AndroidDatabaseMergeCursor *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(AndroidDatabaseMergeCursor_$1)

J2OBJC_FIELD_SETTER(AndroidDatabaseMergeCursor_$1, this$0_, AndroidDatabaseMergeCursor *)

__attribute__((unused)) static void AndroidDatabaseMergeCursor_$1_initWithAndroidDatabaseMergeCursor_(AndroidDatabaseMergeCursor_$1 *self, AndroidDatabaseMergeCursor *outer$);

__attribute__((unused)) static AndroidDatabaseMergeCursor_$1 *new_AndroidDatabaseMergeCursor_$1_initWithAndroidDatabaseMergeCursor_(AndroidDatabaseMergeCursor *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static AndroidDatabaseMergeCursor_$1 *create_AndroidDatabaseMergeCursor_$1_initWithAndroidDatabaseMergeCursor_(AndroidDatabaseMergeCursor *outer$);

J2OBJC_TYPE_LITERAL_HEADER(AndroidDatabaseMergeCursor_$1)

@implementation AndroidDatabaseMergeCursor

- (instancetype)initWithAndroidDatabaseCursorArray:(IOSObjectArray *)cursors {
  AndroidDatabaseMergeCursor_initWithAndroidDatabaseCursorArray_(self, cursors);
  return self;
}

- (jint)getCount {
  jint count = 0;
  jint length = ((IOSObjectArray *) nil_chk(mCursors_))->size_;
  for (jint i = 0; i < length; i++) {
    if (IOSObjectArray_Get(nil_chk(mCursors_), i) != nil) {
      count += [((id<AndroidDatabaseCursor>) nil_chk(IOSObjectArray_Get(mCursors_, i))) getCount];
    }
  }
  return count;
}

- (jboolean)onMoveWithInt:(jint)oldPosition
                  withInt:(jint)newPosition {
  mCursor_ = nil;
  jint cursorStartPos = 0;
  jint length = ((IOSObjectArray *) nil_chk(mCursors_))->size_;
  for (jint i = 0; i < length; i++) {
    if (IOSObjectArray_Get(nil_chk(mCursors_), i) == nil) {
      continue;
    }
    if (newPosition < (cursorStartPos + [((id<AndroidDatabaseCursor>) nil_chk(IOSObjectArray_Get(mCursors_, i))) getCount])) {
      mCursor_ = IOSObjectArray_Get(nil_chk(mCursors_), i);
      break;
    }
    cursorStartPos += [((id<AndroidDatabaseCursor>) nil_chk(IOSObjectArray_Get(nil_chk(mCursors_), i))) getCount];
  }
  if (mCursor_ != nil) {
    jboolean ret = [mCursor_ moveToPositionWithInt:newPosition - cursorStartPos];
    return ret;
  }
  return false;
}

- (NSString *)getStringWithInt:(jint)column {
  return [((id<AndroidDatabaseCursor>) nil_chk(mCursor_)) getStringWithInt:column];
}

- (jshort)getShortWithInt:(jint)column {
  return [((id<AndroidDatabaseCursor>) nil_chk(mCursor_)) getShortWithInt:column];
}

- (jint)getIntWithInt:(jint)column {
  return [((id<AndroidDatabaseCursor>) nil_chk(mCursor_)) getIntWithInt:column];
}

- (jlong)getLongWithInt:(jint)column {
  return [((id<AndroidDatabaseCursor>) nil_chk(mCursor_)) getLongWithInt:column];
}

- (jfloat)getFloatWithInt:(jint)column {
  return [((id<AndroidDatabaseCursor>) nil_chk(mCursor_)) getFloatWithInt:column];
}

- (jdouble)getDoubleWithInt:(jint)column {
  return [((id<AndroidDatabaseCursor>) nil_chk(mCursor_)) getDoubleWithInt:column];
}

- (jint)getTypeWithInt:(jint)column {
  return [((id<AndroidDatabaseCursor>) nil_chk(mCursor_)) getTypeWithInt:column];
}

- (jboolean)isNullWithInt:(jint)column {
  return [((id<AndroidDatabaseCursor>) nil_chk(mCursor_)) isNullWithInt:column];
}

- (IOSByteArray *)getBlobWithInt:(jint)column {
  return [((id<AndroidDatabaseCursor>) nil_chk(mCursor_)) getBlobWithInt:column];
}

- (IOSObjectArray *)getColumnNames {
  if (mCursor_ != nil) {
    return [mCursor_ getColumnNames];
  }
  else {
    return [IOSObjectArray newArrayWithLength:0 type:NSString_class_()];
  }
}

- (void)deactivate {
  jint length = ((IOSObjectArray *) nil_chk(mCursors_))->size_;
  for (jint i = 0; i < length; i++) {
    if (IOSObjectArray_Get(nil_chk(mCursors_), i) != nil) {
      [((id<AndroidDatabaseCursor>) nil_chk(IOSObjectArray_Get(mCursors_, i))) deactivate];
    }
  }
  [super deactivate];
}

- (void)close {
  jint length = ((IOSObjectArray *) nil_chk(mCursors_))->size_;
  for (jint i = 0; i < length; i++) {
    if (IOSObjectArray_Get(nil_chk(mCursors_), i) == nil) continue;
    [((id<AndroidDatabaseCursor>) nil_chk(IOSObjectArray_Get(mCursors_, i))) close];
  }
  [super close];
}

- (void)registerDataSetObserverWithAndroidDatabaseDataSetObserver:(AndroidDatabaseDataSetObserver *)observer {
  jint length = ((IOSObjectArray *) nil_chk(mCursors_))->size_;
  for (jint i = 0; i < length; i++) {
    if (IOSObjectArray_Get(nil_chk(mCursors_), i) != nil) {
      [((id<AndroidDatabaseCursor>) nil_chk(IOSObjectArray_Get(mCursors_, i))) registerDataSetObserverWithAndroidDatabaseDataSetObserver:observer];
    }
  }
}

- (void)unregisterDataSetObserverWithAndroidDatabaseDataSetObserver:(AndroidDatabaseDataSetObserver *)observer {
  jint length = ((IOSObjectArray *) nil_chk(mCursors_))->size_;
  for (jint i = 0; i < length; i++) {
    if (IOSObjectArray_Get(nil_chk(mCursors_), i) != nil) {
      [((id<AndroidDatabaseCursor>) nil_chk(IOSObjectArray_Get(mCursors_, i))) unregisterDataSetObserverWithAndroidDatabaseDataSetObserver:observer];
    }
  }
}

- (jboolean)requery {
  jint length = ((IOSObjectArray *) nil_chk(mCursors_))->size_;
  for (jint i = 0; i < length; i++) {
    if (IOSObjectArray_Get(nil_chk(mCursors_), i) == nil) {
      continue;
    }
    if ([((id<AndroidDatabaseCursor>) nil_chk(IOSObjectArray_Get(mCursors_, i))) requery] == false) {
      return false;
    }
  }
  return true;
}

- (void)dealloc {
  JreCheckFinalize(self, [AndroidDatabaseMergeCursor class]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithAndroidDatabaseCursorArray:", "MergeCursor", NULL, 0x1, NULL, NULL },
    { "getCount", NULL, "I", 0x1, NULL, NULL },
    { "onMoveWithInt:withInt:", "onMove", "Z", 0x1, NULL, NULL },
    { "getStringWithInt:", "getString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getShortWithInt:", "getShort", "S", 0x1, NULL, NULL },
    { "getIntWithInt:", "getInt", "I", 0x1, NULL, NULL },
    { "getLongWithInt:", "getLong", "J", 0x1, NULL, NULL },
    { "getFloatWithInt:", "getFloat", "F", 0x1, NULL, NULL },
    { "getDoubleWithInt:", "getDouble", "D", 0x1, NULL, NULL },
    { "getTypeWithInt:", "getType", "I", 0x1, NULL, NULL },
    { "isNullWithInt:", "isNull", "Z", 0x1, NULL, NULL },
    { "getBlobWithInt:", "getBlob", "[B", 0x1, NULL, NULL },
    { "getColumnNames", NULL, "[Ljava.lang.String;", 0x1, NULL, NULL },
    { "deactivate", NULL, "V", 0x1, NULL, NULL },
    { "close", NULL, "V", 0x1, NULL, NULL },
    { "registerDataSetObserverWithAndroidDatabaseDataSetObserver:", "registerDataSetObserver", "V", 0x1, NULL, NULL },
    { "unregisterDataSetObserverWithAndroidDatabaseDataSetObserver:", "unregisterDataSetObserver", "V", 0x1, NULL, NULL },
    { "requery", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mObserver_", NULL, 0x2, "Landroid.database.DataSetObserver;", NULL, NULL, .constantValue.asLong = 0 },
    { "mCursor_", NULL, 0x2, "Landroid.database.Cursor;", NULL, NULL, .constantValue.asLong = 0 },
    { "mCursors_", NULL, 0x2, "[Landroid.database.Cursor;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _AndroidDatabaseMergeCursor = { 2, "MergeCursor", "android.database", NULL, 0x1, 18, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_AndroidDatabaseMergeCursor;
}

@end

void AndroidDatabaseMergeCursor_initWithAndroidDatabaseCursorArray_(AndroidDatabaseMergeCursor *self, IOSObjectArray *cursors) {
  AndroidDatabaseAbstractCursor_init(self);
  self->mObserver_ = new_AndroidDatabaseMergeCursor_$1_initWithAndroidDatabaseMergeCursor_(self);
  self->mCursors_ = cursors;
  self->mCursor_ = IOSObjectArray_Get(nil_chk(cursors), 0);
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(self->mCursors_))->size_; i++) {
    if (IOSObjectArray_Get(self->mCursors_, i) == nil) continue;
    [((id<AndroidDatabaseCursor>) nil_chk(IOSObjectArray_Get(self->mCursors_, i))) registerDataSetObserverWithAndroidDatabaseDataSetObserver:self->mObserver_];
  }
}

AndroidDatabaseMergeCursor *new_AndroidDatabaseMergeCursor_initWithAndroidDatabaseCursorArray_(IOSObjectArray *cursors) {
  J2OBJC_NEW_IMPL(AndroidDatabaseMergeCursor, initWithAndroidDatabaseCursorArray_, cursors)
}

AndroidDatabaseMergeCursor *create_AndroidDatabaseMergeCursor_initWithAndroidDatabaseCursorArray_(IOSObjectArray *cursors) {
  J2OBJC_CREATE_IMPL(AndroidDatabaseMergeCursor, initWithAndroidDatabaseCursorArray_, cursors)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidDatabaseMergeCursor)

@implementation AndroidDatabaseMergeCursor_$1

- (void)onChanged {
  this$0_->mPos_ = -1;
}

- (void)onInvalidated {
  this$0_->mPos_ = -1;
}

- (instancetype)initWithAndroidDatabaseMergeCursor:(AndroidDatabaseMergeCursor *)outer$ {
  AndroidDatabaseMergeCursor_$1_initWithAndroidDatabaseMergeCursor_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onChanged", NULL, "V", 0x1, NULL, NULL },
    { "onInvalidated", NULL, "V", 0x1, NULL, NULL },
    { "initWithAndroidDatabaseMergeCursor:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Landroid.database.MergeCursor;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _AndroidDatabaseMergeCursor_$1 = { 2, "", "android.database", "MergeCursor", 0x8008, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_AndroidDatabaseMergeCursor_$1;
}

@end

void AndroidDatabaseMergeCursor_$1_initWithAndroidDatabaseMergeCursor_(AndroidDatabaseMergeCursor_$1 *self, AndroidDatabaseMergeCursor *outer$) {
  self->this$0_ = outer$;
  AndroidDatabaseDataSetObserver_init(self);
}

AndroidDatabaseMergeCursor_$1 *new_AndroidDatabaseMergeCursor_$1_initWithAndroidDatabaseMergeCursor_(AndroidDatabaseMergeCursor *outer$) {
  J2OBJC_NEW_IMPL(AndroidDatabaseMergeCursor_$1, initWithAndroidDatabaseMergeCursor_, outer$)
}

AndroidDatabaseMergeCursor_$1 *create_AndroidDatabaseMergeCursor_$1_initWithAndroidDatabaseMergeCursor_(AndroidDatabaseMergeCursor *outer$) {
  J2OBJC_CREATE_IMPL(AndroidDatabaseMergeCursor_$1, initWithAndroidDatabaseMergeCursor_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AndroidDatabaseMergeCursor_$1)