// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Map/Pokemon/MapPokemon.proto

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

 #import "POGOProtos/Map/Pokemon/MapPokemon.pbobjc.h"
 #import "POGOProtos/Enums/PokemonId.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOMapPokemonRoot

@implementation POGOMapPokemonRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOPokemonIdRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOMapPokemonRoot_FileDescriptor

static GPBFileDescriptor *POGOMapPokemonRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Map.Pokemon"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGOMapPokemon

@implementation POGOMapPokemon

@dynamic spawnPointId;
@dynamic encounterId;
@dynamic pokemonId;
@dynamic expirationTimestampMs;
@dynamic latitude;
@dynamic longitude;

typedef struct POGOMapPokemon__storage_ {
  uint32_t _has_storage_[1];
  POGOPokemonId pokemonId;
  NSString *spawnPointId;
  uint64_t encounterId;
  int64_t expirationTimestampMs;
  double latitude;
  double longitude;
} POGOMapPokemon__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "spawnPointId",
        .dataTypeSpecific.className = NULL,
        .number = POGOMapPokemon_FieldNumber_SpawnPointId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOMapPokemon__storage_, spawnPointId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "encounterId",
        .dataTypeSpecific.className = NULL,
        .number = POGOMapPokemon_FieldNumber_EncounterId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOMapPokemon__storage_, encounterId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFixed64,
      },
      {
        .name = "pokemonId",
        .dataTypeSpecific.enumDescFunc = POGOPokemonId_EnumDescriptor,
        .number = POGOMapPokemon_FieldNumber_PokemonId,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOMapPokemon__storage_, pokemonId),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "expirationTimestampMs",
        .dataTypeSpecific.className = NULL,
        .number = POGOMapPokemon_FieldNumber_ExpirationTimestampMs,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(POGOMapPokemon__storage_, expirationTimestampMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "latitude",
        .dataTypeSpecific.className = NULL,
        .number = POGOMapPokemon_FieldNumber_Latitude,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(POGOMapPokemon__storage_, latitude),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "longitude",
        .dataTypeSpecific.className = NULL,
        .number = POGOMapPokemon_FieldNumber_Longitude,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(POGOMapPokemon__storage_, longitude),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOMapPokemon class]
                                     rootClass:[POGOMapPokemonRoot class]
                                          file:POGOMapPokemonRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOMapPokemon__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOMapPokemon_PokemonId_RawValue(POGOMapPokemon *message) {
  GPBDescriptor *descriptor = [POGOMapPokemon descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOMapPokemon_FieldNumber_PokemonId];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOMapPokemon_PokemonId_RawValue(POGOMapPokemon *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOMapPokemon descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOMapPokemon_FieldNumber_PokemonId];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
