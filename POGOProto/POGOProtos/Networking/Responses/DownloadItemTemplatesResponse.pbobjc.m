// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/DownloadItemTemplatesResponse.proto

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

 #import "POGOProtos/Networking/Responses/DownloadItemTemplatesResponse.pbobjc.h"
 #import "POGOProtos/Settings/Master/ItemSettings.pbobjc.h"
 #import "POGOProtos/Settings/Master/MoveSettings.pbobjc.h"
 #import "POGOProtos/Settings/Master/BadgeSettings.pbobjc.h"
 #import "POGOProtos/Settings/Master/PokemonSettings.pbobjc.h"
 #import "POGOProtos/Settings/Master/MoveSequenceSettings.pbobjc.h"
 #import "POGOProtos/Settings/Master/TypeEffectiveSettings.pbobjc.h"
 #import "POGOProtos/Settings/Master/CameraSettings.pbobjc.h"
 #import "POGOProtos/Settings/Master/PlayerLevelSettings.pbobjc.h"
 #import "POGOProtos/Settings/Master/GymLevelSettings.pbobjc.h"
 #import "POGOProtos/Settings/Master/GymBattleSettings.pbobjc.h"
 #import "POGOProtos/Settings/Master/EncounterSettings.pbobjc.h"
 #import "POGOProtos/Settings/Master/IapItemDisplay.pbobjc.h"
 #import "POGOProtos/Settings/Master/IapSettings.pbobjc.h"
 #import "POGOProtos/Settings/Master/PokemonUpgradeSettings.pbobjc.h"
 #import "POGOProtos/Settings/Master/EquippedBadgeSettings.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGODownloadItemTemplatesResponseRoot

@implementation POGODownloadItemTemplatesResponseRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOItemSettingsRoot extensionRegistry]];
    [registry addExtensions:[POGOMoveSettingsRoot extensionRegistry]];
    [registry addExtensions:[POGOBadgeSettingsRoot extensionRegistry]];
    [registry addExtensions:[POGOPokemonSettingsRoot extensionRegistry]];
    [registry addExtensions:[POGOMoveSequenceSettingsRoot extensionRegistry]];
    [registry addExtensions:[POGOTypeEffectiveSettingsRoot extensionRegistry]];
    [registry addExtensions:[POGOCameraSettingsRoot extensionRegistry]];
    [registry addExtensions:[POGOPlayerLevelSettingsRoot extensionRegistry]];
    [registry addExtensions:[POGOGymLevelSettingsRoot extensionRegistry]];
    [registry addExtensions:[POGOGymBattleSettingsRoot extensionRegistry]];
    [registry addExtensions:[POGOEncounterSettingsRoot extensionRegistry]];
    [registry addExtensions:[POGOIapItemDisplayRoot extensionRegistry]];
    [registry addExtensions:[POGOIapSettingsRoot extensionRegistry]];
    [registry addExtensions:[POGOPokemonUpgradeSettingsRoot extensionRegistry]];
    [registry addExtensions:[POGOEquippedBadgeSettingsRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGODownloadItemTemplatesResponseRoot_FileDescriptor

static GPBFileDescriptor *POGODownloadItemTemplatesResponseRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Networking.Responses"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGODownloadItemTemplatesResponse

@implementation POGODownloadItemTemplatesResponse

@dynamic success;
@dynamic itemTemplatesArray, itemTemplatesArray_Count;
@dynamic timestampMs;

typedef struct POGODownloadItemTemplatesResponse__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *itemTemplatesArray;
  uint64_t timestampMs;
} POGODownloadItemTemplatesResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "success",
        .dataTypeSpecific.className = NULL,
        .number = POGODownloadItemTemplatesResponse_FieldNumber_Success,
        .hasIndex = 0,
        .offset = 1,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "itemTemplatesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(POGODownloadItemTemplatesResponse_ItemTemplate),
        .number = POGODownloadItemTemplatesResponse_FieldNumber_ItemTemplatesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse__storage_, itemTemplatesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "timestampMs",
        .dataTypeSpecific.className = NULL,
        .number = POGODownloadItemTemplatesResponse_FieldNumber_TimestampMs,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse__storage_, timestampMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGODownloadItemTemplatesResponse class]
                                     rootClass:[POGODownloadItemTemplatesResponseRoot class]
                                          file:POGODownloadItemTemplatesResponseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGODownloadItemTemplatesResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - POGODownloadItemTemplatesResponse_ItemTemplate

@implementation POGODownloadItemTemplatesResponse_ItemTemplate

@dynamic templateId;
@dynamic hasPokemonSettings, pokemonSettings;
@dynamic hasItemSettings, itemSettings;
@dynamic hasMoveSettings, moveSettings;
@dynamic hasMoveSequenceSettings, moveSequenceSettings;
@dynamic hasTypeEffective, typeEffective;
@dynamic hasBadgeSettings, badgeSettings;
@dynamic hasCamera, camera;
@dynamic hasPlayerLevel, playerLevel;
@dynamic hasGymLevel, gymLevel;
@dynamic hasBattleSettings, battleSettings;
@dynamic hasEncounterSettings, encounterSettings;
@dynamic hasIapItemDisplay, iapItemDisplay;
@dynamic hasIapSettings, iapSettings;
@dynamic hasPokemonUpgrades, pokemonUpgrades;
@dynamic hasEquippedBadges, equippedBadges;

typedef struct POGODownloadItemTemplatesResponse_ItemTemplate__storage_ {
  uint32_t _has_storage_[1];
  NSString *templateId;
  POGOPokemonSettings *pokemonSettings;
  POGOItemSettings *itemSettings;
  POGOMoveSettings *moveSettings;
  POGOMoveSequenceSettings *moveSequenceSettings;
  POGOTypeEffectiveSettings *typeEffective;
  POGOBadgeSettings *badgeSettings;
  POGOCameraSettings *camera;
  POGOPlayerLevelSettings *playerLevel;
  POGOGymLevelSettings *gymLevel;
  POGOGymBattleSettings *battleSettings;
  POGOEncounterSettings *encounterSettings;
  POGOIapItemDisplay *iapItemDisplay;
  POGOIapSettings *iapSettings;
  POGOPokemonUpgradeSettings *pokemonUpgrades;
  POGOEquippedBadgeSettings *equippedBadges;
} POGODownloadItemTemplatesResponse_ItemTemplate__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "templateId",
        .dataTypeSpecific.className = NULL,
        .number = POGODownloadItemTemplatesResponse_ItemTemplate_FieldNumber_TemplateId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_, templateId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "pokemonSettings",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOPokemonSettings),
        .number = POGODownloadItemTemplatesResponse_ItemTemplate_FieldNumber_PokemonSettings,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_, pokemonSettings),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "itemSettings",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOItemSettings),
        .number = POGODownloadItemTemplatesResponse_ItemTemplate_FieldNumber_ItemSettings,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_, itemSettings),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "moveSettings",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOMoveSettings),
        .number = POGODownloadItemTemplatesResponse_ItemTemplate_FieldNumber_MoveSettings,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_, moveSettings),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "moveSequenceSettings",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOMoveSequenceSettings),
        .number = POGODownloadItemTemplatesResponse_ItemTemplate_FieldNumber_MoveSequenceSettings,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_, moveSequenceSettings),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "typeEffective",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOTypeEffectiveSettings),
        .number = POGODownloadItemTemplatesResponse_ItemTemplate_FieldNumber_TypeEffective,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_, typeEffective),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "badgeSettings",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOBadgeSettings),
        .number = POGODownloadItemTemplatesResponse_ItemTemplate_FieldNumber_BadgeSettings,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_, badgeSettings),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "camera",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOCameraSettings),
        .number = POGODownloadItemTemplatesResponse_ItemTemplate_FieldNumber_Camera,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_, camera),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "playerLevel",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOPlayerLevelSettings),
        .number = POGODownloadItemTemplatesResponse_ItemTemplate_FieldNumber_PlayerLevel,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_, playerLevel),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "gymLevel",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOGymLevelSettings),
        .number = POGODownloadItemTemplatesResponse_ItemTemplate_FieldNumber_GymLevel,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_, gymLevel),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "battleSettings",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOGymBattleSettings),
        .number = POGODownloadItemTemplatesResponse_ItemTemplate_FieldNumber_BattleSettings,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_, battleSettings),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "encounterSettings",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOEncounterSettings),
        .number = POGODownloadItemTemplatesResponse_ItemTemplate_FieldNumber_EncounterSettings,
        .hasIndex = 11,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_, encounterSettings),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "iapItemDisplay",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOIapItemDisplay),
        .number = POGODownloadItemTemplatesResponse_ItemTemplate_FieldNumber_IapItemDisplay,
        .hasIndex = 12,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_, iapItemDisplay),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "iapSettings",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOIapSettings),
        .number = POGODownloadItemTemplatesResponse_ItemTemplate_FieldNumber_IapSettings,
        .hasIndex = 13,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_, iapSettings),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "pokemonUpgrades",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOPokemonUpgradeSettings),
        .number = POGODownloadItemTemplatesResponse_ItemTemplate_FieldNumber_PokemonUpgrades,
        .hasIndex = 14,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_, pokemonUpgrades),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "equippedBadges",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOEquippedBadgeSettings),
        .number = POGODownloadItemTemplatesResponse_ItemTemplate_FieldNumber_EquippedBadges,
        .hasIndex = 15,
        .offset = (uint32_t)offsetof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_, equippedBadges),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGODownloadItemTemplatesResponse_ItemTemplate class]
                                     rootClass:[POGODownloadItemTemplatesResponseRoot class]
                                          file:POGODownloadItemTemplatesResponseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGODownloadItemTemplatesResponse_ItemTemplate__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
