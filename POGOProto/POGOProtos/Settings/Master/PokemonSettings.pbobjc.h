// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Settings/Master/PokemonSettings.proto

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

@class POGOCameraAttributes;
@class POGOEncounterAttributes;
@class POGOStatsAttributes;
GPB_ENUM_FWD_DECLARE(POGOPokemonFamilyId);
GPB_ENUM_FWD_DECLARE(POGOPokemonId);
GPB_ENUM_FWD_DECLARE(POGOPokemonRarity);
GPB_ENUM_FWD_DECLARE(POGOPokemonType);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - POGOPokemonSettingsRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOPokemonSettingsRoot : GPBRootObject
@end

#pragma mark - POGOPokemonSettings

typedef GPB_ENUM(POGOPokemonSettings_FieldNumber) {
  POGOPokemonSettings_FieldNumber_PokemonId = 1,
  POGOPokemonSettings_FieldNumber_ModelScale = 3,
  POGOPokemonSettings_FieldNumber_Type = 4,
  POGOPokemonSettings_FieldNumber_Type2 = 5,
  POGOPokemonSettings_FieldNumber_Camera = 6,
  POGOPokemonSettings_FieldNumber_Encounter = 7,
  POGOPokemonSettings_FieldNumber_Stats = 8,
  POGOPokemonSettings_FieldNumber_QuickMovesArray = 9,
  POGOPokemonSettings_FieldNumber_CinematicMovesArray = 10,
  POGOPokemonSettings_FieldNumber_AnimationTimeArray = 11,
  POGOPokemonSettings_FieldNumber_EvolutionIdsArray = 12,
  POGOPokemonSettings_FieldNumber_EvolutionPips = 13,
  POGOPokemonSettings_FieldNumber_Rarity = 14,
  POGOPokemonSettings_FieldNumber_PokedexHeightM = 15,
  POGOPokemonSettings_FieldNumber_PokedexWeightKg = 16,
  POGOPokemonSettings_FieldNumber_ParentPokemonId = 17,
  POGOPokemonSettings_FieldNumber_HeightStdDev = 18,
  POGOPokemonSettings_FieldNumber_WeightStdDev = 19,
  POGOPokemonSettings_FieldNumber_KmDistanceToHatch = 20,
  POGOPokemonSettings_FieldNumber_FamilyId = 21,
  POGOPokemonSettings_FieldNumber_CandyToEvolve = 22,
};

@interface POGOPokemonSettings : GPBMessage

@property(nonatomic, readwrite) enum POGOPokemonId pokemonId;

@property(nonatomic, readwrite) float modelScale;

@property(nonatomic, readwrite) enum POGOPokemonType type;

@property(nonatomic, readwrite) enum POGOPokemonType type2;

@property(nonatomic, readwrite, strong, null_resettable) POGOCameraAttributes *camera;
/// Test to see if @c camera has been set.
@property(nonatomic, readwrite) BOOL hasCamera;

@property(nonatomic, readwrite, strong, null_resettable) POGOEncounterAttributes *encounter;
/// Test to see if @c encounter has been set.
@property(nonatomic, readwrite) BOOL hasEncounter;

@property(nonatomic, readwrite, strong, null_resettable) POGOStatsAttributes *stats;
/// Test to see if @c stats has been set.
@property(nonatomic, readwrite) BOOL hasStats;

// |quickMovesArray| contains |POGOPokemonMove|
@property(nonatomic, readwrite, strong, null_resettable) GPBEnumArray *quickMovesArray;
/// The number of items in @c quickMovesArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger quickMovesArray_Count;

// |cinematicMovesArray| contains |POGOPokemonMove|
@property(nonatomic, readwrite, strong, null_resettable) GPBEnumArray *cinematicMovesArray;
/// The number of items in @c cinematicMovesArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger cinematicMovesArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) GPBFloatArray *animationTimeArray;
/// The number of items in @c animationTimeArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger animationTimeArray_Count;

// |evolutionIdsArray| contains |POGOPokemonId|
@property(nonatomic, readwrite, strong, null_resettable) GPBEnumArray *evolutionIdsArray;
/// The number of items in @c evolutionIdsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger evolutionIdsArray_Count;

@property(nonatomic, readwrite) int32_t evolutionPips;

@property(nonatomic, readwrite) enum POGOPokemonRarity rarity;

@property(nonatomic, readwrite) float pokedexHeightM;

@property(nonatomic, readwrite) float pokedexWeightKg;

@property(nonatomic, readwrite) enum POGOPokemonId parentPokemonId;

@property(nonatomic, readwrite) float heightStdDev;

@property(nonatomic, readwrite) float weightStdDev;

@property(nonatomic, readwrite) float kmDistanceToHatch;

@property(nonatomic, readwrite) enum POGOPokemonFamilyId familyId;

@property(nonatomic, readwrite) int32_t candyToEvolve;

@end

/// Fetches the raw value of a @c POGOPokemonSettings's @c pokemonId property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOPokemonSettings_PokemonId_RawValue(POGOPokemonSettings *message);
/// Sets the raw value of an @c POGOPokemonSettings's @c pokemonId property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOPokemonSettings_PokemonId_RawValue(POGOPokemonSettings *message, int32_t value);

/// Fetches the raw value of a @c POGOPokemonSettings's @c type property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOPokemonSettings_Type_RawValue(POGOPokemonSettings *message);
/// Sets the raw value of an @c POGOPokemonSettings's @c type property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOPokemonSettings_Type_RawValue(POGOPokemonSettings *message, int32_t value);

/// Fetches the raw value of a @c POGOPokemonSettings's @c type2 property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOPokemonSettings_Type2_RawValue(POGOPokemonSettings *message);
/// Sets the raw value of an @c POGOPokemonSettings's @c type2 property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOPokemonSettings_Type2_RawValue(POGOPokemonSettings *message, int32_t value);

/// Fetches the raw value of a @c POGOPokemonSettings's @c rarity property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOPokemonSettings_Rarity_RawValue(POGOPokemonSettings *message);
/// Sets the raw value of an @c POGOPokemonSettings's @c rarity property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOPokemonSettings_Rarity_RawValue(POGOPokemonSettings *message, int32_t value);

/// Fetches the raw value of a @c POGOPokemonSettings's @c parentPokemonId property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOPokemonSettings_ParentPokemonId_RawValue(POGOPokemonSettings *message);
/// Sets the raw value of an @c POGOPokemonSettings's @c parentPokemonId property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOPokemonSettings_ParentPokemonId_RawValue(POGOPokemonSettings *message, int32_t value);

/// Fetches the raw value of a @c POGOPokemonSettings's @c familyId property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOPokemonSettings_FamilyId_RawValue(POGOPokemonSettings *message);
/// Sets the raw value of an @c POGOPokemonSettings's @c familyId property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOPokemonSettings_FamilyId_RawValue(POGOPokemonSettings *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
