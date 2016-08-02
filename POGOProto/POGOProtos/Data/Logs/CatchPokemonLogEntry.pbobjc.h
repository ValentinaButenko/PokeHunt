// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Data/Logs/CatchPokemonLogEntry.proto

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

#pragma mark - Enum POGOCatchPokemonLogEntry_Result

typedef GPB_ENUM(POGOCatchPokemonLogEntry_Result) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  POGOCatchPokemonLogEntry_Result_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  POGOCatchPokemonLogEntry_Result_Unset = 0,
  POGOCatchPokemonLogEntry_Result_PokemonCaptured = 1,
  POGOCatchPokemonLogEntry_Result_PokemonFled = 2,
};

GPBEnumDescriptor *POGOCatchPokemonLogEntry_Result_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL POGOCatchPokemonLogEntry_Result_IsValidValue(int32_t value);

#pragma mark - POGOCatchPokemonLogEntryRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOCatchPokemonLogEntryRoot : GPBRootObject
@end

#pragma mark - POGOCatchPokemonLogEntry

typedef GPB_ENUM(POGOCatchPokemonLogEntry_FieldNumber) {
  POGOCatchPokemonLogEntry_FieldNumber_Result = 1,
  POGOCatchPokemonLogEntry_FieldNumber_PokemonId = 2,
  POGOCatchPokemonLogEntry_FieldNumber_CombatPoints = 3,
  POGOCatchPokemonLogEntry_FieldNumber_PokemonDataId = 4,
};

@interface POGOCatchPokemonLogEntry : GPBMessage

@property(nonatomic, readwrite) POGOCatchPokemonLogEntry_Result result;

@property(nonatomic, readwrite) enum POGOPokemonId pokemonId;

@property(nonatomic, readwrite) int32_t combatPoints;

@property(nonatomic, readwrite) uint64_t pokemonDataId;

@end

/// Fetches the raw value of a @c POGOCatchPokemonLogEntry's @c result property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOCatchPokemonLogEntry_Result_RawValue(POGOCatchPokemonLogEntry *message);
/// Sets the raw value of an @c POGOCatchPokemonLogEntry's @c result property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOCatchPokemonLogEntry_Result_RawValue(POGOCatchPokemonLogEntry *message, int32_t value);

/// Fetches the raw value of a @c POGOCatchPokemonLogEntry's @c pokemonId property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOCatchPokemonLogEntry_PokemonId_RawValue(POGOCatchPokemonLogEntry *message);
/// Sets the raw value of an @c POGOCatchPokemonLogEntry's @c pokemonId property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOCatchPokemonLogEntry_PokemonId_RawValue(POGOCatchPokemonLogEntry *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
