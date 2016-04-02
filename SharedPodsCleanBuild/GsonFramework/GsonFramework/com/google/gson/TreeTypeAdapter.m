//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel/xp/sourcejava/gson/gson/src/main/java/com/google/gson/TreeTypeAdapter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/gson/Gson.h"
#include "com/google/gson/JsonDeserializationContext.h"
#include "com/google/gson/JsonDeserializer.h"
#include "com/google/gson/JsonElement.h"
#include "com/google/gson/JsonSerializationContext.h"
#include "com/google/gson/JsonSerializer.h"
#include "com/google/gson/TreeTypeAdapter.h"
#include "com/google/gson/TypeAdapter.h"
#include "com/google/gson/TypeAdapterFactory.h"
#include "com/google/gson/internal/$Gson$Preconditions.h"
#include "com/google/gson/internal/Streams.h"
#include "com/google/gson/reflect/TypeToken.h"
#include "com/google/gson/stream/JsonReader.h"
#include "com/google/gson/stream/JsonWriter.h"
#include "java/io/IOException.h"
#include "java/lang/reflect/Type.h"

@interface ComGoogleGsonTreeTypeAdapter () {
 @public
  id<ComGoogleGsonJsonSerializer> serializer_;
  id<ComGoogleGsonJsonDeserializer> deserializer_;
  ComGoogleGsonGson *gson_;
  ComGoogleGsonReflectTypeToken *typeToken_;
  id<ComGoogleGsonTypeAdapterFactory> skipPast_;
  ComGoogleGsonTypeAdapter *delegate_;
}

- (ComGoogleGsonTypeAdapter *)delegate;

@end

J2OBJC_FIELD_SETTER(ComGoogleGsonTreeTypeAdapter, serializer_, id<ComGoogleGsonJsonSerializer>)
J2OBJC_FIELD_SETTER(ComGoogleGsonTreeTypeAdapter, deserializer_, id<ComGoogleGsonJsonDeserializer>)
J2OBJC_FIELD_SETTER(ComGoogleGsonTreeTypeAdapter, gson_, ComGoogleGsonGson *)
J2OBJC_FIELD_SETTER(ComGoogleGsonTreeTypeAdapter, typeToken_, ComGoogleGsonReflectTypeToken *)
J2OBJC_FIELD_SETTER(ComGoogleGsonTreeTypeAdapter, skipPast_, id<ComGoogleGsonTypeAdapterFactory>)
J2OBJC_FIELD_SETTER(ComGoogleGsonTreeTypeAdapter, delegate_, ComGoogleGsonTypeAdapter *)

__attribute__((unused)) static ComGoogleGsonTypeAdapter *ComGoogleGsonTreeTypeAdapter_delegate(ComGoogleGsonTreeTypeAdapter *self);

@interface ComGoogleGsonTreeTypeAdapter_SingleTypeFactory : NSObject < ComGoogleGsonTypeAdapterFactory > {
 @public
  ComGoogleGsonReflectTypeToken *exactType_;
  jboolean matchRawType_;
  IOSClass *hierarchyType_;
  id<ComGoogleGsonJsonSerializer> serializer_;
  id<ComGoogleGsonJsonDeserializer> deserializer_;
}

- (instancetype)initWithId:(id)typeAdapter
withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)exactType
               withBoolean:(jboolean)matchRawType
              withIOSClass:(IOSClass *)hierarchyType;

- (ComGoogleGsonTypeAdapter *)createWithComGoogleGsonGson:(ComGoogleGsonGson *)gson
                        withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)type;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleGsonTreeTypeAdapter_SingleTypeFactory)

J2OBJC_FIELD_SETTER(ComGoogleGsonTreeTypeAdapter_SingleTypeFactory, exactType_, ComGoogleGsonReflectTypeToken *)
J2OBJC_FIELD_SETTER(ComGoogleGsonTreeTypeAdapter_SingleTypeFactory, hierarchyType_, IOSClass *)
J2OBJC_FIELD_SETTER(ComGoogleGsonTreeTypeAdapter_SingleTypeFactory, serializer_, id<ComGoogleGsonJsonSerializer>)
J2OBJC_FIELD_SETTER(ComGoogleGsonTreeTypeAdapter_SingleTypeFactory, deserializer_, id<ComGoogleGsonJsonDeserializer>)

__attribute__((unused)) static void ComGoogleGsonTreeTypeAdapter_SingleTypeFactory_initWithId_withComGoogleGsonReflectTypeToken_withBoolean_withIOSClass_(ComGoogleGsonTreeTypeAdapter_SingleTypeFactory *self, id typeAdapter, ComGoogleGsonReflectTypeToken *exactType, jboolean matchRawType, IOSClass *hierarchyType);

__attribute__((unused)) static ComGoogleGsonTreeTypeAdapter_SingleTypeFactory *new_ComGoogleGsonTreeTypeAdapter_SingleTypeFactory_initWithId_withComGoogleGsonReflectTypeToken_withBoolean_withIOSClass_(id typeAdapter, ComGoogleGsonReflectTypeToken *exactType, jboolean matchRawType, IOSClass *hierarchyType) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleGsonTreeTypeAdapter_SingleTypeFactory *create_ComGoogleGsonTreeTypeAdapter_SingleTypeFactory_initWithId_withComGoogleGsonReflectTypeToken_withBoolean_withIOSClass_(id typeAdapter, ComGoogleGsonReflectTypeToken *exactType, jboolean matchRawType, IOSClass *hierarchyType);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleGsonTreeTypeAdapter_SingleTypeFactory)

@implementation ComGoogleGsonTreeTypeAdapter

- (instancetype)initWithComGoogleGsonJsonSerializer:(id<ComGoogleGsonJsonSerializer>)serializer
                  withComGoogleGsonJsonDeserializer:(id<ComGoogleGsonJsonDeserializer>)deserializer
                              withComGoogleGsonGson:(ComGoogleGsonGson *)gson
                  withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)typeToken
                withComGoogleGsonTypeAdapterFactory:(id<ComGoogleGsonTypeAdapterFactory>)skipPast {
  ComGoogleGsonTreeTypeAdapter_initWithComGoogleGsonJsonSerializer_withComGoogleGsonJsonDeserializer_withComGoogleGsonGson_withComGoogleGsonReflectTypeToken_withComGoogleGsonTypeAdapterFactory_(self, serializer, deserializer, gson, typeToken, skipPast);
  return self;
}

- (id)readWithComGoogleGsonStreamJsonReader:(ComGoogleGsonStreamJsonReader *)inArg {
  if (deserializer_ == nil) {
    return [((ComGoogleGsonTypeAdapter *) nil_chk(ComGoogleGsonTreeTypeAdapter_delegate(self))) readWithComGoogleGsonStreamJsonReader:inArg];
  }
  ComGoogleGsonJsonElement *value = ComGoogleGsonInternalStreams_parseWithComGoogleGsonStreamJsonReader_(inArg);
  if ([((ComGoogleGsonJsonElement *) nil_chk(value)) isJsonNull]) {
    return nil;
  }
  return [((id<ComGoogleGsonJsonDeserializer>) nil_chk(deserializer_)) deserializeWithComGoogleGsonJsonElement:value withJavaLangReflectType:[((ComGoogleGsonReflectTypeToken *) nil_chk(typeToken_)) getType] withComGoogleGsonJsonDeserializationContext:((ComGoogleGsonGson *) nil_chk(gson_))->deserializationContext_];
}

- (void)writeWithComGoogleGsonStreamJsonWriter:(ComGoogleGsonStreamJsonWriter *)outArg
                                        withId:(id)value {
  if (serializer_ == nil) {
    [((ComGoogleGsonTypeAdapter *) nil_chk(ComGoogleGsonTreeTypeAdapter_delegate(self))) writeWithComGoogleGsonStreamJsonWriter:outArg withId:value];
    return;
  }
  if (value == nil) {
    (void) [((ComGoogleGsonStreamJsonWriter *) nil_chk(outArg)) nullValue];
    return;
  }
  ComGoogleGsonJsonElement *tree = [((id<ComGoogleGsonJsonSerializer>) nil_chk(serializer_)) serializeWithId:value withJavaLangReflectType:[((ComGoogleGsonReflectTypeToken *) nil_chk(typeToken_)) getType] withComGoogleGsonJsonSerializationContext:((ComGoogleGsonGson *) nil_chk(gson_))->serializationContext_];
  ComGoogleGsonInternalStreams_writeWithComGoogleGsonJsonElement_withComGoogleGsonStreamJsonWriter_(tree, outArg);
}

- (ComGoogleGsonTypeAdapter *)delegate {
  return ComGoogleGsonTreeTypeAdapter_delegate(self);
}

+ (id<ComGoogleGsonTypeAdapterFactory>)newFactoryWithComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)exactType
                                                                            withId:(id)typeAdapter {
  return ComGoogleGsonTreeTypeAdapter_newFactoryWithComGoogleGsonReflectTypeToken_withId_(exactType, typeAdapter);
}

+ (id<ComGoogleGsonTypeAdapterFactory>)newFactoryWithMatchRawTypeWithComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)exactType
                                                                                            withId:(id)typeAdapter {
  return ComGoogleGsonTreeTypeAdapter_newFactoryWithMatchRawTypeWithComGoogleGsonReflectTypeToken_withId_(exactType, typeAdapter);
}

+ (id<ComGoogleGsonTypeAdapterFactory>)newTypeHierarchyFactoryWithIOSClass:(IOSClass *)hierarchyType
                                                                    withId:(id)typeAdapter {
  return ComGoogleGsonTreeTypeAdapter_newTypeHierarchyFactoryWithIOSClass_withId_(hierarchyType, typeAdapter);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComGoogleGsonJsonSerializer:withComGoogleGsonJsonDeserializer:withComGoogleGsonGson:withComGoogleGsonReflectTypeToken:withComGoogleGsonTypeAdapterFactory:", "TreeTypeAdapter", NULL, 0x0, NULL, "(Lcom/google/gson/JsonSerializer<TT;>;Lcom/google/gson/JsonDeserializer<TT;>;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;Lcom/google/gson/TypeAdapterFactory;)V" },
    { "readWithComGoogleGsonStreamJsonReader:", "read", "TT;", 0x1, "Ljava.io.IOException;", "(Lcom/google/gson/stream/JsonReader;)TT;" },
    { "writeWithComGoogleGsonStreamJsonWriter:withId:", "write", "V", 0x1, "Ljava.io.IOException;", "(Lcom/google/gson/stream/JsonWriter;TT;)V" },
    { "delegate", NULL, "Lcom.google.gson.TypeAdapter;", 0x2, NULL, "()Lcom/google/gson/TypeAdapter<TT;>;" },
    { "newFactoryWithComGoogleGsonReflectTypeToken:withId:", "newFactory", "Lcom.google.gson.TypeAdapterFactory;", 0x9, NULL, "(Lcom/google/gson/reflect/TypeToken<*>;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;" },
    { "newFactoryWithMatchRawTypeWithComGoogleGsonReflectTypeToken:withId:", "newFactoryWithMatchRawType", "Lcom.google.gson.TypeAdapterFactory;", 0x9, NULL, "(Lcom/google/gson/reflect/TypeToken<*>;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;" },
    { "newTypeHierarchyFactoryWithIOSClass:withId:", "newTypeHierarchyFactory", "Lcom.google.gson.TypeAdapterFactory;", 0x9, NULL, "(Ljava/lang/Class<*>;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serializer_", NULL, 0x12, "Lcom.google.gson.JsonSerializer;", NULL, "Lcom/google/gson/JsonSerializer<TT;>;", .constantValue.asLong = 0 },
    { "deserializer_", NULL, 0x12, "Lcom.google.gson.JsonDeserializer;", NULL, "Lcom/google/gson/JsonDeserializer<TT;>;", .constantValue.asLong = 0 },
    { "gson_", NULL, 0x12, "Lcom.google.gson.Gson;", NULL, NULL, .constantValue.asLong = 0 },
    { "typeToken_", NULL, 0x12, "Lcom.google.gson.reflect.TypeToken;", NULL, "Lcom/google/gson/reflect/TypeToken<TT;>;", .constantValue.asLong = 0 },
    { "skipPast_", NULL, 0x12, "Lcom.google.gson.TypeAdapterFactory;", NULL, NULL, .constantValue.asLong = 0 },
    { "delegate_", NULL, 0x2, "Lcom.google.gson.TypeAdapter;", NULL, "Lcom/google/gson/TypeAdapter<TT;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"TT;"};
  static const char *inner_classes[] = {"Lcom.google.gson.TreeTypeAdapter$SingleTypeFactory;"};
  static const J2ObjcClassInfo _ComGoogleGsonTreeTypeAdapter = { 2, "TreeTypeAdapter", "com.google.gson", NULL, 0x10, 7, methods, 6, fields, 1, superclass_type_args, 1, inner_classes, NULL, "<T:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<TT;>;" };
  return &_ComGoogleGsonTreeTypeAdapter;
}

@end

void ComGoogleGsonTreeTypeAdapter_initWithComGoogleGsonJsonSerializer_withComGoogleGsonJsonDeserializer_withComGoogleGsonGson_withComGoogleGsonReflectTypeToken_withComGoogleGsonTypeAdapterFactory_(ComGoogleGsonTreeTypeAdapter *self, id<ComGoogleGsonJsonSerializer> serializer, id<ComGoogleGsonJsonDeserializer> deserializer, ComGoogleGsonGson *gson, ComGoogleGsonReflectTypeToken *typeToken, id<ComGoogleGsonTypeAdapterFactory> skipPast) {
  ComGoogleGsonTypeAdapter_init(self);
  self->serializer_ = serializer;
  self->deserializer_ = deserializer;
  self->gson_ = gson;
  self->typeToken_ = typeToken;
  self->skipPast_ = skipPast;
}

ComGoogleGsonTreeTypeAdapter *new_ComGoogleGsonTreeTypeAdapter_initWithComGoogleGsonJsonSerializer_withComGoogleGsonJsonDeserializer_withComGoogleGsonGson_withComGoogleGsonReflectTypeToken_withComGoogleGsonTypeAdapterFactory_(id<ComGoogleGsonJsonSerializer> serializer, id<ComGoogleGsonJsonDeserializer> deserializer, ComGoogleGsonGson *gson, ComGoogleGsonReflectTypeToken *typeToken, id<ComGoogleGsonTypeAdapterFactory> skipPast) {
  ComGoogleGsonTreeTypeAdapter *self = [ComGoogleGsonTreeTypeAdapter alloc];
  ComGoogleGsonTreeTypeAdapter_initWithComGoogleGsonJsonSerializer_withComGoogleGsonJsonDeserializer_withComGoogleGsonGson_withComGoogleGsonReflectTypeToken_withComGoogleGsonTypeAdapterFactory_(self, serializer, deserializer, gson, typeToken, skipPast);
  return self;
}

ComGoogleGsonTreeTypeAdapter *create_ComGoogleGsonTreeTypeAdapter_initWithComGoogleGsonJsonSerializer_withComGoogleGsonJsonDeserializer_withComGoogleGsonGson_withComGoogleGsonReflectTypeToken_withComGoogleGsonTypeAdapterFactory_(id<ComGoogleGsonJsonSerializer> serializer, id<ComGoogleGsonJsonDeserializer> deserializer, ComGoogleGsonGson *gson, ComGoogleGsonReflectTypeToken *typeToken, id<ComGoogleGsonTypeAdapterFactory> skipPast) {
  return new_ComGoogleGsonTreeTypeAdapter_initWithComGoogleGsonJsonSerializer_withComGoogleGsonJsonDeserializer_withComGoogleGsonGson_withComGoogleGsonReflectTypeToken_withComGoogleGsonTypeAdapterFactory_(serializer, deserializer, gson, typeToken, skipPast);
}

ComGoogleGsonTypeAdapter *ComGoogleGsonTreeTypeAdapter_delegate(ComGoogleGsonTreeTypeAdapter *self) {
  ComGoogleGsonTypeAdapter *d = self->delegate_;
  return d != nil ? d : (self->delegate_ = [((ComGoogleGsonGson *) nil_chk(self->gson_)) getDelegateAdapterWithComGoogleGsonTypeAdapterFactory:self->skipPast_ withComGoogleGsonReflectTypeToken:self->typeToken_]);
}

id<ComGoogleGsonTypeAdapterFactory> ComGoogleGsonTreeTypeAdapter_newFactoryWithComGoogleGsonReflectTypeToken_withId_(ComGoogleGsonReflectTypeToken *exactType, id typeAdapter) {
  ComGoogleGsonTreeTypeAdapter_initialize();
  return new_ComGoogleGsonTreeTypeAdapter_SingleTypeFactory_initWithId_withComGoogleGsonReflectTypeToken_withBoolean_withIOSClass_(typeAdapter, exactType, false, nil);
}

id<ComGoogleGsonTypeAdapterFactory> ComGoogleGsonTreeTypeAdapter_newFactoryWithMatchRawTypeWithComGoogleGsonReflectTypeToken_withId_(ComGoogleGsonReflectTypeToken *exactType, id typeAdapter) {
  ComGoogleGsonTreeTypeAdapter_initialize();
  jboolean matchRawType = [((ComGoogleGsonReflectTypeToken *) nil_chk(exactType)) getType] == [exactType getRawType];
  return new_ComGoogleGsonTreeTypeAdapter_SingleTypeFactory_initWithId_withComGoogleGsonReflectTypeToken_withBoolean_withIOSClass_(typeAdapter, exactType, matchRawType, nil);
}

id<ComGoogleGsonTypeAdapterFactory> ComGoogleGsonTreeTypeAdapter_newTypeHierarchyFactoryWithIOSClass_withId_(IOSClass *hierarchyType, id typeAdapter) {
  ComGoogleGsonTreeTypeAdapter_initialize();
  return new_ComGoogleGsonTreeTypeAdapter_SingleTypeFactory_initWithId_withComGoogleGsonReflectTypeToken_withBoolean_withIOSClass_(typeAdapter, nil, false, hierarchyType);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonTreeTypeAdapter)

@implementation ComGoogleGsonTreeTypeAdapter_SingleTypeFactory

- (instancetype)initWithId:(id)typeAdapter
withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)exactType
               withBoolean:(jboolean)matchRawType
              withIOSClass:(IOSClass *)hierarchyType {
  ComGoogleGsonTreeTypeAdapter_SingleTypeFactory_initWithId_withComGoogleGsonReflectTypeToken_withBoolean_withIOSClass_(self, typeAdapter, exactType, matchRawType, hierarchyType);
  return self;
}

- (ComGoogleGsonTypeAdapter *)createWithComGoogleGsonGson:(ComGoogleGsonGson *)gson
                        withComGoogleGsonReflectTypeToken:(ComGoogleGsonReflectTypeToken *)type {
  jboolean matches = exactType_ != nil ? [exactType_ isEqual:type] || (matchRawType_ && [exactType_ getType] == [((ComGoogleGsonReflectTypeToken *) nil_chk(type)) getRawType]) : [((IOSClass *) nil_chk(hierarchyType_)) isAssignableFrom:[((ComGoogleGsonReflectTypeToken *) nil_chk(type)) getRawType]];
  return matches ? new_ComGoogleGsonTreeTypeAdapter_initWithComGoogleGsonJsonSerializer_withComGoogleGsonJsonDeserializer_withComGoogleGsonGson_withComGoogleGsonReflectTypeToken_withComGoogleGsonTypeAdapterFactory_(serializer_, deserializer_, gson, type, self) : nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithId:withComGoogleGsonReflectTypeToken:withBoolean:withIOSClass:", "SingleTypeFactory", NULL, 0x0, NULL, "(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken<*>;ZLjava/lang/Class<*>;)V" },
    { "createWithComGoogleGsonGson:withComGoogleGsonReflectTypeToken:", "create", "Lcom.google.gson.TypeAdapter;", 0x1, NULL, "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "exactType_", NULL, 0x12, "Lcom.google.gson.reflect.TypeToken;", NULL, "Lcom/google/gson/reflect/TypeToken<*>;", .constantValue.asLong = 0 },
    { "matchRawType_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "hierarchyType_", NULL, 0x12, "Ljava.lang.Class;", NULL, "Ljava/lang/Class<*>;", .constantValue.asLong = 0 },
    { "serializer_", NULL, 0x12, "Lcom.google.gson.JsonSerializer;", NULL, "Lcom/google/gson/JsonSerializer<*>;", .constantValue.asLong = 0 },
    { "deserializer_", NULL, 0x12, "Lcom.google.gson.JsonDeserializer;", NULL, "Lcom/google/gson/JsonDeserializer<*>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ComGoogleGsonTreeTypeAdapter_SingleTypeFactory = { 2, "SingleTypeFactory", "com.google.gson", "TreeTypeAdapter", 0xa, 2, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleGsonTreeTypeAdapter_SingleTypeFactory;
}

@end

void ComGoogleGsonTreeTypeAdapter_SingleTypeFactory_initWithId_withComGoogleGsonReflectTypeToken_withBoolean_withIOSClass_(ComGoogleGsonTreeTypeAdapter_SingleTypeFactory *self, id typeAdapter, ComGoogleGsonReflectTypeToken *exactType, jboolean matchRawType, IOSClass *hierarchyType) {
  NSObject_init(self);
  self->serializer_ = [ComGoogleGsonJsonSerializer_class_() isInstance:typeAdapter] ? (id<ComGoogleGsonJsonSerializer>) cast_check(typeAdapter, ComGoogleGsonJsonSerializer_class_()) : nil;
  self->deserializer_ = [ComGoogleGsonJsonDeserializer_class_() isInstance:typeAdapter] ? (id<ComGoogleGsonJsonDeserializer>) cast_check(typeAdapter, ComGoogleGsonJsonDeserializer_class_()) : nil;
  ComGoogleGsonInternal$Gson$Preconditions_checkArgumentWithBoolean_(self->serializer_ != nil || self->deserializer_ != nil);
  self->exactType_ = exactType;
  self->matchRawType_ = matchRawType;
  self->hierarchyType_ = hierarchyType;
}

ComGoogleGsonTreeTypeAdapter_SingleTypeFactory *new_ComGoogleGsonTreeTypeAdapter_SingleTypeFactory_initWithId_withComGoogleGsonReflectTypeToken_withBoolean_withIOSClass_(id typeAdapter, ComGoogleGsonReflectTypeToken *exactType, jboolean matchRawType, IOSClass *hierarchyType) {
  ComGoogleGsonTreeTypeAdapter_SingleTypeFactory *self = [ComGoogleGsonTreeTypeAdapter_SingleTypeFactory alloc];
  ComGoogleGsonTreeTypeAdapter_SingleTypeFactory_initWithId_withComGoogleGsonReflectTypeToken_withBoolean_withIOSClass_(self, typeAdapter, exactType, matchRawType, hierarchyType);
  return self;
}

ComGoogleGsonTreeTypeAdapter_SingleTypeFactory *create_ComGoogleGsonTreeTypeAdapter_SingleTypeFactory_initWithId_withComGoogleGsonReflectTypeToken_withBoolean_withIOSClass_(id typeAdapter, ComGoogleGsonReflectTypeToken *exactType, jboolean matchRawType, IOSClass *hierarchyType) {
  return new_ComGoogleGsonTreeTypeAdapter_SingleTypeFactory_initWithId_withComGoogleGsonReflectTypeToken_withBoolean_withIOSClass_(typeAdapter, exactType, matchRawType, hierarchyType);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleGsonTreeTypeAdapter_SingleTypeFactory)
