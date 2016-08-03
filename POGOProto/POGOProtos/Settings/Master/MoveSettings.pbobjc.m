// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Settings/Master/MoveSettings.proto

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

 #import "POGOProtos/Settings/Master/MoveSettings.pbobjc.h"
 #import "POGOProtos/Enums/PokemonType.pbobjc.h"
 #import "POGOProtos/Enums/PokemonMovementType.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOMoveSettingsRoot

@implementation POGOMoveSettingsRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOPokemonTypeRoot extensionRegistry]];
    [registry addExtensions:[POGOPokemonMovementTypeRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOMoveSettingsRoot_FileDescriptor

static GPBFileDescriptor *POGOMoveSettingsRoot_FileDescriptor(void) {
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

#pragma mark - POGOMoveSettings

@implementation POGOMoveSettings

@dynamic movementId;
@dynamic animationId;
@dynamic pokemonType;
@dynamic power;
@dynamic accuracyChance;
@dynamic criticalChance;
@dynamic healScalar;
@dynamic staminaLossScalar;
@dynamic trainerLevelMin;
@dynamic trainerLevelMax;
@dynamic vfxName;
@dynamic durationMs;
@dynamic damageWindowStartMs;
@dynamic damageWindowEndMs;
@dynamic energyDelta;

typedef struct POGOMoveSettings__storage_ {
  uint32_t _has_storage_[1];
  POGOPokemonMovementType movementId;
  int32_t animationId;
  POGOPokemonType pokemonType;
  float power;
  float accuracyChance;
  float criticalChance;
  float healScalar;
  float staminaLossScalar;
  int32_t trainerLevelMin;
  int32_t trainerLevelMax;
  int32_t durationMs;
  int32_t damageWindowStartMs;
  int32_t damageWindowEndMs;
  int32_t energyDelta;
  NSString *vfxName;
} POGOMoveSettings__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "movementId",
        .dataTypeSpecific.enumDescFunc = POGOPokemonMovementType_EnumDescriptor,
        .number = POGOMoveSettings_FieldNumber_MovementId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOMoveSettings__storage_, movementId),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "animationId",
        .dataTypeSpecific.className = NULL,
        .number = POGOMoveSettings_FieldNumber_AnimationId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOMoveSettings__storage_, animationId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pokemonType",
        .dataTypeSpecific.enumDescFunc = POGOPokemonType_EnumDescriptor,
        .number = POGOMoveSettings_FieldNumber_PokemonType,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOMoveSettings__storage_, pokemonType),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "power",
        .dataTypeSpecific.className = NULL,
        .number = POGOMoveSettings_FieldNumber_Power,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(POGOMoveSettings__storage_, power),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "accuracyChance",
        .dataTypeSpecific.className = NULL,
        .number = POGOMoveSettings_FieldNumber_AccuracyChance,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(POGOMoveSettings__storage_, accuracyChance),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "criticalChance",
        .dataTypeSpecific.className = NULL,
        .number = POGOMoveSettings_FieldNumber_CriticalChance,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(POGOMoveSettings__storage_, criticalChance),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "healScalar",
        .dataTypeSpecific.className = NULL,
        .number = POGOMoveSettings_FieldNumber_HealScalar,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(POGOMoveSettings__storage_, healScalar),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "staminaLossScalar",
        .dataTypeSpecific.className = NULL,
        .number = POGOMoveSettings_FieldNumber_StaminaLossScalar,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(POGOMoveSettings__storage_, staminaLossScalar),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "trainerLevelMin",
        .dataTypeSpecific.className = NULL,
        .number = POGOMoveSettings_FieldNumber_TrainerLevelMin,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(POGOMoveSettings__storage_, trainerLevelMin),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "trainerLevelMax",
        .dataTypeSpecific.className = NULL,
        .number = POGOMoveSettings_FieldNumber_TrainerLevelMax,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(POGOMoveSettings__storage_, trainerLevelMax),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "vfxName",
        .dataTypeSpecific.className = NULL,
        .number = POGOMoveSettings_FieldNumber_VfxName,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(POGOMoveSettings__storage_, vfxName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "durationMs",
        .dataTypeSpecific.className = NULL,
        .number = POGOMoveSettings_FieldNumber_DurationMs,
        .hasIndex = 11,
        .offset = (uint32_t)offsetof(POGOMoveSettings__storage_, durationMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "damageWindowStartMs",
        .dataTypeSpecific.className = NULL,
        .number = POGOMoveSettings_FieldNumber_DamageWindowStartMs,
        .hasIndex = 12,
        .offset = (uint32_t)offsetof(POGOMoveSettings__storage_, damageWindowStartMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "damageWindowEndMs",
        .dataTypeSpecific.className = NULL,
        .number = POGOMoveSettings_FieldNumber_DamageWindowEndMs,
        .hasIndex = 13,
        .offset = (uint32_t)offsetof(POGOMoveSettings__storage_, damageWindowEndMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "energyDelta",
        .dataTypeSpecific.className = NULL,
        .number = POGOMoveSettings_FieldNumber_EnergyDelta,
        .hasIndex = 14,
        .offset = (uint32_t)offsetof(POGOMoveSettings__storage_, energyDelta),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOMoveSettings class]
                                     rootClass:[POGOMoveSettingsRoot class]
                                          file:POGOMoveSettingsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOMoveSettings__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOMoveSettings_MovementId_RawValue(POGOMoveSettings *message) {
  GPBDescriptor *descriptor = [POGOMoveSettings descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOMoveSettings_FieldNumber_MovementId];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOMoveSettings_MovementId_RawValue(POGOMoveSettings *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOMoveSettings descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOMoveSettings_FieldNumber_MovementId];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t POGOMoveSettings_PokemonType_RawValue(POGOMoveSettings *message) {
  GPBDescriptor *descriptor = [POGOMoveSettings descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOMoveSettings_FieldNumber_PokemonType];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOMoveSettings_PokemonType_RawValue(POGOMoveSettings *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOMoveSettings descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOMoveSettings_FieldNumber_PokemonType];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)