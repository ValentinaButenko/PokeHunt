// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Settings/Master/PokemonUpgradeSettings.proto

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

 #import "POGOProtos/Settings/Master/PokemonUpgradeSettings.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOPokemonUpgradeSettingsRoot

@implementation POGOPokemonUpgradeSettingsRoot

@end

#pragma mark - POGOPokemonUpgradeSettingsRoot_FileDescriptor

static GPBFileDescriptor *POGOPokemonUpgradeSettingsRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Settings.Master"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGOPokemonUpgradeSettings

@implementation POGOPokemonUpgradeSettings

@dynamic upgradesPerLevel;
@dynamic allowedLevelsAbovePlayer;
@dynamic candyCostArray, candyCostArray_Count;
@dynamic stardustCostArray, stardustCostArray_Count;

typedef struct POGOPokemonUpgradeSettings__storage_ {
  uint32_t _has_storage_[1];
  int32_t upgradesPerLevel;
  int32_t allowedLevelsAbovePlayer;
  GPBInt32Array *candyCostArray;
  GPBInt32Array *stardustCostArray;
} POGOPokemonUpgradeSettings__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "upgradesPerLevel",
        .dataTypeSpecific.className = NULL,
        .number = POGOPokemonUpgradeSettings_FieldNumber_UpgradesPerLevel,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOPokemonUpgradeSettings__storage_, upgradesPerLevel),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "allowedLevelsAbovePlayer",
        .dataTypeSpecific.className = NULL,
        .number = POGOPokemonUpgradeSettings_FieldNumber_AllowedLevelsAbovePlayer,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOPokemonUpgradeSettings__storage_, allowedLevelsAbovePlayer),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "candyCostArray",
        .dataTypeSpecific.className = NULL,
        .number = POGOPokemonUpgradeSettings_FieldNumber_CandyCostArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(POGOPokemonUpgradeSettings__storage_, candyCostArray),
        .flags = GPBFieldRepeated | GPBFieldPacked,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "stardustCostArray",
        .dataTypeSpecific.className = NULL,
        .number = POGOPokemonUpgradeSettings_FieldNumber_StardustCostArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(POGOPokemonUpgradeSettings__storage_, stardustCostArray),
        .flags = GPBFieldRepeated | GPBFieldPacked,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOPokemonUpgradeSettings class]
                                     rootClass:[POGOPokemonUpgradeSettingsRoot class]
                                          file:POGOPokemonUpgradeSettingsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOPokemonUpgradeSettings__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)