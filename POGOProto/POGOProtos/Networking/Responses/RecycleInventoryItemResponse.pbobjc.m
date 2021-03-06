// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/RecycleInventoryItemResponse.proto

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

 #import "POGOProtos/Networking/Responses/RecycleInventoryItemResponse.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGORecycleInventoryItemResponseRoot

@implementation POGORecycleInventoryItemResponseRoot

@end

#pragma mark - POGORecycleInventoryItemResponseRoot_FileDescriptor

static GPBFileDescriptor *POGORecycleInventoryItemResponseRoot_FileDescriptor(void) {
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

#pragma mark - POGORecycleInventoryItemResponse

@implementation POGORecycleInventoryItemResponse

@dynamic result;
@dynamic newCount;

typedef struct POGORecycleInventoryItemResponse__storage_ {
  uint32_t _has_storage_[1];
  POGORecycleInventoryItemResponse_Result result;
  int32_t newCount;
} POGORecycleInventoryItemResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.enumDescFunc = POGORecycleInventoryItemResponse_Result_EnumDescriptor,
        .number = POGORecycleInventoryItemResponse_FieldNumber_Result,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGORecycleInventoryItemResponse__storage_, result),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "newCount",
        .dataTypeSpecific.className = NULL,
        .number = POGORecycleInventoryItemResponse_FieldNumber_NewCount,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGORecycleInventoryItemResponse__storage_, newCount),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGORecycleInventoryItemResponse class]
                                     rootClass:[POGORecycleInventoryItemResponseRoot class]
                                          file:POGORecycleInventoryItemResponseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGORecycleInventoryItemResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGORecycleInventoryItemResponse_Result_RawValue(POGORecycleInventoryItemResponse *message) {
  GPBDescriptor *descriptor = [POGORecycleInventoryItemResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGORecycleInventoryItemResponse_FieldNumber_Result];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGORecycleInventoryItemResponse_Result_RawValue(POGORecycleInventoryItemResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [POGORecycleInventoryItemResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGORecycleInventoryItemResponse_FieldNumber_Result];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum POGORecycleInventoryItemResponse_Result

GPBEnumDescriptor *POGORecycleInventoryItemResponse_Result_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Unset\000Success\000ErrorNotEnoughCopies\000Error"
        "CannotRecycleIncubators\000";
    static const int32_t values[] = {
        POGORecycleInventoryItemResponse_Result_Unset,
        POGORecycleInventoryItemResponse_Result_Success,
        POGORecycleInventoryItemResponse_Result_ErrorNotEnoughCopies,
        POGORecycleInventoryItemResponse_Result_ErrorCannotRecycleIncubators,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGORecycleInventoryItemResponse_Result)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGORecycleInventoryItemResponse_Result_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGORecycleInventoryItemResponse_Result_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGORecycleInventoryItemResponse_Result_Unset:
    case POGORecycleInventoryItemResponse_Result_Success:
    case POGORecycleInventoryItemResponse_Result_ErrorNotEnoughCopies:
    case POGORecycleInventoryItemResponse_Result_ErrorCannotRecycleIncubators:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
