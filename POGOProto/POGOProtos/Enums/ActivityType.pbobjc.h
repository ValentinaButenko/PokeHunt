// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Enums/ActivityType.proto

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

#pragma mark - Enum POGOActivityType

typedef GPB_ENUM(POGOActivityType) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  POGOActivityType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  POGOActivityType_ActivityUnknown = 0,
  POGOActivityType_ActivityCatchPokemon = 1,
  POGOActivityType_ActivityCatchLegendPokemon = 2,
  POGOActivityType_ActivityFleePokemon = 3,
  POGOActivityType_ActivityDefeatFort = 4,
  POGOActivityType_ActivityEvolvePokemon = 5,
  POGOActivityType_ActivityHatchEgg = 6,
  POGOActivityType_ActivityWalkKm = 7,
  POGOActivityType_ActivityPokedexEntryNew = 8,
  POGOActivityType_ActivityCatchFirstThrow = 9,
  POGOActivityType_ActivityCatchNiceThrow = 10,
  POGOActivityType_ActivityCatchGreatThrow = 11,
  POGOActivityType_ActivityCatchExcellentThrow = 12,
  POGOActivityType_ActivityCatchCurveball = 13,
  POGOActivityType_ActivityCatchFirstCatchOfDay = 14,
  POGOActivityType_ActivityCatchMilestone = 15,
  POGOActivityType_ActivityTrainPokemon = 16,
  POGOActivityType_ActivitySearchFort = 17,
  POGOActivityType_ActivityReleasePokemon = 18,
  POGOActivityType_ActivityHatchEggSmallBonus = 19,
  POGOActivityType_ActivityHatchEggMediumBonus = 20,
  POGOActivityType_ActivityHatchEggLargeBonus = 21,
  POGOActivityType_ActivityDefeatGymDefender = 22,
  POGOActivityType_ActivityDefeatGymLeader = 23,
};

GPBEnumDescriptor *POGOActivityType_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL POGOActivityType_IsValidValue(int32_t value);

#pragma mark - POGOActivityTypeRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOActivityTypeRoot : GPBRootObject
@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
