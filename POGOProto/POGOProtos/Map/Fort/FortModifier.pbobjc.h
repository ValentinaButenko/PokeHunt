// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Map/Fort/FortModifier.proto

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

GPB_ENUM_FWD_DECLARE(POGOItemId);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - POGOFortModifierRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOFortModifierRoot : GPBRootObject
@end

#pragma mark - POGOFortModifier

typedef GPB_ENUM(POGOFortModifier_FieldNumber) {
  POGOFortModifier_FieldNumber_ItemId = 1,
  POGOFortModifier_FieldNumber_ExpirationTimestampMs = 2,
  POGOFortModifier_FieldNumber_DeployerPlayerCodename = 3,
};

@interface POGOFortModifier : GPBMessage

@property(nonatomic, readwrite) enum POGOItemId itemId;

@property(nonatomic, readwrite) int64_t expirationTimestampMs;

@property(nonatomic, readwrite, copy, null_resettable) NSString *deployerPlayerCodename;

@end

/// Fetches the raw value of a @c POGOFortModifier's @c itemId property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOFortModifier_ItemId_RawValue(POGOFortModifier *message);
/// Sets the raw value of an @c POGOFortModifier's @c itemId property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOFortModifier_ItemId_RawValue(POGOFortModifier *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)