// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Data/Gym/GymMembership.proto

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

 #import "POGOProtos/Data/Gym/GymMembership.pbobjc.h"
 #import "POGOProtos/Data/PokemonData.pbobjc.h"
 #import "POGOProtos/Data/Player/PlayerPublicProfile.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOGymMembershipRoot

@implementation POGOGymMembershipRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOPokemonDataRoot extensionRegistry]];
    [registry addExtensions:[POGOPlayerPublicProfileRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOGymMembershipRoot_FileDescriptor

static GPBFileDescriptor *POGOGymMembershipRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Data.Gym"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGOGymMembership

@implementation POGOGymMembership

@dynamic hasPokemonData, pokemonData;
@dynamic hasTrainerPublicProfile, trainerPublicProfile;

typedef struct POGOGymMembership__storage_ {
  uint32_t _has_storage_[1];
  POGOPokemonData *pokemonData;
  POGOPlayerPublicProfile *trainerPublicProfile;
} POGOGymMembership__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "pokemonData",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOPokemonData),
        .number = POGOGymMembership_FieldNumber_PokemonData,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOGymMembership__storage_, pokemonData),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "trainerPublicProfile",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOPlayerPublicProfile),
        .number = POGOGymMembership_FieldNumber_TrainerPublicProfile,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOGymMembership__storage_, trainerPublicProfile),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOGymMembership class]
                                     rootClass:[POGOGymMembershipRoot class]
                                          file:POGOGymMembershipRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOGymMembership__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
