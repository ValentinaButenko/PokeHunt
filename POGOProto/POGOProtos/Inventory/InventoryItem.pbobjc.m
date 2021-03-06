// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Inventory/InventoryItem.proto

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

 #import "POGOProtos/Inventory/InventoryItem.pbobjc.h"
 #import "POGOProtos/Inventory/InventoryItemData.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOInventoryItemRoot

@implementation POGOInventoryItemRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOInventoryItemDataRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOInventoryItemRoot_FileDescriptor

static GPBFileDescriptor *POGOInventoryItemRoot_FileDescriptor(void) {
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

#pragma mark - POGOInventoryItem

@implementation POGOInventoryItem

@dynamic modifiedTimestampMs;
@dynamic deletedItemKey;
@dynamic hasInventoryItemData, inventoryItemData;

typedef struct POGOInventoryItem__storage_ {
  uint32_t _has_storage_[1];
  POGOInventoryItemData *inventoryItemData;
  int64_t modifiedTimestampMs;
  int64_t deletedItemKey;
} POGOInventoryItem__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "modifiedTimestampMs",
        .dataTypeSpecific.className = NULL,
        .number = POGOInventoryItem_FieldNumber_ModifiedTimestampMs,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOInventoryItem__storage_, modifiedTimestampMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "deletedItemKey",
        .dataTypeSpecific.className = NULL,
        .number = POGOInventoryItem_FieldNumber_DeletedItemKey,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOInventoryItem__storage_, deletedItemKey),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "inventoryItemData",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOInventoryItemData),
        .number = POGOInventoryItem_FieldNumber_InventoryItemData,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOInventoryItem__storage_, inventoryItemData),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOInventoryItem class]
                                     rootClass:[POGOInventoryItemRoot class]
                                          file:POGOInventoryItemRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOInventoryItem__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
