// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Requests/Messages/IncenseEncounterMessage.proto

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

 #import "POGOProtos/Networking/Requests/Messages/IncenseEncounterMessage.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOIncenseEncounterMessageRoot

@implementation POGOIncenseEncounterMessageRoot

@end

#pragma mark - POGOIncenseEncounterMessageRoot_FileDescriptor

static GPBFileDescriptor *POGOIncenseEncounterMessageRoot_FileDescriptor(void) {
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

#pragma mark - POGOIncenseEncounterMessage

@implementation POGOIncenseEncounterMessage

@dynamic encounterId;
@dynamic encounterLocation;

typedef struct POGOIncenseEncounterMessage__storage_ {
  uint32_t _has_storage_[1];
  NSString *encounterLocation;
  int64_t encounterId;
} POGOIncenseEncounterMessage__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "encounterId",
        .dataTypeSpecific.className = NULL,
        .number = POGOIncenseEncounterMessage_FieldNumber_EncounterId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOIncenseEncounterMessage__storage_, encounterId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "encounterLocation",
        .dataTypeSpecific.className = NULL,
        .number = POGOIncenseEncounterMessage_FieldNumber_EncounterLocation,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOIncenseEncounterMessage__storage_, encounterLocation),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOIncenseEncounterMessage class]
                                     rootClass:[POGOIncenseEncounterMessageRoot class]
                                          file:POGOIncenseEncounterMessageRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOIncenseEncounterMessage__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
