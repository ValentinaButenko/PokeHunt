// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/CollectDailyDefenderBonusResponse.proto

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

 #import "POGOProtos/Networking/Responses/CollectDailyDefenderBonusResponse.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOCollectDailyDefenderBonusResponseRoot

@implementation POGOCollectDailyDefenderBonusResponseRoot

@end

#pragma mark - POGOCollectDailyDefenderBonusResponseRoot_FileDescriptor

static GPBFileDescriptor *POGOCollectDailyDefenderBonusResponseRoot_FileDescriptor(void) {
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

#pragma mark - POGOCollectDailyDefenderBonusResponse

@implementation POGOCollectDailyDefenderBonusResponse

@dynamic result;
@dynamic currencyTypeArray, currencyTypeArray_Count;
@dynamic currencyAwardedArray, currencyAwardedArray_Count;
@dynamic defendersCount;

typedef struct POGOCollectDailyDefenderBonusResponse__storage_ {
  uint32_t _has_storage_[1];
  POGOCollectDailyDefenderBonusResponse_Result result;
  int32_t defendersCount;
  NSMutableArray *currencyTypeArray;
  GPBInt32Array *currencyAwardedArray;
} POGOCollectDailyDefenderBonusResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.enumDescFunc = POGOCollectDailyDefenderBonusResponse_Result_EnumDescriptor,
        .number = POGOCollectDailyDefenderBonusResponse_FieldNumber_Result,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOCollectDailyDefenderBonusResponse__storage_, result),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "currencyTypeArray",
        .dataTypeSpecific.className = NULL,
        .number = POGOCollectDailyDefenderBonusResponse_FieldNumber_CurrencyTypeArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(POGOCollectDailyDefenderBonusResponse__storage_, currencyTypeArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "currencyAwardedArray",
        .dataTypeSpecific.className = NULL,
        .number = POGOCollectDailyDefenderBonusResponse_FieldNumber_CurrencyAwardedArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(POGOCollectDailyDefenderBonusResponse__storage_, currencyAwardedArray),
        .flags = GPBFieldRepeated | GPBFieldPacked,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "defendersCount",
        .dataTypeSpecific.className = NULL,
        .number = POGOCollectDailyDefenderBonusResponse_FieldNumber_DefendersCount,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOCollectDailyDefenderBonusResponse__storage_, defendersCount),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOCollectDailyDefenderBonusResponse class]
                                     rootClass:[POGOCollectDailyDefenderBonusResponseRoot class]
                                          file:POGOCollectDailyDefenderBonusResponseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOCollectDailyDefenderBonusResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOCollectDailyDefenderBonusResponse_Result_RawValue(POGOCollectDailyDefenderBonusResponse *message) {
  GPBDescriptor *descriptor = [POGOCollectDailyDefenderBonusResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOCollectDailyDefenderBonusResponse_FieldNumber_Result];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOCollectDailyDefenderBonusResponse_Result_RawValue(POGOCollectDailyDefenderBonusResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOCollectDailyDefenderBonusResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOCollectDailyDefenderBonusResponse_FieldNumber_Result];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum POGOCollectDailyDefenderBonusResponse_Result

GPBEnumDescriptor *POGOCollectDailyDefenderBonusResponse_Result_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Unset\000Success\000Failure\000TooSoon\000NoDefender"
        "s\000";
    static const int32_t values[] = {
        POGOCollectDailyDefenderBonusResponse_Result_Unset,
        POGOCollectDailyDefenderBonusResponse_Result_Success,
        POGOCollectDailyDefenderBonusResponse_Result_Failure,
        POGOCollectDailyDefenderBonusResponse_Result_TooSoon,
        POGOCollectDailyDefenderBonusResponse_Result_NoDefenders,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOCollectDailyDefenderBonusResponse_Result)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOCollectDailyDefenderBonusResponse_Result_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOCollectDailyDefenderBonusResponse_Result_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOCollectDailyDefenderBonusResponse_Result_Unset:
    case POGOCollectDailyDefenderBonusResponse_Result_Success:
    case POGOCollectDailyDefenderBonusResponse_Result_Failure:
    case POGOCollectDailyDefenderBonusResponse_Result_TooSoon:
    case POGOCollectDailyDefenderBonusResponse_Result_NoDefenders:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
