// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Data/Battle/BattleResults.proto

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

 #import "POGOProtos/Data/Battle/BattleResults.pbobjc.h"
 #import "POGOProtos/Data/Gym/GymState.pbobjc.h"
 #import "POGOProtos/Data/Battle/BattleParticipant.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOBattleResultsRoot

@implementation POGOBattleResultsRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOGymStateRoot extensionRegistry]];
    [registry addExtensions:[POGOBattleParticipantRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOBattleResultsRoot_FileDescriptor

static GPBFileDescriptor *POGOBattleResultsRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Data.Battle"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGOBattleResults

@implementation POGOBattleResults

@dynamic hasGymState, gymState;
@dynamic attackersArray, attackersArray_Count;
@dynamic playerExperienceAwardedArray, playerExperienceAwardedArray_Count;
@dynamic nextDefenderPokemonId;
@dynamic gymPointsDelta;

typedef struct POGOBattleResults__storage_ {
  uint32_t _has_storage_[1];
  int32_t gymPointsDelta;
  POGOGymState *gymState;
  NSMutableArray *attackersArray;
  GPBInt32Array *playerExperienceAwardedArray;
  int64_t nextDefenderPokemonId;
} POGOBattleResults__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "gymState",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOGymState),
        .number = POGOBattleResults_FieldNumber_GymState,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOBattleResults__storage_, gymState),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "attackersArray",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOBattleParticipant),
        .number = POGOBattleResults_FieldNumber_AttackersArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(POGOBattleResults__storage_, attackersArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "playerExperienceAwardedArray",
        .dataTypeSpecific.className = NULL,
        .number = POGOBattleResults_FieldNumber_PlayerExperienceAwardedArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(POGOBattleResults__storage_, playerExperienceAwardedArray),
        .flags = GPBFieldRepeated | GPBFieldPacked,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "nextDefenderPokemonId",
        .dataTypeSpecific.className = NULL,
        .number = POGOBattleResults_FieldNumber_NextDefenderPokemonId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOBattleResults__storage_, nextDefenderPokemonId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "gymPointsDelta",
        .dataTypeSpecific.className = NULL,
        .number = POGOBattleResults_FieldNumber_GymPointsDelta,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOBattleResults__storage_, gymPointsDelta),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOBattleResults class]
                                     rootClass:[POGOBattleResultsRoot class]
                                          file:POGOBattleResultsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOBattleResults__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
