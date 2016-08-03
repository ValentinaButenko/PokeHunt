// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/ReleasePokemonResponse.proto

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

 #import "POGOProtos/Networking/Responses/ReleasePokemonResponse.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOReleasePokemonResponseRoot

@implementation POGOReleasePokemonResponseRoot

@end

#pragma mark - POGOReleasePokemonResponseRoot_FileDescriptor

static GPBFileDescriptor *POGOReleasePokemonResponseRoot_FileDescriptor(void) {
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

#pragma mark - POGOReleasePokemonResponse

@implementation POGOReleasePokemonResponse

@dynamic result;
@dynamic candyAwarded;

typedef struct POGOReleasePokemonResponse__storage_ {
  uint32_t _has_storage_[1];
  POGOReleasePokemonResponse_Result result;
  int32_t candyAwarded;
} POGOReleasePokemonResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.enumDescFunc = POGOReleasePokemonResponse_Result_EnumDescriptor,
        .number = POGOReleasePokemonResponse_FieldNumber_Result,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOReleasePokemonResponse__storage_, result),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "candyAwarded",
        .dataTypeSpecific.className = NULL,
        .number = POGOReleasePokemonResponse_FieldNumber_CandyAwarded,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOReleasePokemonResponse__storage_, candyAwarded),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOReleasePokemonResponse class]
                                     rootClass:[POGOReleasePokemonResponseRoot class]
                                          file:POGOReleasePokemonResponseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOReleasePokemonResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOReleasePokemonResponse_Result_RawValue(POGOReleasePokemonResponse *message) {
  GPBDescriptor *descriptor = [POGOReleasePokemonResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOReleasePokemonResponse_FieldNumber_Result];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOReleasePokemonResponse_Result_RawValue(POGOReleasePokemonResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOReleasePokemonResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOReleasePokemonResponse_FieldNumber_Result];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum POGOReleasePokemonResponse_Result

GPBEnumDescriptor *POGOReleasePokemonResponse_Result_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Unset\000Success\000PokemonDeployed\000Failed\000Err"
        "orPokemonIsEgg\000";
    static const int32_t values[] = {
        POGOReleasePokemonResponse_Result_Unset,
        POGOReleasePokemonResponse_Result_Success,
        POGOReleasePokemonResponse_Result_PokemonDeployed,
        POGOReleasePokemonResponse_Result_Failed,
        POGOReleasePokemonResponse_Result_ErrorPokemonIsEgg,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOReleasePokemonResponse_Result)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOReleasePokemonResponse_Result_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOReleasePokemonResponse_Result_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOReleasePokemonResponse_Result_Unset:
    case POGOReleasePokemonResponse_Result_Success:
    case POGOReleasePokemonResponse_Result_PokemonDeployed:
    case POGOReleasePokemonResponse_Result_Failed:
    case POGOReleasePokemonResponse_Result_ErrorPokemonIsEgg:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)