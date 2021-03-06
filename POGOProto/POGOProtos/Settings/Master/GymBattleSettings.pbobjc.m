// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Settings/Master/GymBattleSettings.proto

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

 #import "POGOProtos/Settings/Master/GymBattleSettings.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOGymBattleSettingsRoot

@implementation POGOGymBattleSettingsRoot

@end

#pragma mark - POGOGymBattleSettingsRoot_FileDescriptor

static GPBFileDescriptor *POGOGymBattleSettingsRoot_FileDescriptor(void) {
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

#pragma mark - POGOGymBattleSettings

@implementation POGOGymBattleSettings

@dynamic energyPerSec;
@dynamic dodgeEnergyCost;
@dynamic retargetSeconds;
@dynamic enemyAttackInterval;
@dynamic attackServerInterval;
@dynamic roundDurationSeconds;
@dynamic bonusTimePerAllySeconds;
@dynamic maximumAttackersPerBattle;
@dynamic sameTypeAttackBonusMultiplier;
@dynamic maximumEnergy;
@dynamic energyDeltaPerHealthLost;
@dynamic dodgeDurationMs;
@dynamic minimumPlayerLevel;
@dynamic swapDurationMs;

typedef struct POGOGymBattleSettings__storage_ {
  uint32_t _has_storage_[1];
  float energyPerSec;
  float dodgeEnergyCost;
  float retargetSeconds;
  float enemyAttackInterval;
  float attackServerInterval;
  float roundDurationSeconds;
  float bonusTimePerAllySeconds;
  int32_t maximumAttackersPerBattle;
  float sameTypeAttackBonusMultiplier;
  int32_t maximumEnergy;
  float energyDeltaPerHealthLost;
  int32_t dodgeDurationMs;
  int32_t minimumPlayerLevel;
  int32_t swapDurationMs;
} POGOGymBattleSettings__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "energyPerSec",
        .dataTypeSpecific.className = NULL,
        .number = POGOGymBattleSettings_FieldNumber_EnergyPerSec,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOGymBattleSettings__storage_, energyPerSec),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "dodgeEnergyCost",
        .dataTypeSpecific.className = NULL,
        .number = POGOGymBattleSettings_FieldNumber_DodgeEnergyCost,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOGymBattleSettings__storage_, dodgeEnergyCost),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "retargetSeconds",
        .dataTypeSpecific.className = NULL,
        .number = POGOGymBattleSettings_FieldNumber_RetargetSeconds,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOGymBattleSettings__storage_, retargetSeconds),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "enemyAttackInterval",
        .dataTypeSpecific.className = NULL,
        .number = POGOGymBattleSettings_FieldNumber_EnemyAttackInterval,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(POGOGymBattleSettings__storage_, enemyAttackInterval),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "attackServerInterval",
        .dataTypeSpecific.className = NULL,
        .number = POGOGymBattleSettings_FieldNumber_AttackServerInterval,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(POGOGymBattleSettings__storage_, attackServerInterval),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "roundDurationSeconds",
        .dataTypeSpecific.className = NULL,
        .number = POGOGymBattleSettings_FieldNumber_RoundDurationSeconds,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(POGOGymBattleSettings__storage_, roundDurationSeconds),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "bonusTimePerAllySeconds",
        .dataTypeSpecific.className = NULL,
        .number = POGOGymBattleSettings_FieldNumber_BonusTimePerAllySeconds,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(POGOGymBattleSettings__storage_, bonusTimePerAllySeconds),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "maximumAttackersPerBattle",
        .dataTypeSpecific.className = NULL,
        .number = POGOGymBattleSettings_FieldNumber_MaximumAttackersPerBattle,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(POGOGymBattleSettings__storage_, maximumAttackersPerBattle),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "sameTypeAttackBonusMultiplier",
        .dataTypeSpecific.className = NULL,
        .number = POGOGymBattleSettings_FieldNumber_SameTypeAttackBonusMultiplier,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(POGOGymBattleSettings__storage_, sameTypeAttackBonusMultiplier),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "maximumEnergy",
        .dataTypeSpecific.className = NULL,
        .number = POGOGymBattleSettings_FieldNumber_MaximumEnergy,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(POGOGymBattleSettings__storage_, maximumEnergy),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "energyDeltaPerHealthLost",
        .dataTypeSpecific.className = NULL,
        .number = POGOGymBattleSettings_FieldNumber_EnergyDeltaPerHealthLost,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(POGOGymBattleSettings__storage_, energyDeltaPerHealthLost),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "dodgeDurationMs",
        .dataTypeSpecific.className = NULL,
        .number = POGOGymBattleSettings_FieldNumber_DodgeDurationMs,
        .hasIndex = 11,
        .offset = (uint32_t)offsetof(POGOGymBattleSettings__storage_, dodgeDurationMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "minimumPlayerLevel",
        .dataTypeSpecific.className = NULL,
        .number = POGOGymBattleSettings_FieldNumber_MinimumPlayerLevel,
        .hasIndex = 12,
        .offset = (uint32_t)offsetof(POGOGymBattleSettings__storage_, minimumPlayerLevel),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "swapDurationMs",
        .dataTypeSpecific.className = NULL,
        .number = POGOGymBattleSettings_FieldNumber_SwapDurationMs,
        .hasIndex = 13,
        .offset = (uint32_t)offsetof(POGOGymBattleSettings__storage_, swapDurationMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOGymBattleSettings class]
                                     rootClass:[POGOGymBattleSettingsRoot class]
                                          file:POGOGymBattleSettingsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOGymBattleSettings__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
