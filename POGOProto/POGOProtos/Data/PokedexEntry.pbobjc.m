// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Data/PokedexEntry.proto

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

 #import "POGOProtos/Data/PokedexEntry.pbobjc.h"
 #import "POGOProtos/Enums/PokemonId.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOPokedexEntryRoot

@implementation POGOPokedexEntryRoot

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

#pragma mark - POGOPokedexEntryRoot_FileDescriptor

static GPBFileDescriptor *POGOPokedexEntryRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Data"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGOPokedexEntry

@implementation POGOPokedexEntry

@dynamic pokemonId;
@dynamic timesEncountered;
@dynamic timesCaptured;
@dynamic evolutionStonePieces;
@dynamic evolutionStones;

typedef struct POGOPokedexEntry__storage_ {
  uint32_t _has_storage_[1];
  POGOPokemonId pokemonId;
  int32_t timesEncountered;
  int32_t timesCaptured;
  int32_t evolutionStonePieces;
  int32_t evolutionStones;
} POGOPokedexEntry__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "pokemonId",
        .dataTypeSpecific.enumDescFunc = POGOPokemonId_EnumDescriptor,
        .number = POGOPokedexEntry_FieldNumber_PokemonId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOPokedexEntry__storage_, pokemonId),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "timesEncountered",
        .dataTypeSpecific.className = NULL,
        .number = POGOPokedexEntry_FieldNumber_TimesEncountered,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOPokedexEntry__storage_, timesEncountered),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "timesCaptured",
        .dataTypeSpecific.className = NULL,
        .number = POGOPokedexEntry_FieldNumber_TimesCaptured,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOPokedexEntry__storage_, timesCaptured),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "evolutionStonePieces",
        .dataTypeSpecific.className = NULL,
        .number = POGOPokedexEntry_FieldNumber_EvolutionStonePieces,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(POGOPokedexEntry__storage_, evolutionStonePieces),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "evolutionStones",
        .dataTypeSpecific.className = NULL,
        .number = POGOPokedexEntry_FieldNumber_EvolutionStones,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(POGOPokedexEntry__storage_, evolutionStones),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOPokedexEntry class]
                                     rootClass:[POGOPokedexEntryRoot class]
                                          file:POGOPokedexEntryRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOPokedexEntry__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOPokedexEntry_PokemonId_RawValue(POGOPokedexEntry *message) {
  GPBDescriptor *descriptor = [POGOPokedexEntry descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOPokedexEntry_FieldNumber_PokemonId];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOPokedexEntry_PokemonId_RawValue(POGOPokedexEntry *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOPokedexEntry descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOPokedexEntry_FieldNumber_PokemonId];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)