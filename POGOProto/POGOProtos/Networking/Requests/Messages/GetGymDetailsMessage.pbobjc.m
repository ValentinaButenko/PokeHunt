// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Requests/Messages/GetGymDetailsMessage.proto

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

 #import "POGOProtos/Networking/Requests/Messages/GetGymDetailsMessage.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOGetGymDetailsMessageRoot

@implementation POGOGetGymDetailsMessageRoot

@end

#pragma mark - POGOGetGymDetailsMessageRoot_FileDescriptor

static GPBFileDescriptor *POGOGetGymDetailsMessageRoot_FileDescriptor(void) {
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

#pragma mark - POGOGetGymDetailsMessage

@implementation POGOGetGymDetailsMessage

@dynamic gymId;
@dynamic playerLatitude;
@dynamic playerLongitude;
@dynamic gymLatitude;
@dynamic gymLongitude;

typedef struct POGOGetGymDetailsMessage__storage_ {
  uint32_t _has_storage_[1];
  NSString *gymId;
  double playerLatitude;
  double playerLongitude;
  double gymLatitude;
  double gymLongitude;
} POGOGetGymDetailsMessage__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "gymId",
        .dataTypeSpecific.className = NULL,
        .number = POGOGetGymDetailsMessage_FieldNumber_GymId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOGetGymDetailsMessage__storage_, gymId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "playerLatitude",
        .dataTypeSpecific.className = NULL,
        .number = POGOGetGymDetailsMessage_FieldNumber_PlayerLatitude,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOGetGymDetailsMessage__storage_, playerLatitude),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "playerLongitude",
        .dataTypeSpecific.className = NULL,
        .number = POGOGetGymDetailsMessage_FieldNumber_PlayerLongitude,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOGetGymDetailsMessage__storage_, playerLongitude),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "gymLatitude",
        .dataTypeSpecific.className = NULL,
        .number = POGOGetGymDetailsMessage_FieldNumber_GymLatitude,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(POGOGetGymDetailsMessage__storage_, gymLatitude),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "gymLongitude",
        .dataTypeSpecific.className = NULL,
        .number = POGOGetGymDetailsMessage_FieldNumber_GymLongitude,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(POGOGetGymDetailsMessage__storage_, gymLongitude),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOGetGymDetailsMessage class]
                                     rootClass:[POGOGetGymDetailsMessageRoot class]
                                          file:POGOGetGymDetailsMessageRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOGetGymDetailsMessage__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
