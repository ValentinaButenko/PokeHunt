// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/UseIncenseResponse.proto

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

 #import "POGOProtos/Networking/Responses/UseIncenseResponse.pbobjc.h"
 #import "POGOProtos/Inventory/AppliedItem.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOUseIncenseResponseRoot

@implementation POGOUseIncenseResponseRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOAppliedItemRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOUseIncenseResponseRoot_FileDescriptor

static GPBFileDescriptor *POGOUseIncenseResponseRoot_FileDescriptor(void) {
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

#pragma mark - POGOUseIncenseResponse

@implementation POGOUseIncenseResponse

@dynamic result;
@dynamic hasAppliedIncense, appliedIncense;

typedef struct POGOUseIncenseResponse__storage_ {
  uint32_t _has_storage_[1];
  POGOUseIncenseResponse_Result result;
  POGOAppliedItem *appliedIncense;
} POGOUseIncenseResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.enumDescFunc = POGOUseIncenseResponse_Result_EnumDescriptor,
        .number = POGOUseIncenseResponse_FieldNumber_Result,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOUseIncenseResponse__storage_, result),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "appliedIncense",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOAppliedItem),
        .number = POGOUseIncenseResponse_FieldNumber_AppliedIncense,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOUseIncenseResponse__storage_, appliedIncense),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOUseIncenseResponse class]
                                     rootClass:[POGOUseIncenseResponseRoot class]
                                          file:POGOUseIncenseResponseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOUseIncenseResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOUseIncenseResponse_Result_RawValue(POGOUseIncenseResponse *message) {
  GPBDescriptor *descriptor = [POGOUseIncenseResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOUseIncenseResponse_FieldNumber_Result];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOUseIncenseResponse_Result_RawValue(POGOUseIncenseResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOUseIncenseResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOUseIncenseResponse_FieldNumber_Result];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum POGOUseIncenseResponse_Result

GPBEnumDescriptor *POGOUseIncenseResponse_Result_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Unknown\000Success\000IncenseAlreadyActive\000Non"
        "eInInventory\000LocationUnset\000";
    static const int32_t values[] = {
        POGOUseIncenseResponse_Result_Unknown,
        POGOUseIncenseResponse_Result_Success,
        POGOUseIncenseResponse_Result_IncenseAlreadyActive,
        POGOUseIncenseResponse_Result_NoneInInventory,
        POGOUseIncenseResponse_Result_LocationUnset,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOUseIncenseResponse_Result)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOUseIncenseResponse_Result_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOUseIncenseResponse_Result_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOUseIncenseResponse_Result_Unknown:
    case POGOUseIncenseResponse_Result_Success:
    case POGOUseIncenseResponse_Result_IncenseAlreadyActive:
    case POGOUseIncenseResponse_Result_NoneInInventory:
    case POGOUseIncenseResponse_Result_LocationUnset:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
