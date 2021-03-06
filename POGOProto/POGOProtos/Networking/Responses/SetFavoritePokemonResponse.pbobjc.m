// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/SetFavoritePokemonResponse.proto

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

 #import "POGOProtos/Networking/Responses/SetFavoritePokemonResponse.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOSetFavoritePokemonResponseRoot

@implementation POGOSetFavoritePokemonResponseRoot

@end

#pragma mark - POGOSetFavoritePokemonResponseRoot_FileDescriptor

static GPBFileDescriptor *POGOSetFavoritePokemonResponseRoot_FileDescriptor(void) {
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

#pragma mark - POGOSetFavoritePokemonResponse

@implementation POGOSetFavoritePokemonResponse

@dynamic result;

typedef struct POGOSetFavoritePokemonResponse__storage_ {
  uint32_t _has_storage_[1];
  POGOSetFavoritePokemonResponse_Result result;
} POGOSetFavoritePokemonResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.enumDescFunc = POGOSetFavoritePokemonResponse_Result_EnumDescriptor,
        .number = POGOSetFavoritePokemonResponse_FieldNumber_Result,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOSetFavoritePokemonResponse__storage_, result),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOSetFavoritePokemonResponse class]
                                     rootClass:[POGOSetFavoritePokemonResponseRoot class]
                                          file:POGOSetFavoritePokemonResponseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOSetFavoritePokemonResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOSetFavoritePokemonResponse_Result_RawValue(POGOSetFavoritePokemonResponse *message) {
  GPBDescriptor *descriptor = [POGOSetFavoritePokemonResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOSetFavoritePokemonResponse_FieldNumber_Result];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOSetFavoritePokemonResponse_Result_RawValue(POGOSetFavoritePokemonResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOSetFavoritePokemonResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOSetFavoritePokemonResponse_FieldNumber_Result];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum POGOSetFavoritePokemonResponse_Result

GPBEnumDescriptor *POGOSetFavoritePokemonResponse_Result_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Unset\000Success\000ErrorPokemonNotFound\000Error"
        "PokemonIsEgg\000";
    static const int32_t values[] = {
        POGOSetFavoritePokemonResponse_Result_Unset,
        POGOSetFavoritePokemonResponse_Result_Success,
        POGOSetFavoritePokemonResponse_Result_ErrorPokemonNotFound,
        POGOSetFavoritePokemonResponse_Result_ErrorPokemonIsEgg,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOSetFavoritePokemonResponse_Result)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOSetFavoritePokemonResponse_Result_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOSetFavoritePokemonResponse_Result_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOSetFavoritePokemonResponse_Result_Unset:
    case POGOSetFavoritePokemonResponse_Result_Success:
    case POGOSetFavoritePokemonResponse_Result_ErrorPokemonNotFound:
    case POGOSetFavoritePokemonResponse_Result_ErrorPokemonIsEgg:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
