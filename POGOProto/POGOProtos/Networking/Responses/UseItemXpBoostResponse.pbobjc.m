// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/UseItemXpBoostResponse.proto

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

 #import "POGOProtos/Networking/Responses/UseItemXpBoostResponse.pbobjc.h"
 #import "POGOProtos/Inventory/AppliedItems.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOUseItemXpBoostResponseRoot

@implementation POGOUseItemXpBoostResponseRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOAppliedItemsRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOUseItemXpBoostResponseRoot_FileDescriptor

static GPBFileDescriptor *POGOUseItemXpBoostResponseRoot_FileDescriptor(void) {
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

#pragma mark - POGOUseItemXpBoostResponse

@implementation POGOUseItemXpBoostResponse

@dynamic result;
@dynamic hasAppliedItems, appliedItems;

typedef struct POGOUseItemXpBoostResponse__storage_ {
  uint32_t _has_storage_[1];
  POGOUseItemXpBoostResponse_Result result;
  POGOAppliedItems *appliedItems;
} POGOUseItemXpBoostResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.enumDescFunc = POGOUseItemXpBoostResponse_Result_EnumDescriptor,
        .number = POGOUseItemXpBoostResponse_FieldNumber_Result,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOUseItemXpBoostResponse__storage_, result),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "appliedItems",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOAppliedItems),
        .number = POGOUseItemXpBoostResponse_FieldNumber_AppliedItems,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOUseItemXpBoostResponse__storage_, appliedItems),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOUseItemXpBoostResponse class]
                                     rootClass:[POGOUseItemXpBoostResponseRoot class]
                                          file:POGOUseItemXpBoostResponseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOUseItemXpBoostResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOUseItemXpBoostResponse_Result_RawValue(POGOUseItemXpBoostResponse *message) {
  GPBDescriptor *descriptor = [POGOUseItemXpBoostResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOUseItemXpBoostResponse_FieldNumber_Result];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOUseItemXpBoostResponse_Result_RawValue(POGOUseItemXpBoostResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOUseItemXpBoostResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOUseItemXpBoostResponse_FieldNumber_Result];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum POGOUseItemXpBoostResponse_Result

GPBEnumDescriptor *POGOUseItemXpBoostResponse_Result_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Unset\000Success\000ErrorInvalidItemType\000Error"
        "XpBoostAlreadyActive\000ErrorNoItemsRemaini"
        "ng\000ErrorLocationUnset\000";
    static const int32_t values[] = {
        POGOUseItemXpBoostResponse_Result_Unset,
        POGOUseItemXpBoostResponse_Result_Success,
        POGOUseItemXpBoostResponse_Result_ErrorInvalidItemType,
        POGOUseItemXpBoostResponse_Result_ErrorXpBoostAlreadyActive,
        POGOUseItemXpBoostResponse_Result_ErrorNoItemsRemaining,
        POGOUseItemXpBoostResponse_Result_ErrorLocationUnset,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOUseItemXpBoostResponse_Result)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOUseItemXpBoostResponse_Result_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOUseItemXpBoostResponse_Result_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOUseItemXpBoostResponse_Result_Unset:
    case POGOUseItemXpBoostResponse_Result_Success:
    case POGOUseItemXpBoostResponse_Result_ErrorInvalidItemType:
    case POGOUseItemXpBoostResponse_Result_ErrorXpBoostAlreadyActive:
    case POGOUseItemXpBoostResponse_Result_ErrorNoItemsRemaining:
    case POGOUseItemXpBoostResponse_Result_ErrorLocationUnset:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
