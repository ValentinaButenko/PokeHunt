// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Data/Player/DailyBonus.proto

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

 #import "POGOProtos/Data/Player/DailyBonus.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGODailyBonusRoot

@implementation POGODailyBonusRoot

@end

#pragma mark - POGODailyBonusRoot_FileDescriptor

static GPBFileDescriptor *POGODailyBonusRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Data.Player"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGODailyBonus

@implementation POGODailyBonus

@dynamic nextCollectedTimestampMs;
@dynamic nextDefenderBonusCollectTimestampMs;

typedef struct POGODailyBonus__storage_ {
  uint32_t _has_storage_[1];
  int64_t nextCollectedTimestampMs;
  int64_t nextDefenderBonusCollectTimestampMs;
} POGODailyBonus__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "nextCollectedTimestampMs",
        .dataTypeSpecific.className = NULL,
        .number = POGODailyBonus_FieldNumber_NextCollectedTimestampMs,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGODailyBonus__storage_, nextCollectedTimestampMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "nextDefenderBonusCollectTimestampMs",
        .dataTypeSpecific.className = NULL,
        .number = POGODailyBonus_FieldNumber_NextDefenderBonusCollectTimestampMs,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGODailyBonus__storage_, nextDefenderBonusCollectTimestampMs),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGODailyBonus class]
                                     rootClass:[POGODailyBonusRoot class]
                                          file:POGODailyBonusRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGODailyBonus__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)