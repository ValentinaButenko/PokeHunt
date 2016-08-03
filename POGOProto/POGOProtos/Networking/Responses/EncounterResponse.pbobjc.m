// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/EncounterResponse.proto

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

 #import "POGOProtos/Networking/Responses/EncounterResponse.pbobjc.h"
 #import "POGOProtos/Data/Capture/CaptureProbability.pbobjc.h"
 #import "POGOProtos/Map/Pokemon/WildPokemon.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOEncounterResponseRoot

@implementation POGOEncounterResponseRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOCaptureProbabilityRoot extensionRegistry]];
    [registry addExtensions:[POGOWildPokemonRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOEncounterResponseRoot_FileDescriptor

static GPBFileDescriptor *POGOEncounterResponseRoot_FileDescriptor(void) {
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

#pragma mark - POGOEncounterResponse

@implementation POGOEncounterResponse

@dynamic hasWildPokemon, wildPokemon;
@dynamic background;
@dynamic status;
@dynamic hasCaptureProbability, captureProbability;

typedef struct POGOEncounterResponse__storage_ {
  uint32_t _has_storage_[1];
  POGOEncounterResponse_Background background;
  POGOEncounterResponse_Status status;
  POGOWildPokemon *wildPokemon;
  POGOCaptureProbability *captureProbability;
} POGOEncounterResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "wildPokemon",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOWildPokemon),
        .number = POGOEncounterResponse_FieldNumber_WildPokemon,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOEncounterResponse__storage_, wildPokemon),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "background",
        .dataTypeSpecific.enumDescFunc = POGOEncounterResponse_Background_EnumDescriptor,
        .number = POGOEncounterResponse_FieldNumber_Background,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOEncounterResponse__storage_, background),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "status",
        .dataTypeSpecific.enumDescFunc = POGOEncounterResponse_Status_EnumDescriptor,
        .number = POGOEncounterResponse_FieldNumber_Status,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOEncounterResponse__storage_, status),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "captureProbability",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOCaptureProbability),
        .number = POGOEncounterResponse_FieldNumber_CaptureProbability,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(POGOEncounterResponse__storage_, captureProbability),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOEncounterResponse class]
                                     rootClass:[POGOEncounterResponseRoot class]
                                          file:POGOEncounterResponseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOEncounterResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOEncounterResponse_Background_RawValue(POGOEncounterResponse *message) {
  GPBDescriptor *descriptor = [POGOEncounterResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOEncounterResponse_FieldNumber_Background];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOEncounterResponse_Background_RawValue(POGOEncounterResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOEncounterResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOEncounterResponse_FieldNumber_Background];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t POGOEncounterResponse_Status_RawValue(POGOEncounterResponse *message) {
  GPBDescriptor *descriptor = [POGOEncounterResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOEncounterResponse_FieldNumber_Status];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOEncounterResponse_Status_RawValue(POGOEncounterResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOEncounterResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOEncounterResponse_FieldNumber_Status];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum POGOEncounterResponse_Background

GPBEnumDescriptor *POGOEncounterResponse_Background_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Park\000Desert\000";
    static const int32_t values[] = {
        POGOEncounterResponse_Background_Park,
        POGOEncounterResponse_Background_Desert,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOEncounterResponse_Background)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOEncounterResponse_Background_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOEncounterResponse_Background_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOEncounterResponse_Background_Park:
    case POGOEncounterResponse_Background_Desert:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum POGOEncounterResponse_Status

GPBEnumDescriptor *POGOEncounterResponse_Status_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "EncounterError\000EncounterSuccess\000Encounte"
        "rNotFound\000EncounterClosed\000EncounterPokem"
        "onFled\000EncounterNotInRange\000EncounterAlre"
        "adyHappened\000PokemonInventoryFull\000";
    static const int32_t values[] = {
        POGOEncounterResponse_Status_EncounterError,
        POGOEncounterResponse_Status_EncounterSuccess,
        POGOEncounterResponse_Status_EncounterNotFound,
        POGOEncounterResponse_Status_EncounterClosed,
        POGOEncounterResponse_Status_EncounterPokemonFled,
        POGOEncounterResponse_Status_EncounterNotInRange,
        POGOEncounterResponse_Status_EncounterAlreadyHappened,
        POGOEncounterResponse_Status_PokemonInventoryFull,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOEncounterResponse_Status)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOEncounterResponse_Status_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOEncounterResponse_Status_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOEncounterResponse_Status_EncounterError:
    case POGOEncounterResponse_Status_EncounterSuccess:
    case POGOEncounterResponse_Status_EncounterNotFound:
    case POGOEncounterResponse_Status_EncounterClosed:
    case POGOEncounterResponse_Status_EncounterPokemonFled:
    case POGOEncounterResponse_Status_EncounterNotInRange:
    case POGOEncounterResponse_Status_EncounterAlreadyHappened:
    case POGOEncounterResponse_Status_PokemonInventoryFull:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)