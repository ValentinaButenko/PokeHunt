// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/MarkTutorialCompleteResponse.proto

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

 #import "POGOProtos/Networking/Responses/MarkTutorialCompleteResponse.pbobjc.h"
 #import "POGOProtos/Data/PlayerData.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOMarkTutorialCompleteResponseRoot

@implementation POGOMarkTutorialCompleteResponseRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOPlayerDataRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOMarkTutorialCompleteResponseRoot_FileDescriptor

static GPBFileDescriptor *POGOMarkTutorialCompleteResponseRoot_FileDescriptor(void) {
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

#pragma mark - POGOMarkTutorialCompleteResponse

@implementation POGOMarkTutorialCompleteResponse

@dynamic success;
@dynamic hasPlayerData, playerData;

typedef struct POGOMarkTutorialCompleteResponse__storage_ {
  uint32_t _has_storage_[1];
  POGOPlayerData *playerData;
} POGOMarkTutorialCompleteResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "success",
        .dataTypeSpecific.className = NULL,
        .number = POGOMarkTutorialCompleteResponse_FieldNumber_Success,
        .hasIndex = 0,
        .offset = 1,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "playerData",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOPlayerData),
        .number = POGOMarkTutorialCompleteResponse_FieldNumber_PlayerData,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOMarkTutorialCompleteResponse__storage_, playerData),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOMarkTutorialCompleteResponse class]
                                     rootClass:[POGOMarkTutorialCompleteResponseRoot class]
                                          file:POGOMarkTutorialCompleteResponseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOMarkTutorialCompleteResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
