// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/AttackGymResponse.proto

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

 #import "POGOProtos/Networking/Responses/AttackGymResponse.pbobjc.h"
 #import "POGOProtos/Data/Battle/BattleLog.pbobjc.h"
 #import "POGOProtos/Data/Battle/BattlePokemonInfo.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOAttackGymResponseRoot

@implementation POGOAttackGymResponseRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOBattleLogRoot extensionRegistry]];
    [registry addExtensions:[POGOBattlePokemonInfoRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOAttackGymResponseRoot_FileDescriptor

static GPBFileDescriptor *POGOAttackGymResponseRoot_FileDescriptor(void) {
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

#pragma mark - POGOAttackGymResponse

@implementation POGOAttackGymResponse

@dynamic result;
@dynamic hasBattleLog, battleLog;
@dynamic battleId;
@dynamic hasActiveDefender, activeDefender;
@dynamic hasActiveAttacker, activeAttacker;

typedef struct POGOAttackGymResponse__storage_ {
  uint32_t _has_storage_[1];
  POGOAttackGymResponse_Result result;
  POGOBattleLog *battleLog;
  NSString *battleId;
  POGOBattlePokemonInfo *activeDefender;
  POGOBattlePokemonInfo *activeAttacker;
} POGOAttackGymResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "result",
        .dataTypeSpecific.enumDescFunc = POGOAttackGymResponse_Result_EnumDescriptor,
        .number = POGOAttackGymResponse_FieldNumber_Result,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOAttackGymResponse__storage_, result),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "battleLog",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOBattleLog),
        .number = POGOAttackGymResponse_FieldNumber_BattleLog,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOAttackGymResponse__storage_, battleLog),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "battleId",
        .dataTypeSpecific.className = NULL,
        .number = POGOAttackGymResponse_FieldNumber_BattleId,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOAttackGymResponse__storage_, battleId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "activeDefender",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOBattlePokemonInfo),
        .number = POGOAttackGymResponse_FieldNumber_ActiveDefender,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(POGOAttackGymResponse__storage_, activeDefender),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "activeAttacker",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOBattlePokemonInfo),
        .number = POGOAttackGymResponse_FieldNumber_ActiveAttacker,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(POGOAttackGymResponse__storage_, activeAttacker),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOAttackGymResponse class]
                                     rootClass:[POGOAttackGymResponseRoot class]
                                          file:POGOAttackGymResponseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOAttackGymResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOAttackGymResponse_Result_RawValue(POGOAttackGymResponse *message) {
  GPBDescriptor *descriptor = [POGOAttackGymResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOAttackGymResponse_FieldNumber_Result];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOAttackGymResponse_Result_RawValue(POGOAttackGymResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOAttackGymResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOAttackGymResponse_FieldNumber_Result];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum POGOAttackGymResponse_Result

GPBEnumDescriptor *POGOAttackGymResponse_Result_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Unset\000Success\000ErrorInvalidAttackActions\000"
        "ErrorNotInRange\000";
    static const int32_t values[] = {
        POGOAttackGymResponse_Result_Unset,
        POGOAttackGymResponse_Result_Success,
        POGOAttackGymResponse_Result_ErrorInvalidAttackActions,
        POGOAttackGymResponse_Result_ErrorNotInRange,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOAttackGymResponse_Result)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOAttackGymResponse_Result_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOAttackGymResponse_Result_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOAttackGymResponse_Result_Unset:
    case POGOAttackGymResponse_Result_Success:
    case POGOAttackGymResponse_Result_ErrorInvalidAttackActions:
    case POGOAttackGymResponse_Result_ErrorNotInRange:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
