// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/GetIncensePokemonResponse.proto

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

 #import "POGOProtos/Networking/Responses/GetIncensePokemonResponse.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOGetIncensePokemonResponseRoot

@implementation POGOGetIncensePokemonResponseRoot

@end

#pragma mark - POGOGetIncensePokemonResponseRoot_FileDescriptor

static GPBFileDescriptor *POGOGetIncensePokemonResponseRoot_FileDescriptor(void) {
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

#pragma mark - POGOGetIncensePokemonResponse

@implementation POGOGetIncensePokemonResponse

@dynamic result;
@dynamic pokemonTypeId;
@dynamic latitude;
@dynamic longitude;
@dynamic encounterLocation;
@dynamic encounterId;
@dynamic disappearTimestampMs;

typedef struct POGOGetIncensePokemonResponse__storage_ {
  uint32_t _has_storage_[1];
  POGOGetIncensePokemonResponse_Result result;
  int32_t pokemonTypeId;
  NSString *encounterLocation;
  double latitude;
  double longitude;
  uint64_t encounterId;
  int64_t disappearTimestampMs;
} POGOGetIncensePokemonResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.enumDescFunc = POGOGetIncensePokemonResponse_Result_EnumDescriptor,
        .number = POGOGetIncensePokemonResponse_FieldNumber_Result,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOGetIncensePokemonResponse__storage_, result),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "pokemonTypeId",
        .dataTypeSpecific.className = NULL,
        .number = POGOGetIncensePokemonResponse_FieldNumber_PokemonTypeId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOGetIncensePokemonResponse__storage_, pokemonTypeId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "latitude",
        .dataTypeSpecific.className = NULL,
        .number = POGOGetIncensePokemonResponse_FieldNumber_Latitude,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOGetIncensePokemonResponse__storage_, latitude),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "longitude",
        .dataTypeSpecific.className = NULL,
        .number = POGOGetIncensePokemonResponse_FieldNumber_Longitude,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(POGOGetIncensePokemonResponse__storage_, longitude),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "encounterLocation",
        .dataTypeSpecific.className = NULL,
        .number = POGOGetIncensePokemonResponse_FieldNumber_EncounterLocation,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(POGOGetIncensePokemonResponse__storage_, encounterLocation),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "encounterId",
        .dataTypeSpecific.className = NULL,
        .number = POGOGetIncensePokemonResponse_FieldNumber_EncounterId,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(POGOGetIncensePokemonResponse__storage_, encounterId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
      {
        .name = "disappearTimestampMs",
        .dataTypeSpecific.className = NULL,
        .number = POGOGetIncensePokemonResponse_FieldNumber_DisappearTimestampMs,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(POGOGetIncensePokemonResponse__storage_, disappearTimestampMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOGetIncensePokemonResponse class]
                                     rootClass:[POGOGetIncensePokemonResponseRoot class]
                                          file:POGOGetIncensePokemonResponseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOGetIncensePokemonResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOGetIncensePokemonResponse_Result_RawValue(POGOGetIncensePokemonResponse *message) {
  GPBDescriptor *descriptor = [POGOGetIncensePokemonResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOGetIncensePokemonResponse_FieldNumber_Result];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOGetIncensePokemonResponse_Result_RawValue(POGOGetIncensePokemonResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOGetIncensePokemonResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOGetIncensePokemonResponse_FieldNumber_Result];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum POGOGetIncensePokemonResponse_Result

GPBEnumDescriptor *POGOGetIncensePokemonResponse_Result_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "IncenseEncounterUnknown\000IncenseEncounter"
        "Available\000IncenseEncounterNotAvailable\000";
    static const int32_t values[] = {
        POGOGetIncensePokemonResponse_Result_IncenseEncounterUnknown,
        POGOGetIncensePokemonResponse_Result_IncenseEncounterAvailable,
        POGOGetIncensePokemonResponse_Result_IncenseEncounterNotAvailable,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOGetIncensePokemonResponse_Result)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOGetIncensePokemonResponse_Result_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOGetIncensePokemonResponse_Result_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOGetIncensePokemonResponse_Result_IncenseEncounterUnknown:
    case POGOGetIncensePokemonResponse_Result_IncenseEncounterAvailable:
    case POGOGetIncensePokemonResponse_Result_IncenseEncounterNotAvailable:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
