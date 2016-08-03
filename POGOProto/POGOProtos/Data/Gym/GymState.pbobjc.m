// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Data/Gym/GymState.proto

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

 #import "POGOProtos/Data/Gym/GymState.pbobjc.h"
 #import "POGOProtos/Map/Fort/FortData.pbobjc.h"
 #import "POGOProtos/Data/Gym/GymMembership.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOGymStateRoot

@implementation POGOGymStateRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOFortDataRoot extensionRegistry]];
    [registry addExtensions:[POGOGymMembershipRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOGymStateRoot_FileDescriptor

static GPBFileDescriptor *POGOGymStateRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Data.Gym"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGOGymState

@implementation POGOGymState

@dynamic hasFortData, fortData;
@dynamic membershipsArray, membershipsArray_Count;

typedef struct POGOGymState__storage_ {
  uint32_t _has_storage_[1];
  POGOFortData *fortData;
  NSMutableArray *membershipsArray;
} POGOGymState__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "fortData",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOFortData),
        .number = POGOGymState_FieldNumber_FortData,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOGymState__storage_, fortData),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "membershipsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOGymMembership),
        .number = POGOGymState_FieldNumber_MembershipsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(POGOGymState__storage_, membershipsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOGymState class]
                                     rootClass:[POGOGymStateRoot class]
                                          file:POGOGymStateRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOGymState__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)