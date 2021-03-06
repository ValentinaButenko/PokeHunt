// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Settings/Master/Item/PokeballAttributes.proto

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

GPB_ENUM_FWD_DECLARE(POGOItemEffect);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - POGOPokeballAttributesRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOPokeballAttributesRoot : GPBRootObject
@end

#pragma mark - POGOPokeballAttributes

typedef GPB_ENUM(POGOPokeballAttributes_FieldNumber) {
  POGOPokeballAttributes_FieldNumber_ItemEffect = 1,
  POGOPokeballAttributes_FieldNumber_CaptureMulti = 2,
  POGOPokeballAttributes_FieldNumber_CaptureMultiEffect = 3,
  POGOPokeballAttributes_FieldNumber_ItemEffectMod = 4,
};

@interface POGOPokeballAttributes : GPBMessage

@property(nonatomic, readwrite) enum POGOItemEffect itemEffect;

@property(nonatomic, readwrite) float captureMulti;

@property(nonatomic, readwrite) float captureMultiEffect;

@property(nonatomic, readwrite) float itemEffectMod;

@end

/// Fetches the raw value of a @c POGOPokeballAttributes's @c itemEffect property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOPokeballAttributes_ItemEffect_RawValue(POGOPokeballAttributes *message);
/// Sets the raw value of an @c POGOPokeballAttributes's @c itemEffect property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOPokeballAttributes_ItemEffect_RawValue(POGOPokeballAttributes *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
