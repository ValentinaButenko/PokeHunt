// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Map/Fort/FortSummary.proto

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

 #import "POGOProtos/Map/Fort/FortSummary.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOFortSummaryRoot

@implementation POGOFortSummaryRoot

@end

#pragma mark - POGOFortSummaryRoot_FileDescriptor

static GPBFileDescriptor *POGOFortSummaryRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Map.Fort"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGOFortSummary

@implementation POGOFortSummary

@dynamic fortSummaryId;
@dynamic lastModifiedTimestampMs;
@dynamic latitude;
@dynamic longitude;

typedef struct POGOFortSummary__storage_ {
  uint32_t _has_storage_[1];
  NSString *fortSummaryId;
  int64_t lastModifiedTimestampMs;
  double latitude;
  double longitude;
} POGOFortSummary__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "fortSummaryId",
        .dataTypeSpecific.className = NULL,
        .number = POGOFortSummary_FieldNumber_FortSummaryId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOFortSummary__storage_, fortSummaryId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "lastModifiedTimestampMs",
        .dataTypeSpecific.className = NULL,
        .number = POGOFortSummary_FieldNumber_LastModifiedTimestampMs,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOFortSummary__storage_, lastModifiedTimestampMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "latitude",
        .dataTypeSpecific.className = NULL,
        .number = POGOFortSummary_FieldNumber_Latitude,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(POGOFortSummary__storage_, latitude),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "longitude",
        .dataTypeSpecific.className = NULL,
        .number = POGOFortSummary_FieldNumber_Longitude,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(POGOFortSummary__storage_, longitude),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOFortSummary class]
                                     rootClass:[POGOFortSummaryRoot class]
                                          file:POGOFortSummaryRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOFortSummary__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)