// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Requests/Request.proto

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

 #import "POGOProtos/Networking/Requests/Request.pbobjc.h"
 #import "POGOProtos/Networking/Requests/RequestType.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGORequestRoot

@implementation POGORequestRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGORequestTypeRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGORequestRoot_FileDescriptor

static GPBFileDescriptor *POGORequestRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Networking.Requests"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGORequest

@implementation POGORequest

@dynamic requestType;
@dynamic requestMessage;

typedef struct POGORequest__storage_ {
  uint32_t _has_storage_[1];
  POGORequestType requestType;
  NSData *requestMessage;
} POGORequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "requestType",
        .dataTypeSpecific.enumDescFunc = POGORequestType_EnumDescriptor,
        .number = POGORequest_FieldNumber_RequestType,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGORequest__storage_, requestType),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "requestMessage",
        .dataTypeSpecific.className = NULL,
        .number = POGORequest_FieldNumber_RequestMessage,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGORequest__storage_, requestMessage),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGORequest class]
                                     rootClass:[POGORequestRoot class]
                                          file:POGORequestRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGORequest__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGORequest_RequestType_RawValue(POGORequest *message) {
  GPBDescriptor *descriptor = [POGORequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGORequest_FieldNumber_RequestType];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGORequest_RequestType_RawValue(POGORequest *message, int32_t value) {
  GPBDescriptor *descriptor = [POGORequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGORequest_FieldNumber_RequestType];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)