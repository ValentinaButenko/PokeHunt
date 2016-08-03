// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Requests/Messages/NicknamePokemonMessage.proto

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

 #import "POGOProtos/Networking/Requests/Messages/NicknamePokemonMessage.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGONicknamePokemonMessageRoot

@implementation POGONicknamePokemonMessageRoot

@end

#pragma mark - POGONicknamePokemonMessageRoot_FileDescriptor

static GPBFileDescriptor *POGONicknamePokemonMessageRoot_FileDescriptor(void) {
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

#pragma mark - POGONicknamePokemonMessage

@implementation POGONicknamePokemonMessage

@dynamic pokemonId;
@dynamic nickname;

typedef struct POGONicknamePokemonMessage__storage_ {
  uint32_t _has_storage_[1];
  NSString *nickname;
  uint64_t pokemonId;
} POGONicknamePokemonMessage__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "pokemonId",
        .dataTypeSpecific.className = NULL,
        .number = POGONicknamePokemonMessage_FieldNumber_PokemonId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGONicknamePokemonMessage__storage_, pokemonId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeFixed64,
      },
      {
        .name = "nickname",
        .dataTypeSpecific.className = NULL,
        .number = POGONicknamePokemonMessage_FieldNumber_Nickname,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGONicknamePokemonMessage__storage_, nickname),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGONicknamePokemonMessage class]
                                     rootClass:[POGONicknamePokemonMessageRoot class]
                                          file:POGONicknamePokemonMessageRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGONicknamePokemonMessage__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)