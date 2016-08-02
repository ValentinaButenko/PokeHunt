// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Settings/Master/EquippedBadgeSettings.proto

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

#pragma mark - POGOEquippedBadgeSettingsRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOEquippedBadgeSettingsRoot : GPBRootObject
@end

#pragma mark - POGOEquippedBadgeSettings

typedef GPB_ENUM(POGOEquippedBadgeSettings_FieldNumber) {
  POGOEquippedBadgeSettings_FieldNumber_EquipBadgeCooldownMs = 1,
  POGOEquippedBadgeSettings_FieldNumber_CatchProbabilityBonusArray = 2,
  POGOEquippedBadgeSettings_FieldNumber_FleeProbabilityBonusArray = 3,
};

@interface POGOEquippedBadgeSettings : GPBMessage

@property(nonatomic, readwrite) int64_t equipBadgeCooldownMs;

@property(nonatomic, readwrite, strong, null_resettable) GPBFloatArray *catchProbabilityBonusArray;
/// The number of items in @c catchProbabilityBonusArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger catchProbabilityBonusArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) GPBFloatArray *fleeProbabilityBonusArray;
/// The number of items in @c fleeProbabilityBonusArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger fleeProbabilityBonusArray_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
