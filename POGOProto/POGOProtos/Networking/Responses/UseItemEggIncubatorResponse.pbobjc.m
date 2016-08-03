// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/UseItemEggIncubatorResponse.proto

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

 #import "POGOProtos/Networking/Responses/UseItemEggIncubatorResponse.pbobjc.h"
 #import "POGOProtos/Inventory/EggIncubator.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOUseItemEggIncubatorResponseRoot

@implementation POGOUseItemEggIncubatorResponseRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOEggIncubatorRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOUseItemEggIncubatorResponseRoot_FileDescriptor

static GPBFileDescriptor *POGOUseItemEggIncubatorResponseRoot_FileDescriptor(void) {
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

#pragma mark - POGOUseItemEggIncubatorResponse

@implementation POGOUseItemEggIncubatorResponse

@dynamic result;
@dynamic hasEggIncubator, eggIncubator;

typedef struct POGOUseItemEggIncubatorResponse__storage_ {
  uint32_t _has_storage_[1];
  POGOUseItemEggIncubatorResponse_Result result;
  POGOEggIncubator *eggIncubator;
} POGOUseItemEggIncubatorResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.enumDescFunc = POGOUseItemEggIncubatorResponse_Result_EnumDescriptor,
        .number = POGOUseItemEggIncubatorResponse_FieldNumber_Result,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOUseItemEggIncubatorResponse__storage_, result),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "eggIncubator",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOEggIncubator),
        .number = POGOUseItemEggIncubatorResponse_FieldNumber_EggIncubator,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOUseItemEggIncubatorResponse__storage_, eggIncubator),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOUseItemEggIncubatorResponse class]
                                     rootClass:[POGOUseItemEggIncubatorResponseRoot class]
                                          file:POGOUseItemEggIncubatorResponseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOUseItemEggIncubatorResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOUseItemEggIncubatorResponse_Result_RawValue(POGOUseItemEggIncubatorResponse *message) {
  GPBDescriptor *descriptor = [POGOUseItemEggIncubatorResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOUseItemEggIncubatorResponse_FieldNumber_Result];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOUseItemEggIncubatorResponse_Result_RawValue(POGOUseItemEggIncubatorResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOUseItemEggIncubatorResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOUseItemEggIncubatorResponse_FieldNumber_Result];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum POGOUseItemEggIncubatorResponse_Result

GPBEnumDescriptor *POGOUseItemEggIncubatorResponse_Result_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Unset\000Success\000ErrorIncubatorNotFound\000Err"
        "orPokemonEggNotFound\000ErrorPokemonIdNotEg"
        "g\000ErrorIncubatorAlreadyInUse\000ErrorPokemo"
        "nAlreadyIncubating\000ErrorIncubatorNoUsesR"
        "emaining\000";
    static const int32_t values[] = {
        POGOUseItemEggIncubatorResponse_Result_Unset,
        POGOUseItemEggIncubatorResponse_Result_Success,
        POGOUseItemEggIncubatorResponse_Result_ErrorIncubatorNotFound,
        POGOUseItemEggIncubatorResponse_Result_ErrorPokemonEggNotFound,
        POGOUseItemEggIncubatorResponse_Result_ErrorPokemonIdNotEgg,
        POGOUseItemEggIncubatorResponse_Result_ErrorIncubatorAlreadyInUse,
        POGOUseItemEggIncubatorResponse_Result_ErrorPokemonAlreadyIncubating,
        POGOUseItemEggIncubatorResponse_Result_ErrorIncubatorNoUsesRemaining,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOUseItemEggIncubatorResponse_Result)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOUseItemEggIncubatorResponse_Result_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOUseItemEggIncubatorResponse_Result_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOUseItemEggIncubatorResponse_Result_Unset:
    case POGOUseItemEggIncubatorResponse_Result_Success:
    case POGOUseItemEggIncubatorResponse_Result_ErrorIncubatorNotFound:
    case POGOUseItemEggIncubatorResponse_Result_ErrorPokemonEggNotFound:
    case POGOUseItemEggIncubatorResponse_Result_ErrorPokemonIdNotEgg:
    case POGOUseItemEggIncubatorResponse_Result_ErrorIncubatorAlreadyInUse:
    case POGOUseItemEggIncubatorResponse_Result_ErrorPokemonAlreadyIncubating:
    case POGOUseItemEggIncubatorResponse_Result_ErrorIncubatorNoUsesRemaining:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)