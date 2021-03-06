// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/DownloadSettingsResponse.proto

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

 #import "POGOProtos/Networking/Responses/DownloadSettingsResponse.pbobjc.h"
 #import "POGOProtos/Settings/GlobalSettings.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGODownloadSettingsResponseRoot

@implementation POGODownloadSettingsResponseRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOGlobalSettingsRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGODownloadSettingsResponseRoot_FileDescriptor

static GPBFileDescriptor *POGODownloadSettingsResponseRoot_FileDescriptor(void) {
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

#pragma mark - POGODownloadSettingsResponse

@implementation POGODownloadSettingsResponse

@dynamic error;
@dynamic hash_p;
@dynamic hasSettings, settings;

typedef struct POGODownloadSettingsResponse__storage_ {
  uint32_t _has_storage_[1];
  NSString *error;
  NSString *hash_p;
  POGOGlobalSettings *settings;
} POGODownloadSettingsResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "error",
        .dataTypeSpecific.className = NULL,
        .number = POGODownloadSettingsResponse_FieldNumber_Error,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGODownloadSettingsResponse__storage_, error),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "hash_p",
        .dataTypeSpecific.className = NULL,
        .number = POGODownloadSettingsResponse_FieldNumber_Hash_p,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGODownloadSettingsResponse__storage_, hash_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "settings",
        .dataTypeSpecific.className = GPBStringifySymbol(POGOGlobalSettings),
        .number = POGODownloadSettingsResponse_FieldNumber_Settings,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGODownloadSettingsResponse__storage_, settings),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGODownloadSettingsResponse class]
                                     rootClass:[POGODownloadSettingsResponseRoot class]
                                          file:POGODownloadSettingsResponseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGODownloadSettingsResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
