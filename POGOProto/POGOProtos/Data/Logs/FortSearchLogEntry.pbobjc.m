// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Data/Logs/FortSearchLogEntry.proto

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

 #import "POGOProtos/Data/Logs/FortSearchLogEntry.pbobjc.h"
 #import "POGOProtos/Inventory/Item/ItemData.pbobjc.h"
 #import "POGOProtos/Enums/PokemonId.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOFortSearchLogEntryRoot

@implementation POGOFortSearchLogEntryRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOItemDataRoot extensionRegistry]];
    [registry addExtensions:[POGOPokemonIdRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOFortSearchLogEntryRoot_FileDescriptor

static GPBFileDescriptor *POGOFortSearchLogEntryRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Data.Logs"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGOFortSearchLogEntry

@implementation POGOFortSearchLogEntry

@dynamic result;
@dynamic fortId;
@dynamic itemsArray, itemsArray_Count;
@dynamic eggs;

typedef struct POGOFortSearchLogEntry__storage_ {
  uint32_t _has_storage_[1];
  POGOFortSearchLogEntry_Result result;
  int32_t eggs;
  NSString *fortId;
  NSMutableArray *itemsArray;
} POGOFortSearchLogEntry__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.enumDescFunc = POGOFortSearchLogEntry_Result_EnumDescriptor,
        .number = POGOFortSearchLogEntry_FieldNumber_Result,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOFortSearchLogEntry__storage_, result),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "fortId",
        .dataTypeSpecific.className = NULL,
        .number = POGOFortSearchLogEntry_FieldNumber_FortId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOFortSearchLogEntry__storage_, fortId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "itemsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOItemData),
        .number = POGOFortSearchLogEntry_FieldNumber_ItemsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(POGOFortSearchLogEntry__storage_, itemsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "eggs",
        .dataTypeSpecific.className = NULL,
        .number = POGOFortSearchLogEntry_FieldNumber_Eggs,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOFortSearchLogEntry__storage_, eggs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOFortSearchLogEntry class]
                                     rootClass:[POGOFortSearchLogEntryRoot class]
                                          file:POGOFortSearchLogEntryRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOFortSearchLogEntry__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOFortSearchLogEntry_Result_RawValue(POGOFortSearchLogEntry *message) {
  GPBDescriptor *descriptor = [POGOFortSearchLogEntry descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOFortSearchLogEntry_FieldNumber_Result];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOFortSearchLogEntry_Result_RawValue(POGOFortSearchLogEntry *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOFortSearchLogEntry descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOFortSearchLogEntry_FieldNumber_Result];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum POGOFortSearchLogEntry_Result

GPBEnumDescriptor *POGOFortSearchLogEntry_Result_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Unset\000Success\000";
    static const int32_t values[] = {
        POGOFortSearchLogEntry_Result_Unset,
        POGOFortSearchLogEntry_Result_Success,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOFortSearchLogEntry_Result)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOFortSearchLogEntry_Result_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOFortSearchLogEntry_Result_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOFortSearchLogEntry_Result_Unset:
    case POGOFortSearchLogEntry_Result_Success:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
