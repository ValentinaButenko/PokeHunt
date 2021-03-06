// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Data/Battle/BattleParticipant.proto

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

 #import "POGOProtos/Data/Battle/BattleParticipant.pbobjc.h"
 #import "POGOProtos/Data/Battle/BattlePokemonInfo.pbobjc.h"
 #import "POGOProtos/Data/Player/PlayerPublicProfile.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOBattleParticipantRoot

@implementation POGOBattleParticipantRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOBattlePokemonInfoRoot extensionRegistry]];
    [registry addExtensions:[POGOPlayerPublicProfileRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOBattleParticipantRoot_FileDescriptor

static GPBFileDescriptor *POGOBattleParticipantRoot_FileDescriptor(void) {
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

#pragma mark - POGOBattleParticipant

@implementation POGOBattleParticipant

@dynamic hasActivePokemon, activePokemon;
@dynamic hasTrainerPublicProfile, trainerPublicProfile;
@dynamic reversePokemonArray, reversePokemonArray_Count;
@dynamic defeatedPokemonArray, defeatedPokemonArray_Count;

typedef struct POGOBattleParticipant__storage_ {
  uint32_t _has_storage_[1];
  POGOBattlePokemonInfo *activePokemon;
  POGOPlayerPublicProfile *trainerPublicProfile;
  NSMutableArray *reversePokemonArray;
  NSMutableArray *defeatedPokemonArray;
} POGOBattleParticipant__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "activePokemon",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOBattlePokemonInfo),
        .number = POGOBattleParticipant_FieldNumber_ActivePokemon,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOBattleParticipant__storage_, activePokemon),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "trainerPublicProfile",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOPlayerPublicProfile),
        .number = POGOBattleParticipant_FieldNumber_TrainerPublicProfile,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOBattleParticipant__storage_, trainerPublicProfile),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "reversePokemonArray",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOBattlePokemonInfo),
        .number = POGOBattleParticipant_FieldNumber_ReversePokemonArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(POGOBattleParticipant__storage_, reversePokemonArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "defeatedPokemonArray",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOBattlePokemonInfo),
        .number = POGOBattleParticipant_FieldNumber_DefeatedPokemonArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(POGOBattleParticipant__storage_, defeatedPokemonArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOBattleParticipant class]
                                     rootClass:[POGOBattleParticipantRoot class]
                                          file:POGOBattleParticipantRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOBattleParticipant__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
