// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Inventory/AppliedItem.proto

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

 #import "POGOProtos/Inventory/AppliedItem.pbobjc.h"
 #import "POGOProtos/Inventory/Item/ItemId.pbobjc.h"
 #import "POGOProtos/Inventory/Item/ItemType.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOAppliedItemRoot

@implementation POGOAppliedItemRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOItemIdRoot extensionRegistry]];
    [registry addExtensions:[POGOItemTypeRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOAppliedItemRoot_FileDescriptor

static GPBFileDescriptor *POGOAppliedItemRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Inventory"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGOAppliedItem

@implementation POGOAppliedItem

@dynamic itemId;
@dynamic itemType;
@dynamic expireMs;
@dynamic appliedMs;

typedef struct POGOAppliedItem__storage_ {
  uint32_t _has_storage_[1];
  POGOItemId itemId;
  POGOItemType itemType;
  int64_t expireMs;
  int64_t appliedMs;
} POGOAppliedItem__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "itemId",
        .dataTypeSpecific.enumDescFunc = POGOItemId_EnumDescriptor,
        .number = POGOAppliedItem_FieldNumber_ItemId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOAppliedItem__storage_, itemId),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "itemType",
        .dataTypeSpecific.enumDescFunc = POGOItemType_EnumDescriptor,
        .number = POGOAppliedItem_FieldNumber_ItemType,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOAppliedItem__storage_, itemType),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "expireMs",
        .dataTypeSpecific.className = NULL,
        .number = POGOAppliedItem_FieldNumber_ExpireMs,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOAppliedItem__storage_, expireMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "appliedMs",
        .dataTypeSpecific.className = NULL,
        .number = POGOAppliedItem_FieldNumber_AppliedMs,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(POGOAppliedItem__storage_, appliedMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOAppliedItem class]
                                     rootClass:[POGOAppliedItemRoot class]
                                          file:POGOAppliedItemRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOAppliedItem__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOAppliedItem_ItemId_RawValue(POGOAppliedItem *message) {
  GPBDescriptor *descriptor = [POGOAppliedItem descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOAppliedItem_FieldNumber_ItemId];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOAppliedItem_ItemId_RawValue(POGOAppliedItem *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOAppliedItem descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOAppliedItem_FieldNumber_ItemId];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t POGOAppliedItem_ItemType_RawValue(POGOAppliedItem *message) {
  GPBDescriptor *descriptor = [POGOAppliedItem descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOAppliedItem_FieldNumber_ItemType];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOAppliedItem_ItemType_RawValue(POGOAppliedItem *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOAppliedItem descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOAppliedItem_FieldNumber_ItemType];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
