// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Settings/Master/Item/PokeballAttributes.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "POGOProtos/Settings/Master/Item/PokeballAttributes.pbobjc.h"
 #import "POGOProtos/Enums/ItemEffect.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOPokeballAttributesRoot

@implementation POGOPokeballAttributesRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOItemEffectRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOPokeballAttributesRoot_FileDescriptor

static GPBFileDescriptor *POGOPokeballAttributesRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Settings.Master.Item"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGOPokeballAttributes

@implementation POGOPokeballAttributes

@dynamic itemEffect;
@dynamic captureMulti;
@dynamic captureMultiEffect;
@dynamic itemEffectMod;

typedef struct POGOPokeballAttributes__storage_ {
  uint32_t _has_storage_[1];
  POGOItemEffect itemEffect;
  float captureMulti;
  float captureMultiEffect;
  float itemEffectMod;
} POGOPokeballAttributes__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "itemEffect",
        .dataTypeSpecific.enumDescFunc = POGOItemEffect_EnumDescriptor,
        .number = POGOPokeballAttributes_FieldNumber_ItemEffect,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOPokeballAttributes__storage_, itemEffect),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "captureMulti",
        .dataTypeSpecific.className = NULL,
        .number = POGOPokeballAttributes_FieldNumber_CaptureMulti,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOPokeballAttributes__storage_, captureMulti),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "captureMultiEffect",
        .dataTypeSpecific.className = NULL,
        .number = POGOPokeballAttributes_FieldNumber_CaptureMultiEffect,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOPokeballAttributes__storage_, captureMultiEffect),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "itemEffectMod",
        .dataTypeSpecific.className = NULL,
        .number = POGOPokeballAttributes_FieldNumber_ItemEffectMod,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(POGOPokeballAttributes__storage_, itemEffectMod),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOPokeballAttributes class]
                                     rootClass:[POGOPokeballAttributesRoot class]
                                          file:POGOPokeballAttributesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOPokeballAttributes__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOPokeballAttributes_ItemEffect_RawValue(POGOPokeballAttributes *message) {
  GPBDescriptor *descriptor = [POGOPokeballAttributes descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOPokeballAttributes_FieldNumber_ItemEffect];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOPokeballAttributes_ItemEffect_RawValue(POGOPokeballAttributes *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOPokeballAttributes descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOPokeballAttributes_FieldNumber_ItemEffect];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)