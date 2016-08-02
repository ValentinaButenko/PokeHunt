// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Settings/Master/IapSettings.proto

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

#pragma mark - POGOIapSettingsRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOIapSettingsRoot : GPBRootObject
@end

#pragma mark - POGOIapSettings

typedef GPB_ENUM(POGOIapSettings_FieldNumber) {
  POGOIapSettings_FieldNumber_DailyBonusCoins = 1,
  POGOIapSettings_FieldNumber_DailyDefenderBonusPerPokemonArray = 2,
  POGOIapSettings_FieldNumber_DailyDefenderBonusMaxDefenders = 3,
  POGOIapSettings_FieldNumber_DailyDefenderBonusCurrencyArray = 4,
  POGOIapSettings_FieldNumber_MinTimeBetweenClaimsMs = 5,
  POGOIapSettings_FieldNumber_DailyBonusEnabled = 6,
  POGOIapSettings_FieldNumber_DailyDefenderBonusEnabled = 7,
};

@interface POGOIapSettings : GPBMessage

@property(nonatomic, readwrite) int32_t dailyBonusCoins;

@property(nonatomic, readwrite, strong, null_resettable) GPBInt32Array *dailyDefenderBonusPerPokemonArray;
/// The number of items in @c dailyDefenderBonusPerPokemonArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger dailyDefenderBonusPerPokemonArray_Count;

@property(nonatomic, readwrite) int32_t dailyDefenderBonusMaxDefenders;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *dailyDefenderBonusCurrencyArray;
/// The number of items in @c dailyDefenderBonusCurrencyArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger dailyDefenderBonusCurrencyArray_Count;

@property(nonatomic, readwrite) int64_t minTimeBetweenClaimsMs;

@property(nonatomic, readwrite) BOOL dailyBonusEnabled;

@property(nonatomic, readwrite) BOOL dailyDefenderBonusEnabled;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
