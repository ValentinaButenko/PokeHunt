// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Inventory/InventoryUpgrades.proto

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

 #import "POGOProtos/Inventory/InventoryUpgrades.pbobjc.h"
 #import "POGOProtos/Inventory/InventoryUpgrade.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOInventoryUpgradesRoot

@implementation POGOInventoryUpgradesRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOInventoryUpgradeRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOInventoryUpgradesRoot_FileDescriptor

static GPBFileDescriptor *POGOInventoryUpgradesRoot_FileDescriptor(void) {
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

#pragma mark - POGOInventoryUpgrades

@implementation POGOInventoryUpgrades

@dynamic inventoryUpgradesArray, inventoryUpgradesArray_Count;

typedef struct POGOInventoryUpgrades__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *inventoryUpgradesArray;
} POGOInventoryUpgrades__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "inventoryUpgradesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOInventoryUpgrade),
        .number = POGOInventoryUpgrades_FieldNumber_InventoryUpgradesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(POGOInventoryUpgrades__storage_, inventoryUpgradesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOInventoryUpgrades class]
                                     rootClass:[POGOInventoryUpgradesRoot class]
                                          file:POGOInventoryUpgradesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOInventoryUpgrades__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
