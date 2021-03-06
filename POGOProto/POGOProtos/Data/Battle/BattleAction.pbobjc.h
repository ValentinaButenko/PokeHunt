// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Data/Battle/BattleAction.proto

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

@class POGOBattleParticipant;
@class POGOBattleResults;
GPB_ENUM_FWD_DECLARE(POGOBattleActionType);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - POGOBattleActionRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOBattleActionRoot : GPBRootObject
@end

#pragma mark - POGOBattleAction

typedef GPB_ENUM(POGOBattleAction_FieldNumber) {
  POGOBattleAction_FieldNumber_Type = 1,
  POGOBattleAction_FieldNumber_ActionStartMs = 2,
  POGOBattleAction_FieldNumber_DurationMs = 3,
  POGOBattleAction_FieldNumber_EnergyDelta = 5,
  POGOBattleAction_FieldNumber_AttackerIndex = 6,
  POGOBattleAction_FieldNumber_TargetIndex = 7,
  POGOBattleAction_FieldNumber_ActivePokemonId = 8,
  POGOBattleAction_FieldNumber_PlayerJoined = 9,
  POGOBattleAction_FieldNumber_BattleResults = 10,
  POGOBattleAction_FieldNumber_DamageWindowsStartTimestampMss = 11,
  POGOBattleAction_FieldNumber_DamageWindowsEndTimestampMss = 12,
  POGOBattleAction_FieldNumber_PlayerLeft = 13,
  POGOBattleAction_FieldNumber_TargetPokemonId = 14,
};

@interface POGOBattleAction : GPBMessage

@property(nonatomic, readwrite) enum POGOBattleActionType type;

@property(nonatomic, readwrite) int64_t actionStartMs;

@property(nonatomic, readwrite) int32_t durationMs;

@property(nonatomic, readwrite) int32_t energyDelta;

@property(nonatomic, readwrite) int32_t attackerIndex;

@property(nonatomic, readwrite) int32_t targetIndex;

@property(nonatomic, readwrite) uint64_t activePokemonId;

@property(nonatomic, readwrite, strong, null_resettable) POGOBattleParticipant *playerJoined;
/// Test to see if @c playerJoined has been set.
@property(nonatomic, readwrite) BOOL hasPlayerJoined;

@property(nonatomic, readwrite, strong, null_resettable) POGOBattleResults *battleResults;
/// Test to see if @c battleResults has been set.
@property(nonatomic, readwrite) BOOL hasBattleResults;

@property(nonatomic, readwrite) int64_t damageWindowsStartTimestampMss;

@property(nonatomic, readwrite) int64_t damageWindowsEndTimestampMss;

@property(nonatomic, readwrite, strong, null_resettable) POGOBattleParticipant *playerLeft;
/// Test to see if @c playerLeft has been set.
@property(nonatomic, readwrite) BOOL hasPlayerLeft;

@property(nonatomic, readwrite) uint64_t targetPokemonId;

@end

/// Fetches the raw value of a @c POGOBattleAction's @c type property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOBattleAction_Type_RawValue(POGOBattleAction *message);
/// Sets the raw value of an @c POGOBattleAction's @c type property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOBattleAction_Type_RawValue(POGOBattleAction *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
