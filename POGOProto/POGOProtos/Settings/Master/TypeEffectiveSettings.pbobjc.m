// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Settings/Master/TypeEffectiveSettings.proto

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

 #import "POGOProtos/Settings/Master/TypeEffectiveSettings.pbobjc.h"
 #import "POGOProtos/Enums/PokemonType.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOTypeEffectiveSettingsRoot

@implementation POGOTypeEffectiveSettingsRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPBDebugCheckRuntimeVersion();
    registry = [[GPBExtensionRegistry alloc] init];
    [registry addExtensions:[POGOPokemonTypeRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - POGOTypeEffectiveSettingsRoot_FileDescriptor

static GPBFileDescriptor *POGOTypeEffectiveSettingsRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPBDebugCheckRuntimeVersion();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"POGOProtos.Settings.Master"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - POGOTypeEffectiveSettings

@implementation POGOTypeEffectiveSettings

@dynamic attackScalarArray, attackScalarArray_Count;
@dynamic attackType;

typedef struct POGOTypeEffectiveSettings__storage_ {
  uint32_t _has_storage_[1];
  POGOPokemonType attackType;
  GPBFloatArray *attackScalarArray;
} POGOTypeEffectiveSettings__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "attackScalarArray",
        .dataTypeSpecific.className = NULL,
        .number = POGOTypeEffectiveSettings_FieldNumber_AttackScalarArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(POGOTypeEffectiveSettings__storage_, attackScalarArray),
        .flags = GPBFieldRepeated | GPBFieldPacked,
        .dataType = GPBDataTypeFloat,
      },
      {
        .name = "attackType",
        .dataTypeSpecific.enumDescFunc = POGOPokemonType_EnumDescriptor,
        .number = POGOTypeEffectiveSettings_FieldNumber_AttackType,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(POGOTypeEffectiveSettings__storage_, attackType),
        .flags = GPBFieldOptional | GPBFieldHasEnumDescriptor,
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[POGOTypeEffectiveSettings class]
                                     rootClass:[POGOTypeEffectiveSettingsRoot class]
                                          file:POGOTypeEffectiveSettingsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(POGOTypeEffectiveSettings__storage_)
                                         flags:0];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t POGOTypeEffectiveSettings_AttackType_RawValue(POGOTypeEffectiveSettings *message) {
  GPBDescriptor *descriptor = [POGOTypeEffectiveSettings descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOTypeEffectiveSettings_FieldNumber_AttackType];
  return GPBGetMessageInt32Field(message, field);
}

void SetPOGOTypeEffectiveSettings_AttackType_RawValue(POGOTypeEffectiveSettings *message, int32_t value) {
  GPBDescriptor *descriptor = [POGOTypeEffectiveSettings descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:POGOTypeEffectiveSettings_FieldNumber_AttackType];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
