// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Settings/GlobalSettings.proto

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

@class POGOFortSettings;
@class POGOInventorySettings;
@class POGOLevelSettings;
@class POGOMapSettings;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - POGOGlobalSettingsRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOGlobalSettingsRoot : GPBRootObject
@end

#pragma mark - POGOGlobalSettings

typedef GPB_ENUM(POGOGlobalSettings_FieldNumber) {
  POGOGlobalSettings_FieldNumber_FortSettings = 2,
  POGOGlobalSettings_FieldNumber_MapSettings = 3,
  POGOGlobalSettings_FieldNumber_LevelSettings = 4,
  POGOGlobalSettings_FieldNumber_InventorySettings = 5,
  POGOGlobalSettings_FieldNumber_MinimumClientVersion = 6,
};

@interface POGOGlobalSettings : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) POGOFortSettings *fortSettings;
/// Test to see if @c fortSettings has been set.
@property(nonatomic, readwrite) BOOL hasFortSettings;

@property(nonatomic, readwrite, strong, null_resettable) POGOMapSettings *mapSettings;
/// Test to see if @c mapSettings has been set.
@property(nonatomic, readwrite) BOOL hasMapSettings;

@property(nonatomic, readwrite, strong, null_resettable) POGOLevelSettings *levelSettings;
/// Test to see if @c levelSettings has been set.
@property(nonatomic, readwrite) BOOL hasLevelSettings;

@property(nonatomic, readwrite, strong, null_resettable) POGOInventorySettings *inventorySettings;
/// Test to see if @c inventorySettings has been set.
@property(nonatomic, readwrite) BOOL hasInventorySettings;

@property(nonatomic, readwrite, copy, null_resettable) NSString *minimumClientVersion;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
