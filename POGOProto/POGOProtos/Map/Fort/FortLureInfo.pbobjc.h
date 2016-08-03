// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Map/Fort/FortLureInfo.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_GEN_VERSION != 30001
#error This file was generated by a different version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

GPB_ENUM_FWD_DECLARE(POGOPokemonId);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - POGOFortLureInfoRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOFortLureInfoRoot : GPBRootObject
@end

#pragma mark - POGOFortLureInfo

typedef GPB_ENUM(POGOFortLureInfo_FieldNumber) {
  POGOFortLureInfo_FieldNumber_FortId = 1,
  POGOFortLureInfo_FieldNumber_EncounterId = 2,
  POGOFortLureInfo_FieldNumber_ActivePokemonId = 3,
  POGOFortLureInfo_FieldNumber_LureExpiresTimestampMs = 4,
};

@interface POGOFortLureInfo : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *fortId;

@property(nonatomic, readwrite) uint64_t encounterId;

@property(nonatomic, readwrite) enum POGOPokemonId activePokemonId;

@property(nonatomic, readwrite) int64_t lureExpiresTimestampMs;

@end

/// Fetches the raw value of a @c POGOFortLureInfo's @c activePokemonId property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOFortLureInfo_ActivePokemonId_RawValue(POGOFortLureInfo *message);
/// Sets the raw value of an @c POGOFortLureInfo's @c activePokemonId property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOFortLureInfo_ActivePokemonId_RawValue(POGOFortLureInfo *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)