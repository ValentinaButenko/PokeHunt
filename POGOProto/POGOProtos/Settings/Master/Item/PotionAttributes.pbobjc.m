// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Settings/Master/Item/PotionAttributes.proto

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

 #import "POGOProtos/Settings/Master/Item/PotionAttributes.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOPotionAttributesRoot

@implementation POGOPotionAttributesRoot

@end

#pragma mark - POGOPotionAttributesRoot_FileDescriptor

static GPBFileDescriptor *POGOPotionAttributesRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Settings.Master.Item"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGOPotionAttributes

@implementation POGOPotionAttributes

@dynamic staPercent;
@dynamic staAmount;

typedef struct POGOPotionAttributes__storage_ {
  uint32_t _has_storage_[1];
  float staPercent;
  int32_t staAmount;
} POGOPotionAttributes__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "staPercent",
        .dataTypeSpecific.className = NULL,
        .number = POGOPotionAttributes_FieldNumber_StaPercent,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOPotionAttributes__storage_, staPercent),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "staAmount",
        .dataTypeSpecific.className = NULL,
        .number = POGOPotionAttributes_FieldNumber_StaAmount,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOPotionAttributes__storage_, staAmount),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOPotionAttributes class]
                                     rootClass:[POGOPotionAttributesRoot class]
                                          file:POGOPotionAttributesRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOPotionAttributes__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)