// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Enums/ItemEffect.proto

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

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum POGOItemEffect

typedef GPB_ENUM(POGOItemEffect) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  POGOItemEffect_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  POGOItemEffect_ItemEffectNone = 0,
  POGOItemEffect_ItemEffectCapNoFlee = 1000,
  POGOItemEffect_ItemEffectCapNoMovement = 1002,
  POGOItemEffect_ItemEffectCapNoThreat = 1003,
  POGOItemEffect_ItemEffectCapTargetMax = 1004,
  POGOItemEffect_ItemEffectCapTargetSlow = 1005,
  POGOItemEffect_ItemEffectCapChanceNight = 1006,
  POGOItemEffect_ItemEffectCapChanceTrainer = 1007,
  POGOItemEffect_ItemEffectCapChanceFirstThrow = 1008,
  POGOItemEffect_ItemEffectCapChanceLegend = 1009,
  POGOItemEffect_ItemEffectCapChanceHeavy = 1010,
  POGOItemEffect_ItemEffectCapChanceRepeat = 1011,
  POGOItemEffect_ItemEffectCapChanceMultiThrow = 1012,
  POGOItemEffect_ItemEffectCapChanceAlways = 1013,
  POGOItemEffect_ItemEffectCapChanceSingleThrow = 1014,
};

GPBEnumDescriptor *POGOItemEffect_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL POGOItemEffect_IsValidValue(int32_t value);

#pragma mark - POGOItemEffectRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOItemEffectRoot : GPBRootObject
@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)