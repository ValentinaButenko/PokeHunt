// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Inventory/PokemonFamily.proto

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

 #import "POGOProtos/Inventory/PokemonFamily.pbobjc.h"
 #import "POGOProtos/Enums/PokemonFamilyId.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOPokemonFamilyRoot

@implementation POGOPokemonFamilyRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOPokemonFamilyIdRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOPokemonFamilyRoot_FileDescriptor

static GPBFileDescriptor *POGOPokemonFamilyRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Inventory"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGOPokemonFamily

@implementation POGOPokemonFamily

@dynamic familyId;
@dynamic candy;

typedef struct POGOPokemonFamily__storage_ {
  uint32_t _has_storage_[1];
  POGOPokemonFamilyId familyId;
  int32_t candy;
} POGOPokemonFamily__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "familyId",
        .dataTypeSpecific.enumDescFunc = POGOPokemonFamilyId_EnumDescriptor,
        .number = POGOPokemonFamily_FieldNumber_FamilyId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOPokemonFamily__storage_, familyId),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "candy",
        .dataTypeSpecific.className = NULL,
        .number = POGOPokemonFamily_FieldNumber_Candy,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(POGOPokemonFamily__storage_, candy),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOPokemonFamily class]
                                     rootClass:[POGOPokemonFamilyRoot class]
                                          file:POGOPokemonFamilyRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOPokemonFamily__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOPokemonFamily_FamilyId_RawValue(POGOPokemonFamily *message) {
  GPBDescriptor *descriptor = [POGOPokemonFamily descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOPokemonFamily_FieldNumber_FamilyId];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOPokemonFamily_FamilyId_RawValue(POGOPokemonFamily *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOPokemonFamily descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOPokemonFamily_FieldNumber_FamilyId];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)