//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/gson/gson/src/main/java/com/google/gson/internal/bind/MapTypeAdapterFactory.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/gson/Gson.h"
#include "com/google/gson/JsonElement.h"
#include "com/google/gson/JsonPrimitive.h"
#include "com/google/gson/JsonSyntaxException.h"
#include "com/google/gson/TypeAdapter.h"
#include "com/google/gson/internal/$Gson$Types.h"
#include "com/google/gson/internal/ConstructorConstructor.h"
#include "com/google/gson/internal/JsonReaderInternalAccess.h"
#include "com/google/gson/internal/ObjectConstructor.h"
#include "com/google/gson/internal/Streams.h"
#include "com/google/gson/internal/bind/MapTypeAdapterFactory.h"
#include "com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper.h"
#include "com/google/gson/internal/bind/TypeAdapters.h"
#include "com/google/gson/reflect/TypeToken.h"
#include "com/google/gson/stream/JsonReader.h"
#include "com/google/gson/stream/JsonToken.h"
#include "com/google/gson/stream/JsonWriter.h"
#include "java/io/IOException.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Boolean.h"
#include "java/lang/reflect/Type.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

@interface ComGoogleGsonInternalBindMapTypeAdapterFactory () {
 @public
  ComGoogleGsonInternalConstructorConstructor *constructorConstructor_;
}

- (ComGoogleGsonTypeAdapter *)getKeyAdapterWithComGoogleGsonGson:(ComGoogleGsonGson *)context
                                         withJavaLangReflectType:(id<JavaLangReflectType>)keyType;

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindMapTypeAdapterFactory, constructorConstructor_, ComGoogleGsonInternalConstructorConstructor *)

__attribute__((unused)) static ComGoogleGsonTypeAdapter *ComGoogleGsonInternalBindMapTypeAdapterFactory_getKeyAdapterWithComGoogleGsonGson_withJavaLangReflectType_(ComGoogleGsonInternalBindMapTypeAdapterFactory *self, ComGoogleGsonGson *context, id<JavaLangReflectType> keyType);

@interface ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter : ComGoogleGsonTypeAdapter {
 @public
  ComGoogleGsonInternalBindMapTypeAdapterFactory *this$0_;
  ComGoogleGsonTypeAdapter *keyTypeAdapter_;
  ComGoogleGsonTypeAdapter *valueTypeAdapter_;
  id<ComGoogleGsonInternalObjectConstructor> constructor_;
}

- (instancetype)initWithComGoogleGsonInternalBindMapTypeAdapterFactory:(ComGoogleGsonInternalBindMapTypeAdapterFactory *)outer$
                                                 withComGoogleGsonGson:(ComGoogleGsonGson *)context
                                               withJavaLangReflectType:(id<JavaLangReflectType>)keyType
                                          withComGoogleGsonTypeAdapter:(ComGoogleGsonTypeAdapter *)keyTypeAdapter
                                               withJavaLangReflectType:(id<JavaLangReflectType>)valueType
                                          withComGoogleGsonTypeAdapter:(ComGoogleGsonTypeAdapter *)valueTypeAdapter
                            withComGoogleGsonInternalObjectConstructor:(id<ComGoogleGsonInternalObjectConstructor>)constructor;

- (id<JavaUtilMap>)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)inArg;

- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(id<JavaUtilMap>)map;

- (NSString *)keyToStringWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)keyElement;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter)

J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter, this$0_, ComGoogleGsonInternalBindMapTypeAdapterFactory *)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter, keyTypeAdapter_, ComGoogleGsonTypeAdapter *)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter, valueTypeAdapter_, ComGoogleGsonTypeAdapter *)
J2OBJC_FIELD_SETTER(ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter, constructor_, id<ComGoogleGsonInternalObjectConstructor>)

__attribute__((unused)) static void ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter_initWithComGoogleGsonInternalBindMapTypeAdapterFactory_withComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter *self, ComGoogleGsonInternalBindMapTypeAdapterFactory *outer$, ComGoogleGsonGson *context, id<JavaLangReflectType> keyType, ComGoogleGsonTypeAdapter *keyTypeAdapter, id<JavaLangReflectType> valueType, ComGoogleGsonTypeAdapter *valueTypeAdapter, id<ComGoogleGsonInternalObjectConstructor> constructor);

__attribute__((unused)) static ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter *new_ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter_initWithComGoogleGsonInternalBindMapTypeAdapterFactory_withComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(ComGoogleGsonInternalBindMapTypeAdapterFactory *outer$, ComGoogleGsonGson *context, id<JavaLangReflectType> keyType, ComGoogleGsonTypeAdapter *keyTypeAdapter, id<JavaLangReflectType> valueType, ComGoogleGsonTypeAdapter *valueTypeAdapter, id<ComGoogleGsonInternalObjectConstructor> constructor) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter *create_ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter_initWithComGoogleGsonInternalBindMapTypeAdapterFactory_withComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(ComGoogleGsonInternalBindMapTypeAdapterFactory *outer$, ComGoogleGsonGson *context, id<JavaLangReflectType> keyType, ComGoogleGsonTypeAdapter *keyTypeAdapter, id<JavaLangReflectType> valueType, ComGoogleGsonTypeAdapter *valueTypeAdapter, id<ComGoogleGsonInternalObjectConstructor> constructor);

__attribute__((unused)) static NSString *ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter_keyToStringWithComGoogleGsonJsonElement_(ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter *self, ComGoogleGsonJsonElement *keyElement);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter)

@implementation ComGoogleGsonInternalBindMapTypeAdapterFactory

- (instancetype)initWithComGoogleGsonInternalConstructorConstructor:(ComGoogleGsonInternalConstructorConstructor *)constructorConstructor
                                                        withBoolean:(jboolean)complexMapKeySerialization {
  ComGoogleGsonInternalBindMapTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_withBoolean_(self, constructorConstructor, complexMapKeySerialization);
  return self;
}

- (ComGoogleGsonTypeAdapter *)createWithComGoogleGsonGson:(ComGoogleGsonGson *)gson
                        withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)typeToken {
  id<JavaLangReflectType> type = [((ComGoogleGsonReflectTypeToken *) nil_chk(typeToken)) getType];
  IOSClass *rawType = [typeToken getRawType];
  if (![JavaUtilMap_class_() isAssignableFrom:rawType]) {
    return nil;
  }
  IOSClass *rawTypeOfSrc = ComGoogleGsonInternal$Gson$Types_getRawTypeWithJavaLangReflectType_(type);
  IOSObjectArray *keyAndValueTypes = ComGoogleGsonInternal$Gson$Types_getMapKeyAndValueTypesWithJavaLangReflectType_withIOSClass_(type, rawTypeOfSrc);
  ComGoogleGsonTypeAdapter *keyAdapter = ComGoogleGsonInternalBindMapTypeAdapterFactory_getKeyAdapterWithComGoogleGsonGson_withJavaLangReflectType_(self, gson, IOSObjectArray_Get(nil_chk(keyAndValueTypes), 0));
  ComGoogleGsonTypeAdapter *valueAdapter = [((ComGoogleGsonGson *) nil_chk(gson)) getAdapterWithComGoogleGsonReflectTypeToken:ComGoogleGsonReflectTypeToken_getWithJavaLangReflectType_(IOSObjectArray_Get(keyAndValueTypes, 1))];
  id<ComGoogleGsonInternalObjectConstructor> constructor = [((ComGoogleGsonInternalConstructorConstructor *) nil_chk(constructorConstructor_)) getWithComGoogleGsonReflectTypeToken:typeToken];
  ComGoogleGsonTypeAdapter *result = new_ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter_initWithComGoogleGsonInternalBindMapTypeAdapterFactory_withComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(self, gson, IOSObjectArray_Get(keyAndValueTypes, 0), keyAdapter, IOSObjectArray_Get(keyAndValueTypes, 1), valueAdapter, constructor);
  return result;
}

- (ComGoogleGsonTypeAdapter *)getKeyAdapterWithComGoogleGsonGson:(ComGoogleGsonGson *)context
                                         withJavaLangReflectType:(id<JavaLangReflectType>)keyType {
  return ComGoogleGsonInternalBindMapTypeAdapterFactory_getKeyAdapterWithComGoogleGsonGson_withJavaLangReflectType_(self, context, keyType);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComGoogleGsonInternalConstructorConstructor:withBoolean:", "MapTypeAdapterFactory", NULL, 0x1, NULL, NULL },
    { "createWithComGoogleGsonGson:withComGoogleGsonReflectTypeToken:", "create", "Lcom.google.gson.TypeAdapter;", 0x1, NULL, "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;" },
    { "getKeyAdapterWithComGoogleGsonGson:withJavaLangReflectType:", "getKeyAdapter", "Lcom.google.gson.TypeAdapter;", 0x2, NULL, "(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/google/gson/TypeAdapter<*>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "constructorConstructor_", NULL, 0x12, "Lcom.google.gson.internal.ConstructorConstructor;", NULL, NULL, .constantValue.asLong = 0 },
    { "complexMapKeySerialization_", NULL, 0x10, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lcom.google.gson.internal.bind.MapTypeAdapterFactory$Adapter;"};
  static const J2ObjcClassInfo _ComGoogleGsonInternalBindMapTypeAdapterFactory = { 2, "MapTypeAdapterFactory", "com.google.gson.internal.bind", NULL, 0x11, 3, methods, 2, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_ComGoogleGsonInternalBindMapTypeAdapterFactory;
}

@end

void ComGoogleGsonInternalBindMapTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_withBoolean_(ComGoogleGsonInternalBindMapTypeAdapterFactory *self, ComGoogleGsonInternalConstructorConstructor *constructorConstructor, jboolean complexMapKeySerialization) {
  NSObject_init(self);
  self->constructorConstructor_ = constructorConstructor;
  self->complexMapKeySerialization_ = complexMapKeySerialization;
}

ComGoogleGsonInternalBindMapTypeAdapterFactory *new_ComGoogleGsonInternalBindMapTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_withBoolean_(ComGoogleGsonInternalConstructorConstructor *constructorConstructor, jboolean complexMapKeySerialization) {
  ComGoogleGsonInternalBindMapTypeAdapterFactory *self = [ComGoogleGsonInternalBindMapTypeAdapterFactory alloc];
  ComGoogleGsonInternalBindMapTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_withBoolean_(self, constructorConstructor, complexMapKeySerialization);
  return self;
}

ComGoogleGsonInternalBindMapTypeAdapterFactory *create_ComGoogleGsonInternalBindMapTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_withBoolean_(ComGoogleGsonInternalConstructorConstructor *constructorConstructor, jboolean complexMapKeySerialization) {
  return new_ComGoogleGsonInternalBindMapTypeAdapterFactory_initWithComGoogleGsonInternalConstructorConstructor_withBoolean_(constructorConstructor, complexMapKeySerialization);
}

ComGoogleGsonTypeAdapter *ComGoogleGsonInternalBindMapTypeAdapterFactory_getKeyAdapterWithComGoogleGsonGson_withJavaLangReflectType_(ComGoogleGsonInternalBindMapTypeAdapterFactory *self, ComGoogleGsonGson *context, id<JavaLangReflectType> keyType) {
  return (keyType == [IOSClass booleanClass] || keyType == JavaLangBoolean_class_()) ? JreLoadStatic(ComGoogleGsonInternalBindTypeAdapters, BOOLEAN_AS_STRING) : [((ComGoogleGsonGson *) nil_chk(context)) getAdapterWithComGoogleGsonReflectTypeToken:ComGoogleGsonReflectTypeToken_getWithJavaLangReflectType_(keyType)];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalBindMapTypeAdapterFactory)

@implementation ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter

- (instancetype)initWithComGoogleGsonInternalBindMapTypeAdapterFactory:(ComGoogleGsonInternalBindMapTypeAdapterFactory *)outer$
                                                 withComGoogleGsonGson:(ComGoogleGsonGson *)context
                                               withJavaLangReflectType:(id<JavaLangReflectType>)keyType
                                          withComGoogleGsonTypeAdapter:(ComGoogleGsonTypeAdapter *)keyTypeAdapter
                                               withJavaLangReflectType:(id<JavaLangReflectType>)valueType
                                          withComGoogleGsonTypeAdapter:(ComGoogleGsonTypeAdapter *)valueTypeAdapter
                            withComGoogleGsonInternalObjectConstructor:(id<ComGoogleGsonInternalObjectConstructor>)constructor {
  ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter_initWithComGoogleGsonInternalBindMapTypeAdapterFactory_withComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(self, outer$, context, keyType, keyTypeAdapter, valueType, valueTypeAdapter, constructor);
  return self;
}

- (id<JavaUtilMap>)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)inArg {
  ComGoogleGsonStreamJsonToken *peek = [((ComGoogleGsonStreamJsonReader *) nil_chk(inArg)) peek];
  if (peek == JreLoadEnum(ComGoogleGsonStreamJsonToken, NULL)) {
    [inArg nextNull];
    return nil;
  }
  id<JavaUtilMap> map = [((id<ComGoogleGsonInternalObjectConstructor>) nil_chk(constructor_)) construct];
  if (peek == JreLoadEnum(ComGoogleGsonStreamJsonToken, BEGIN_ARRAY)) {
    [inArg beginArray];
    while ([inArg hasNext]) {
      [inArg beginArray];
      id key = [((ComGoogleGsonTypeAdapter *) nil_chk(keyTypeAdapter_)) readWithComGoogleGsonStreamJsonReader:inArg];
      id value = [((ComGoogleGsonTypeAdapter *) nil_chk(valueTypeAdapter_)) readWithComGoogleGsonStreamJsonReader:inArg];
      id replaced = [((id<JavaUtilMap>) nil_chk(map)) putWithId:key withId:value];
      if (replaced != nil) {
        @throw new_ComGoogleGsonJsonSyntaxException_initWithNSString_(JreStrcat("$@", @"duplicate key: ", key));
      }
      [inArg endArray];
    }
    [inArg endArray];
  }
  else {
    [inArg beginObject];
    while ([inArg hasNext]) {
      [((ComGoogleGsonInternalJsonReaderInternalAccess *) nil_chk(JreLoadStatic(ComGoogleGsonInternalJsonReaderInternalAccess, INSTANCE))) promoteNameToValueWithComGoogleGsonStreamJsonReader:inArg];
      id key = [((ComGoogleGsonTypeAdapter *) nil_chk(keyTypeAdapter_)) readWithComGoogleGsonStreamJsonReader:inArg];
      id value = [((ComGoogleGsonTypeAdapter *) nil_chk(valueTypeAdapter_)) readWithComGoogleGsonStreamJsonReader:inArg];
      id replaced = [((id<JavaUtilMap>) nil_chk(map)) putWithId:key withId:value];
      if (replaced != nil) {
        @throw new_ComGoogleGsonJsonSyntaxException_initWithNSString_(JreStrcat("$@", @"duplicate key: ", key));
      }
    }
    [inArg endObject];
  }
  return map;
}

- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(id<JavaUtilMap>)map {
  if (map == nil) {
    (void) [((ComGoogleGsonStreamJsonWriter *) nil_chk(outArg)) nullValue];
    return;
  }
  if (!this$0_->complexMapKeySerialization_) {
    (void) [((ComGoogleGsonStreamJsonWriter *) nil_chk(outArg)) beginObject];
    for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([((id<JavaUtilMap>) nil_chk(map)) entrySet])) {
      (void) [outArg nameWithNSString:NSString_valueOf_([((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey])];
      [((ComGoogleGsonTypeAdapter *) nil_chk(valueTypeAdapter_)) writeWithComGoogleGsonStreamJsonWriter:outArg withId:[entry_ getValue]];
    }
    (void) [outArg endObject];
    return;
  }
  jboolean hasComplexKeys = false;
  id<JavaUtilList> keys = new_JavaUtilArrayList_initWithInt_([((id<JavaUtilMap>) nil_chk(map)) size]);
  id<JavaUtilList> values = new_JavaUtilArrayList_initWithInt_([map size]);
  for (id<JavaUtilMap_Entry> __strong entry_ in nil_chk([map entrySet])) {
    ComGoogleGsonJsonElement *keyElement = [((ComGoogleGsonTypeAdapter *) nil_chk(keyTypeAdapter_)) toJsonTreeWithId:[((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey]];
    [keys addWithId:keyElement];
    [values addWithId:[entry_ getValue]];
    hasComplexKeys |= ([((ComGoogleGsonJsonElement *) nil_chk(keyElement)) isJsonArray] || [keyElement isJsonObject]);
  }
  if (hasComplexKeys) {
    (void) [((ComGoogleGsonStreamJsonWriter *) nil_chk(outArg)) beginArray];
    for (jint i = 0; i < [keys size]; i++) {
      (void) [outArg beginArray];
      ComGoogleGsonInternalStreams_writeWithComGoogleGsonJsonElement_withComGoogleGsonStreamJsonWriter_([keys getWithInt:i], outArg);
      [((ComGoogleGsonTypeAdapter *) nil_chk(valueTypeAdapter_)) writeWithComGoogleGsonStreamJsonWriter:outArg withId:[values getWithInt:i]];
      (void) [outArg endArray];
    }
    (void) [outArg endArray];
  }
  else {
    (void) [((ComGoogleGsonStreamJsonWriter *) nil_chk(outArg)) beginObject];
    for (jint i = 0; i < [keys size]; i++) {
      ComGoogleGsonJsonElement *keyElement = [keys getWithInt:i];
      (void) [outArg nameWithNSString:ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter_keyToStringWithComGoogleGsonJsonElement_(self, keyElement)];
      [((ComGoogleGsonTypeAdapter *) nil_chk(valueTypeAdapter_)) writeWithComGoogleGsonStreamJsonWriter:outArg withId:[values getWithInt:i]];
    }
    (void) [outArg endObject];
  }
}

- (NSString *)keyToStringWithComGoogleGsonJsonElement:(ComGoogleGsonJsonElement *)keyElement {
  return ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter_keyToStringWithComGoogleGsonJsonElement_(self, keyElement);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComGoogleGsonInternalBindMapTypeAdapterFactory:withComGoogleGsonGson:withJavaLangReflectType:withComGoogleGsonTypeAdapter:withJavaLangReflectType:withComGoogleGsonTypeAdapter:withComGoogleGsonInternalObjectConstructor:", "Adapter", NULL, 0x1, NULL, "(Lcom/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TK;>;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter<TV;>;Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;)V" },
    { "readWithComGoogleGsonStreamJsonReader:", "read", "Ljava.util.Map;", 0x1, "Ljava.io.IOException;", "(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map<TK;TV;>;" },
    { "writeWithComGoogleGsonStreamJsonWriter:withId:", "write", "V", 0x1, "Ljava.io.IOException;", "(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map<TK;TV;>;)V" },
    { "keyToStringWithComGoogleGsonJsonElement:", "keyToString", "Ljava.lang.String;", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.google.gson.internal.bind.MapTypeAdapterFactory;", NULL, NULL, .constantValue.asLong = 0 },
    { "keyTypeAdapter_", NULL, 0x12, "Lcom.google.gson.TypeAdapter;", NULL, "Lcom/google/gson/TypeAdapter<TK;>;", .constantValue.asLong = 0 },
    { "valueTypeAdapter_", NULL, 0x12, "Lcom.google.gson.TypeAdapter;", NULL, "Lcom/google/gson/TypeAdapter<TV;>;", .constantValue.asLong = 0 },
    { "constructor_", NULL, 0x12, "Lcom.google.gson.internal.ObjectConstructor;", NULL, "Lcom/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Ljava.util.Map;"};
  static const J2ObjcClassInfo _ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter = { 2, "Adapter", "com.google.gson.internal.bind", "MapTypeAdapterFactory", 0x12, 4, methods, 4, fields, 1, superclass_type_args, 0, NULL, NULL, "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<Ljava/util/Map<TK;TV;>;>;" };
  return &_ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter;
}

@end

void ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter_initWithComGoogleGsonInternalBindMapTypeAdapterFactory_withComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter *self, ComGoogleGsonInternalBindMapTypeAdapterFactory *outer$, ComGoogleGsonGson *context, id<JavaLangReflectType> keyType, ComGoogleGsonTypeAdapter *keyTypeAdapter, id<JavaLangReflectType> valueType, ComGoogleGsonTypeAdapter *valueTypeAdapter, id<ComGoogleGsonInternalObjectConstructor> constructor) {
  self->this$0_ = outer$;
  ComGoogleGsonTypeAdapter_init(self);
  self->keyTypeAdapter_ = new_ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_withJavaLangReflectType_(context, keyTypeAdapter, keyType);
  self->valueTypeAdapter_ = new_ComGoogleGsonInternalBindTypeAdapterRuntimeTypeWrapper_initWithComGoogleGsonGson_withComGoogleGsonTypeAdapter_withJavaLangReflectType_(context, valueTypeAdapter, valueType);
  self->constructor_ = constructor;
}

ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter *new_ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter_initWithComGoogleGsonInternalBindMapTypeAdapterFactory_withComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(ComGoogleGsonInternalBindMapTypeAdapterFactory *outer$, ComGoogleGsonGson *context, id<JavaLangReflectType> keyType, ComGoogleGsonTypeAdapter *keyTypeAdapter, id<JavaLangReflectType> valueType, ComGoogleGsonTypeAdapter *valueTypeAdapter, id<ComGoogleGsonInternalObjectConstructor> constructor) {
  ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter *self = [ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter alloc];
  ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter_initWithComGoogleGsonInternalBindMapTypeAdapterFactory_withComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(self, outer$, context, keyType, keyTypeAdapter, valueType, valueTypeAdapter, constructor);
  return self;
}

ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter *create_ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter_initWithComGoogleGsonInternalBindMapTypeAdapterFactory_withComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(ComGoogleGsonInternalBindMapTypeAdapterFactory *outer$, ComGoogleGsonGson *context, id<JavaLangReflectType> keyType, ComGoogleGsonTypeAdapter *keyTypeAdapter, id<JavaLangReflectType> valueType, ComGoogleGsonTypeAdapter *valueTypeAdapter, id<ComGoogleGsonInternalObjectConstructor> constructor) {
  return new_ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter_initWithComGoogleGsonInternalBindMapTypeAdapterFactory_withComGoogleGsonGson_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withJavaLangReflectType_withComGoogleGsonTypeAdapter_withComGoogleGsonInternalObjectConstructor_(outer$, context, keyType, keyTypeAdapter, valueType, valueTypeAdapter, constructor);
}

NSString *ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter_keyToStringWithComGoogleGsonJsonElement_(ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter *self, ComGoogleGsonJsonElement *keyElement) {
  if ([((ComGoogleGsonJsonElement *) nil_chk(keyElement)) isJsonPrimitive]) {
    ComGoogleGsonJsonPrimitive *primitive = [keyElement getAsJsonPrimitive];
    if ([((ComGoogleGsonJsonPrimitive *) nil_chk(primitive)) isNumber]) {
      return NSString_valueOf_([primitive getAsNumber]);
    }
    else if ([primitive isBoolean]) {
      return JavaLangBoolean_toStringWithBoolean_([primitive getAsBoolean]);
    }
    else if ([primitive isString]) {
      return [primitive getAsString];
    }
    else {
      @throw new_JavaLangAssertionError_init();
    }
  }
  else if ([keyElement isJsonNull]) {
    return @"null";
  }
  else {
    @throw new_JavaLangAssertionError_init();
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonInternalBindMapTypeAdapterFactory_Adapter)
