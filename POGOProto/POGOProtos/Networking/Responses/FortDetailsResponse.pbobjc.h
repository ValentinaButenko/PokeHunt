// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/FortDetailsResponse.proto

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

@class POGOFortModifier;
@class POGOPokemonData;
GPB_ENUM_FWD_DECLARE(POGOFortType);
GPB_ENUM_FWD_DECLARE(POGOTeamColor);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - POGOFortDetailsResponseRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOFortDetailsResponseRoot : GPBRootObject
@end

#pragma mark - POGOFortDetailsResponse

typedef GPB_ENUM(POGOFortDetailsResponse_FieldNumber) {
  POGOFortDetailsResponse_FieldNumber_FortId = 1,
  POGOFortDetailsResponse_FieldNumber_TeamColor = 2,
  POGOFortDetailsResponse_FieldNumber_PokemonData = 3,
  POGOFortDetailsResponse_FieldNumber_Name = 4,
  POGOFortDetailsResponse_FieldNumber_ImageUrlsArray = 5,
  POGOFortDetailsResponse_FieldNumber_Fp = 6,
  POGOFortDetailsResponse_FieldNumber_Stamina = 7,
  POGOFortDetailsResponse_FieldNumber_MaxStamina = 8,
  POGOFortDetailsResponse_FieldNumber_Type = 9,
  POGOFortDetailsResponse_FieldNumber_Latitude = 10,
  POGOFortDetailsResponse_FieldNumber_Longitude = 11,
  POGOFortDetailsResponse_FieldNumber_Description_p = 12,
  POGOFortDetailsResponse_FieldNumber_ModifiersArray = 13,
};

@interface POGOFortDetailsResponse : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *fortId;

@property(nonatomic, readwrite) enum POGOTeamColor teamColor;

@property(nonatomic, readwrite, strong, null_resettable) POGOPokemonData *pokemonData;
/// Test to see if @c pokemonData has been set.
@property(nonatomic, readwrite) BOOL hasPokemonData;

@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *imageUrlsArray;
/// The number of items in @c imageUrlsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger imageUrlsArray_Count;

@property(nonatomic, readwrite) int32_t fp;

@property(nonatomic, readwrite) int32_t stamina;

@property(nonatomic, readwrite) int32_t maxStamina;

@property(nonatomic, readwrite) enum POGOFortType type;

@property(nonatomic, readwrite) double latitude;

@property(nonatomic, readwrite) double longitude;

@property(nonatomic, readwrite, copy, null_resettable) NSString *description_p;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<POGOFortModifier*> *modifiersArray;
/// The number of items in @c modifiersArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger modifiersArray_Count;

@end

/// Fetches the raw value of a @c POGOFortDetailsResponse's @c teamColor property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOFortDetailsResponse_TeamColor_RawValue(POGOFortDetailsResponse *message);
/// Sets the raw value of an @c POGOFortDetailsResponse's @c teamColor property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOFortDetailsResponse_TeamColor_RawValue(POGOFortDetailsResponse *message, int32_t value);

/// Fetches the raw value of a @c POGOFortDetailsResponse's @c type property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOFortDetailsResponse_Type_RawValue(POGOFortDetailsResponse *message);
/// Sets the raw value of an @c POGOFortDetailsResponse's @c type property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOFortDetailsResponse_Type_RawValue(POGOFortDetailsResponse *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
