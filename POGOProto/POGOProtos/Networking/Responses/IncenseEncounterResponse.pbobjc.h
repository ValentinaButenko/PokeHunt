// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/IncenseEncounterResponse.proto

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
@class POGOPokemonData;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum POGOIncenseEncounterResponse_Result

typedef GPB_ENUM(POGOIncenseEncounterResponse_Result) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  POGOIncenseEncounterResponse_Result_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  POGOIncenseEncounterResponse_Result_IncenseEncounterUnknown = 0,
  POGOIncenseEncounterResponse_Result_IncenseEncounterSuccess = 1,
  POGOIncenseEncounterResponse_Result_IncenseEncounterNotAvailable = 2,
  POGOIncenseEncounterResponse_Result_PokemonInventoryFull = 3,
};

GPBEnumDescriptor *POGOIncenseEncounterResponse_Result_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL POGOIncenseEncounterResponse_Result_IsValidValue(int32_t value);

#pragma mark - POGOIncenseEncounterResponseRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOIncenseEncounterResponseRoot : GPBRootObject
@end

#pragma mark - POGOIncenseEncounterResponse

typedef GPB_ENUM(POGOIncenseEncounterResponse_FieldNumber) {
  POGOIncenseEncounterResponse_FieldNumber_Result = 1,
  POGOIncenseEncounterResponse_FieldNumber_PokemonData = 2,
  POGOIncenseEncounterResponse_FieldNumber_CaptureProbability = 3,
};

@interface POGOIncenseEncounterResponse : GPBMessage

@property(nonatomic, readwrite) POGOIncenseEncounterResponse_Result result;

@property(nonatomic, readwrite, strong, null_resettable) POGOPokemonData *pokemonData;
/// Test to see if @c pokemonData has been set.
@property(nonatomic, readwrite) BOOL hasPokemonData;

@property(nonatomic, readwrite, strong, null_resettable) POGOCaptureProbability *captureProbability;
/// Test to see if @c captureProbability has been set.
@property(nonatomic, readwrite) BOOL hasCaptureProbability;

@end

/// Fetches the raw value of a @c POGOIncenseEncounterResponse's @c result property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOIncenseEncounterResponse_Result_RawValue(POGOIncenseEncounterResponse *message);
/// Sets the raw value of an @c POGOIncenseEncounterResponse's @c result property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOIncenseEncounterResponse_Result_RawValue(POGOIncenseEncounterResponse *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
