// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Data/Battle/BattleLog.proto

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

 #import "POGOProtos/Data/Battle/BattleLog.pbobjc.h"
 #import "POGOProtos/Data/Battle/BattleState.pbobjc.h"
 #import "POGOProtos/Data/Battle/BattleType.pbobjc.h"
 #import "POGOProtos/Data/Battle/BattleAction.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOBattleLogRoot

@implementation POGOBattleLogRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOBattleStateRoot extensionRegistry]];
    [registry addExtensions:[POGOBattleTypeRoot extensionRegistry]];
    [registry addExtensions:[POGOBattleActionRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOBattleLogRoot_FileDescriptor

static GPBFileDescriptor *POGOBattleLogRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Data.Battle"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGOBattleLog

@implementation POGOBattleLog

@dynamic state;
@dynamic battleType;
@dynamic serverMs;
@dynamic battleActionsArray, battleActionsArray_Count;
@dynamic battleStartTimestampMs;
@dynamic battleEndTimestampMs;

typedef struct POGOBattleLog__storage_ {
  uint32_t _has_storage_[1];
  POGOBattleState state;
  POGOBattleType battleType;
  NSMutableArray *battleActionsArray;
  int64_t serverMs;
  int64_t battleStartTimestampMs;
  int64_t battleEndTimestampMs;
} POGOBattleLog__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "state",
        .dataTypeSpecific.enumDescFunc = POGOBattleState_EnumDescriptor,
        .number = POGOBattleLog_FieldNumber_State,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOBattleLog__storage_, state),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "battleType",
        .dataTypeSpecific.enumDescFunc = POGOBattleType_EnumDescriptor,
        .number = POGOBattleLog_FieldNumber_BattleType,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOBattleLog__storage_, battleType),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "serverMs",
        .dataTypeSpecific.className = NULL,
        .number = POGOBattleLog_FieldNumber_ServerMs,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOBattleLog__storage_, serverMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "battleActionsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOBattleAction),
        .number = POGOBattleLog_FieldNumber_BattleActionsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(POGOBattleLog__storage_, battleActionsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "battleStartTimestampMs",
        .dataTypeSpecific.className = NULL,
        .number = POGOBattleLog_FieldNumber_BattleStartTimestampMs,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(POGOBattleLog__storage_, battleStartTimestampMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "battleEndTimestampMs",
        .dataTypeSpecific.className = NULL,
        .number = POGOBattleLog_FieldNumber_BattleEndTimestampMs,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(POGOBattleLog__storage_, battleEndTimestampMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOBattleLog class]
                                     rootClass:[POGOBattleLogRoot class]
                                          file:POGOBattleLogRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOBattleLog__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOBattleLog_State_RawValue(POGOBattleLog *message) {
  GPBDescriptor *descriptor = [POGOBattleLog descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOBattleLog_FieldNumber_State];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOBattleLog_State_RawValue(POGOBattleLog *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOBattleLog descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOBattleLog_FieldNumber_State];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

int32_t POGOBattleLog_BattleType_RawValue(POGOBattleLog *message) {
  GPBDescriptor *descriptor = [POGOBattleLog descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOBattleLog_FieldNumber_BattleType];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOBattleLog_BattleType_RawValue(POGOBattleLog *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOBattleLog descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOBattleLog_FieldNumber_BattleType];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)