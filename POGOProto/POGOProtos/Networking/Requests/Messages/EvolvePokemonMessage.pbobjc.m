// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Requests/Messages/EvolvePokemonMessage.proto

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

 #import "POGOProtos/Networking/Requests/Messages/EvolvePokemonMessage.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOEvolvePokemonMessageRoot

@implementation POGOEvolvePokemonMessageRoot

@end

#pragma mark - POGOEvolvePokemonMessageRoot_FileDescriptor

static GPBFileDescriptor *POGOEvolvePokemonMessageRoot_FileDescriptor(void) {
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

#pragma mark - POGOEvolvePokemonMessage

@implementation POGOEvolvePokemonMessage

@dynamic pokemonId;

typedef struct POGOEvolvePokemonMessage__storage_ {
  uint32_t _has_storage_[1];
  uint64_t pokemonId;
} POGOEvolvePokemonMessage__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "pokemonId",
        .dataTypeSpecific.className = NULL,
        .number = POGOEvolvePokemonMessage_FieldNumber_PokemonId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOEvolvePokemonMessage__storage_, pokemonId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFixed64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOEvolvePokemonMessage class]
                                     rootClass:[POGOEvolvePokemonMessageRoot class]
                                          file:POGOEvolvePokemonMessageRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOEvolvePokemonMessage__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
