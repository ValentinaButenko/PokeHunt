// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/ClaimCodenameResponse.proto

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

 #import "POGOProtos/Networking/Responses/ClaimCodenameResponse.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOClaimCodenameResponseRoot

@implementation POGOClaimCodenameResponseRoot

@end

#pragma mark - POGOClaimCodenameResponseRoot_FileDescriptor

static GPBFileDescriptor *POGOClaimCodenameResponseRoot_FileDescriptor(void) {
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

#pragma mark - POGOClaimCodenameResponse

@implementation POGOClaimCodenameResponse

@dynamic codename;
@dynamic userMessage;
@dynamic isAssignable;
@dynamic status;

typedef struct POGOClaimCodenameResponse__storage_ {
  uint32_t _has_storage_[1];
  POGOClaimCodenameResponse_Status status;
  NSString *codename;
  NSString *userMessage;
} POGOClaimCodenameResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "codename",
        .dataTypeSpecific.className = NULL,
        .number = POGOClaimCodenameResponse_FieldNumber_Codename,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOClaimCodenameResponse__storage_, codename),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "userMessage",
        .dataTypeSpecific.className = NULL,
        .number = POGOClaimCodenameResponse_FieldNumber_UserMessage,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOClaimCodenameResponse__storage_, userMessage),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "isAssignable",
        .dataTypeSpecific.className = NULL,
        .number = POGOClaimCodenameResponse_FieldNumber_IsAssignable,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "status",
        .dataTypeSpecific.enumDescFunc = POGOClaimCodenameResponse_Status_EnumDescriptor,
        .number = POGOClaimCodenameResponse_FieldNumber_Status,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(POGOClaimCodenameResponse__storage_, status),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOClaimCodenameResponse class]
                                     rootClass:[POGOClaimCodenameResponseRoot class]
                                          file:POGOClaimCodenameResponseRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOClaimCodenameResponse__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOClaimCodenameResponse_Status_RawValue(POGOClaimCodenameResponse *message) {
  GPBDescriptor *descriptor = [POGOClaimCodenameResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOClaimCodenameResponse_FieldNumber_Status];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOClaimCodenameResponse_Status_RawValue(POGOClaimCodenameResponse *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOClaimCodenameResponse descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOClaimCodenameResponse_FieldNumber_Status];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum POGOClaimCodenameResponse_Status

GPBEnumDescriptor *POGOClaimCodenameResponse_Status_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Unset\000Success\000CodenameNotAvailable\000Coden"
        "ameNotValid\000CurrentOwner\000CodenameChangeN"
        "otAllowed\000";
    static const int32_t values[] = {
        POGOClaimCodenameResponse_Status_Unset,
        POGOClaimCodenameResponse_Status_Success,
        POGOClaimCodenameResponse_Status_CodenameNotAvailable,
        POGOClaimCodenameResponse_Status_CodenameNotValid,
        POGOClaimCodenameResponse_Status_CurrentOwner,
        POGOClaimCodenameResponse_Status_CodenameChangeNotAllowed,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOClaimCodenameResponse_Status)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOClaimCodenameResponse_Status_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOClaimCodenameResponse_Status_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOClaimCodenameResponse_Status_Unset:
    case POGOClaimCodenameResponse_Status_Success:
    case POGOClaimCodenameResponse_Status_CodenameNotAvailable:
    case POGOClaimCodenameResponse_Status_CodenameNotValid:
    case POGOClaimCodenameResponse_Status_CurrentOwner:
    case POGOClaimCodenameResponse_Status_CodenameChangeNotAllowed:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)