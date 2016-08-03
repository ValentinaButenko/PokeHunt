// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/EncounterResponse.proto

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

@class POGOCaptureProbability;
@class POGOWildPokemon;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum POGOEncounterResponse_Background

typedef GPB_ENUM(POGOEncounterResponse_Background) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  POGOEncounterResponse_Background_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  POGOEncounterResponse_Background_Park = 0,
  POGOEncounterResponse_Background_Desert = 1,
};

GPBEnumDescriptor *POGOEncounterResponse_Background_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL POGOEncounterResponse_Background_IsValidValue(int32_t value);

#pragma mark - Enum POGOEncounterResponse_Status

typedef GPB_ENUM(POGOEncounterResponse_Status) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  POGOEncounterResponse_Status_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  POGOEncounterResponse_Status_EncounterError = 0,
  POGOEncounterResponse_Status_EncounterSuccess = 1,
  POGOEncounterResponse_Status_EncounterNotFound = 2,
  POGOEncounterResponse_Status_EncounterClosed = 3,
  POGOEncounterResponse_Status_EncounterPokemonFled = 4,
  POGOEncounterResponse_Status_EncounterNotInRange = 5,
  POGOEncounterResponse_Status_EncounterAlreadyHappened = 6,
  POGOEncounterResponse_Status_PokemonInventoryFull = 7,
};

GPBEnumDescriptor *POGOEncounterResponse_Status_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL POGOEncounterResponse_Status_IsValidValue(int32_t value);

#pragma mark - POGOEncounterResponseRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOEncounterResponseRoot : GPBRootObject
@end

#pragma mark - POGOEncounterResponse

typedef GPB_ENUM(POGOEncounterResponse_FieldNumber) {
  POGOEncounterResponse_FieldNumber_WildPokemon = 1,
  POGOEncounterResponse_FieldNumber_Background = 2,
  POGOEncounterResponse_FieldNumber_Status = 3,
  POGOEncounterResponse_FieldNumber_CaptureProbability = 4,
};

@interface POGOEncounterResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) POGOWildPokemon *wildPokemon;
/// Test to see if @c wildPokemon has been set.
@property(nonatomic, readwrite) BOOL hasWildPokemon;

@property(nonatomic, readwrite) POGOEncounterResponse_Background background;

@property(nonatomic, readwrite) POGOEncounterResponse_Status status;

@property(nonatomic, readwrite, strong, null_resettable) POGOCaptureProbability *captureProbability;
/// Test to see if @c captureProbability has been set.
@property(nonatomic, readwrite) BOOL hasCaptureProbability;

@end

/// Fetches the raw value of a @c POGOEncounterResponse's @c background property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOEncounterResponse_Background_RawValue(POGOEncounterResponse *message);
/// Sets the raw value of an @c POGOEncounterResponse's @c background property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOEncounterResponse_Background_RawValue(POGOEncounterResponse *message, int32_t value);

/// Fetches the raw value of a @c POGOEncounterResponse's @c status property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOEncounterResponse_Status_RawValue(POGOEncounterResponse *message);
/// Sets the raw value of an @c POGOEncounterResponse's @c status property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOEncounterResponse_Status_RawValue(POGOEncounterResponse *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)