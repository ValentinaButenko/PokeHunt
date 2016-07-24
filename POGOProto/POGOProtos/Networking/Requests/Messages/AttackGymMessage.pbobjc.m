// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Requests/Messages/AttackGymMessage.proto

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

 #import "POGOProtos/Networking/Requests/Messages/AttackGymMessage.pbobjc.h"
 #import "POGOProtos/Data/Battle/BattleAction.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOAttackGymMessageRoot

@implementation POGOAttackGymMessageRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOBattleActionRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOAttackGymMessageRoot_FileDescriptor

static GPBFileDescriptor *POGOAttackGymMessageRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Networking.Requests.Messages"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGOAttackGymMessage

@implementation POGOAttackGymMessage

@dynamic gymId;
@dynamic battleId;
@dynamic attackActionsArray, attackActionsArray_Count;
@dynamic hasLastRetrievedActions, lastRetrievedActions;
@dynamic playerLatitude;
@dynamic playerLongitude;

typedef struct POGOAttackGymMessage__storage_ {
  uint32_t _has_storage_[1];
  NSString *gymId;
  NSString *battleId;
  NSMutableArray *attackActionsArray;
  POGOBattleAction *lastRetrievedActions;
  double playerLatitude;
  double playerLongitude;
} POGOAttackGymMessage__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "gymId",
        .dataTypeSpecific.className = NULL,
        .number = POGOAttackGymMessage_FieldNumber_GymId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOAttackGymMessage__storage_, gymId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "battleId",
        .dataTypeSpecific.className = NULL,
        .number = POGOAttackGymMessage_FieldNumber_BattleId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOAttackGymMessage__storage_, battleId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "attackActionsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOBattleAction),
        .number = POGOAttackGymMessage_FieldNumber_AttackActionsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(POGOAttackGymMessage__storage_, attackActionsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "lastRetrievedActions",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOBattleAction),
        .number = POGOAttackGymMessage_FieldNumber_LastRetrievedActions,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOAttackGymMessage__storage_, lastRetrievedActions),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "playerLatitude",
        .dataTypeSpecific.className = NULL,
        .number = POGOAttackGymMessage_FieldNumber_PlayerLatitude,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(POGOAttackGymMessage__storage_, playerLatitude),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "playerLongitude",
        .dataTypeSpecific.className = NULL,
        .number = POGOAttackGymMessage_FieldNumber_PlayerLongitude,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(POGOAttackGymMessage__storage_, playerLongitude),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOAttackGymMessage class]
                                     rootClass:[POGOAttackGymMessageRoot class]
                                          file:POGOAttackGymMessageRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOAttackGymMessage__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
