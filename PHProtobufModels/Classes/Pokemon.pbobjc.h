// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: pokemon.proto

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

@class RequestEnvelop_AuthInfo;
@class RequestEnvelop_AuthInfo_JWT;
@class RequestEnvelop_Requests;
@class RequestEnvelop_Unknown6;
@class RequestEnvelop_Unknown6_Unknown2;
@class ResponseEnvelop_ClientMapCell;
@class ResponseEnvelop_ClientSpawnPointProto;
@class ResponseEnvelop_FortLureInfoProto;
@class ResponseEnvelop_MapPokemonProto;
@class ResponseEnvelop_NearbyPokemonProto;
@class ResponseEnvelop_PokemonFortProto;
@class ResponseEnvelop_PokemonSummaryFortProto;
@class ResponseEnvelop_Profile;
@class ResponseEnvelop_Profile_AvatarDetails;
@class ResponseEnvelop_Profile_Currency;
@class ResponseEnvelop_Profile_DailyBonus;
@class ResponseEnvelop_Unknown6;
@class ResponseEnvelop_Unknown6_Unknown2;
@class ResponseEnvelop_WildPokemonProto;
@class ResponseEnvelop_WildPokemonProto_Pokemon;
@class UnknownAuth;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - PokemonRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface PokemonRoot : GPBRootObject
@end

#pragma mark - RequestEnvelop

typedef GPB_ENUM(RequestEnvelop_FieldNumber) {
  RequestEnvelop_FieldNumber_Unknown1 = 1,
  RequestEnvelop_FieldNumber_RpcId = 3,
  RequestEnvelop_FieldNumber_RequestsArray = 4,
  RequestEnvelop_FieldNumber_Unknown6 = 6,
  RequestEnvelop_FieldNumber_Latitude = 7,
  RequestEnvelop_FieldNumber_Longitude = 8,
  RequestEnvelop_FieldNumber_Altitude = 9,
  RequestEnvelop_FieldNumber_Auth = 10,
  RequestEnvelop_FieldNumber_Unknown11 = 11,
  RequestEnvelop_FieldNumber_Unknown12 = 12,
};

@interface RequestEnvelop : GPBMessage

@property(nonatomic, readwrite) int32_t unknown1;

@property(nonatomic, readwrite) BOOL hasUnknown1;
@property(nonatomic, readwrite) int64_t rpcId;

@property(nonatomic, readwrite) BOOL hasRpcId;
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<RequestEnvelop_Requests*> *requestsArray;
/// The number of items in @c requestsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger requestsArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) RequestEnvelop_Unknown6 *unknown6;
/// Test to see if @c unknown6 has been set.
@property(nonatomic, readwrite) BOOL hasUnknown6;

@property(nonatomic, readwrite) uint64_t latitude;

@property(nonatomic, readwrite) BOOL hasLatitude;
@property(nonatomic, readwrite) uint64_t longitude;

@property(nonatomic, readwrite) BOOL hasLongitude;
@property(nonatomic, readwrite) uint64_t altitude;

@property(nonatomic, readwrite) BOOL hasAltitude;
@property(nonatomic, readwrite, strong, null_resettable) RequestEnvelop_AuthInfo *auth;
/// Test to see if @c auth has been set.
@property(nonatomic, readwrite) BOOL hasAuth;

@property(nonatomic, readwrite, strong, null_resettable) UnknownAuth *unknown11;
/// Test to see if @c unknown11 has been set.
@property(nonatomic, readwrite) BOOL hasUnknown11;

@property(nonatomic, readwrite) int64_t unknown12;

@property(nonatomic, readwrite) BOOL hasUnknown12;
@end

#pragma mark - RequestEnvelop_Requests

typedef GPB_ENUM(RequestEnvelop_Requests_FieldNumber) {
  RequestEnvelop_Requests_FieldNumber_Type = 1,
  RequestEnvelop_Requests_FieldNumber_Message = 2,
};

@interface RequestEnvelop_Requests : GPBMessage

@property(nonatomic, readwrite) int32_t type;

@property(nonatomic, readwrite) BOOL hasType;
@property(nonatomic, readwrite, copy, null_resettable) NSData *message;
/// Test to see if @c message has been set.
@property(nonatomic, readwrite) BOOL hasMessage;

@end

#pragma mark - RequestEnvelop_MessageSingleString

typedef GPB_ENUM(RequestEnvelop_MessageSingleString_FieldNumber) {
  RequestEnvelop_MessageSingleString_FieldNumber_Bytes = 1,
};

@interface RequestEnvelop_MessageSingleString : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *bytes;
/// Test to see if @c bytes has been set.
@property(nonatomic, readwrite) BOOL hasBytes;

@end

#pragma mark - RequestEnvelop_MessageSingleInt

typedef GPB_ENUM(RequestEnvelop_MessageSingleInt_FieldNumber) {
  RequestEnvelop_MessageSingleInt_FieldNumber_F1 = 1,
};

@interface RequestEnvelop_MessageSingleInt : GPBMessage

@property(nonatomic, readwrite) int64_t f1;

@property(nonatomic, readwrite) BOOL hasF1;
@end

#pragma mark - RequestEnvelop_MessageTwoInts

typedef GPB_ENUM(RequestEnvelop_MessageTwoInts_FieldNumber) {
  RequestEnvelop_MessageTwoInts_FieldNumber_F1 = 1,
  RequestEnvelop_MessageTwoInts_FieldNumber_F5 = 5,
};

@interface RequestEnvelop_MessageTwoInts : GPBMessage

@property(nonatomic, readwrite) int64_t f1;

@property(nonatomic, readwrite) BOOL hasF1;
@property(nonatomic, readwrite) int64_t f5;

@property(nonatomic, readwrite) BOOL hasF5;
@end

#pragma mark - RequestEnvelop_MessageQuad

typedef GPB_ENUM(RequestEnvelop_MessageQuad_FieldNumber) {
  RequestEnvelop_MessageQuad_FieldNumber_F1 = 1,
  RequestEnvelop_MessageQuad_FieldNumber_F2 = 2,
  RequestEnvelop_MessageQuad_FieldNumber_Lat = 3,
  RequestEnvelop_MessageQuad_FieldNumber_Long_p = 4,
};

@interface RequestEnvelop_MessageQuad : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *f1;
/// Test to see if @c f1 has been set.
@property(nonatomic, readwrite) BOOL hasF1;

@property(nonatomic, readwrite, copy, null_resettable) NSData *f2;
/// Test to see if @c f2 has been set.
@property(nonatomic, readwrite) BOOL hasF2;

@property(nonatomic, readwrite) uint64_t lat;

@property(nonatomic, readwrite) BOOL hasLat;
@property(nonatomic, readwrite) uint64_t long_p;

@property(nonatomic, readwrite) BOOL hasLong_p;
@end

#pragma mark - RequestEnvelop_Wat

typedef GPB_ENUM(RequestEnvelop_Wat_FieldNumber) {
  RequestEnvelop_Wat_FieldNumber_LolsArray = 134217728,
};

@interface RequestEnvelop_Wat : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) GPBInt64Array *lolsArray;
/// The number of items in @c lolsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger lolsArray_Count;

@end

#pragma mark - RequestEnvelop_Unknown3

typedef GPB_ENUM(RequestEnvelop_Unknown3_FieldNumber) {
  RequestEnvelop_Unknown3_FieldNumber_Unknown4 = 1,
  RequestEnvelop_Unknown3_FieldNumber_Unknown2 = 2,
  RequestEnvelop_Unknown3_FieldNumber_Lat = 3,
  RequestEnvelop_Unknown3_FieldNumber_Long_p = 4,
};

@interface RequestEnvelop_Unknown3 : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *unknown4;
/// Test to see if @c unknown4 has been set.
@property(nonatomic, readwrite) BOOL hasUnknown4;

@property(nonatomic, readwrite, copy, null_resettable) NSData *unknown2;
/// Test to see if @c unknown2 has been set.
@property(nonatomic, readwrite) BOOL hasUnknown2;

@property(nonatomic, readwrite) uint64_t lat;

@property(nonatomic, readwrite) BOOL hasLat;
@property(nonatomic, readwrite) uint64_t long_p;

@property(nonatomic, readwrite) BOOL hasLong_p;
@end

#pragma mark - RequestEnvelop_Unknown6

typedef GPB_ENUM(RequestEnvelop_Unknown6_FieldNumber) {
  RequestEnvelop_Unknown6_FieldNumber_Unknown1 = 1,
  RequestEnvelop_Unknown6_FieldNumber_Unknown2 = 2,
};

@interface RequestEnvelop_Unknown6 : GPBMessage

@property(nonatomic, readwrite) int32_t unknown1;

@property(nonatomic, readwrite) BOOL hasUnknown1;
@property(nonatomic, readwrite, strong, null_resettable) RequestEnvelop_Unknown6_Unknown2 *unknown2;
/// Test to see if @c unknown2 has been set.
@property(nonatomic, readwrite) BOOL hasUnknown2;

@end

#pragma mark - RequestEnvelop_Unknown6_Unknown2

typedef GPB_ENUM(RequestEnvelop_Unknown6_Unknown2_FieldNumber) {
  RequestEnvelop_Unknown6_Unknown2_FieldNumber_Unknown1 = 1,
};

@interface RequestEnvelop_Unknown6_Unknown2 : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *unknown1;
/// Test to see if @c unknown1 has been set.
@property(nonatomic, readwrite) BOOL hasUnknown1;

@end

#pragma mark - RequestEnvelop_AuthInfo

typedef GPB_ENUM(RequestEnvelop_AuthInfo_FieldNumber) {
  RequestEnvelop_AuthInfo_FieldNumber_Provider = 1,
  RequestEnvelop_AuthInfo_FieldNumber_Token = 2,
};

@interface RequestEnvelop_AuthInfo : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *provider;
/// Test to see if @c provider has been set.
@property(nonatomic, readwrite) BOOL hasProvider;

@property(nonatomic, readwrite, strong, null_resettable) RequestEnvelop_AuthInfo_JWT *token;
/// Test to see if @c token has been set.
@property(nonatomic, readwrite) BOOL hasToken;

@end

#pragma mark - RequestEnvelop_AuthInfo_JWT

typedef GPB_ENUM(RequestEnvelop_AuthInfo_JWT_FieldNumber) {
  RequestEnvelop_AuthInfo_JWT_FieldNumber_Contents = 1,
  RequestEnvelop_AuthInfo_JWT_FieldNumber_Unknown13 = 2,
};

@interface RequestEnvelop_AuthInfo_JWT : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *contents;
/// Test to see if @c contents has been set.
@property(nonatomic, readwrite) BOOL hasContents;

@property(nonatomic, readwrite) int32_t unknown13;

@property(nonatomic, readwrite) BOOL hasUnknown13;
@end

#pragma mark - UnknownAuth

typedef GPB_ENUM(UnknownAuth_FieldNumber) {
  UnknownAuth_FieldNumber_Unknown71 = 1,
  UnknownAuth_FieldNumber_Unknown72 = 2,
  UnknownAuth_FieldNumber_Unknown73 = 3,
};

@interface UnknownAuth : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *unknown71;
/// Test to see if @c unknown71 has been set.
@property(nonatomic, readwrite) BOOL hasUnknown71;

@property(nonatomic, readwrite) int64_t unknown72;

@property(nonatomic, readwrite) BOOL hasUnknown72;
@property(nonatomic, readwrite, copy, null_resettable) NSData *unknown73;
/// Test to see if @c unknown73 has been set.
@property(nonatomic, readwrite) BOOL hasUnknown73;

@end

#pragma mark - ResponseEnvelop

typedef GPB_ENUM(ResponseEnvelop_FieldNumber) {
  ResponseEnvelop_FieldNumber_Unknown1 = 1,
  ResponseEnvelop_FieldNumber_Unknown2 = 2,
  ResponseEnvelop_FieldNumber_ApiURL = 3,
  ResponseEnvelop_FieldNumber_Unknown6 = 6,
  ResponseEnvelop_FieldNumber_Unknown7 = 7,
  ResponseEnvelop_FieldNumber_PayloadArray = 100,
};

@interface ResponseEnvelop : GPBMessage

@property(nonatomic, readwrite) int32_t unknown1;

@property(nonatomic, readwrite) BOOL hasUnknown1;
@property(nonatomic, readwrite) int64_t unknown2;

@property(nonatomic, readwrite) BOOL hasUnknown2;
@property(nonatomic, readwrite, copy, null_resettable) NSString *apiURL;
/// Test to see if @c apiURL has been set.
@property(nonatomic, readwrite) BOOL hasApiURL;

@property(nonatomic, readwrite, strong, null_resettable) ResponseEnvelop_Unknown6 *unknown6;
/// Test to see if @c unknown6 has been set.
@property(nonatomic, readwrite) BOOL hasUnknown6;

@property(nonatomic, readwrite, strong, null_resettable) UnknownAuth *unknown7;
/// Test to see if @c unknown7 has been set.
@property(nonatomic, readwrite) BOOL hasUnknown7;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSData*> *payloadArray;
/// The number of items in @c payloadArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger payloadArray_Count;

@end

#pragma mark - ResponseEnvelop_Unknown6

typedef GPB_ENUM(ResponseEnvelop_Unknown6_FieldNumber) {
  ResponseEnvelop_Unknown6_FieldNumber_Unknown1 = 1,
  ResponseEnvelop_Unknown6_FieldNumber_Unknown2 = 2,
};

@interface ResponseEnvelop_Unknown6 : GPBMessage

@property(nonatomic, readwrite) int32_t unknown1;

@property(nonatomic, readwrite) BOOL hasUnknown1;
@property(nonatomic, readwrite, strong, null_resettable) ResponseEnvelop_Unknown6_Unknown2 *unknown2;
/// Test to see if @c unknown2 has been set.
@property(nonatomic, readwrite) BOOL hasUnknown2;

@end

#pragma mark - ResponseEnvelop_Unknown6_Unknown2

typedef GPB_ENUM(ResponseEnvelop_Unknown6_Unknown2_FieldNumber) {
  ResponseEnvelop_Unknown6_Unknown2_FieldNumber_Unknown1 = 1,
};

@interface ResponseEnvelop_Unknown6_Unknown2 : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSData *unknown1;
/// Test to see if @c unknown1 has been set.
@property(nonatomic, readwrite) BOOL hasUnknown1;

@end

#pragma mark - ResponseEnvelop_HeartbeatPayload

typedef GPB_ENUM(ResponseEnvelop_HeartbeatPayload_FieldNumber) {
  ResponseEnvelop_HeartbeatPayload_FieldNumber_CellsArray = 1,
};

@interface ResponseEnvelop_HeartbeatPayload : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<ResponseEnvelop_ClientMapCell*> *cellsArray;
/// The number of items in @c cellsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger cellsArray_Count;

@end

#pragma mark - ResponseEnvelop_ClientMapCell

typedef GPB_ENUM(ResponseEnvelop_ClientMapCell_FieldNumber) {
  ResponseEnvelop_ClientMapCell_FieldNumber_S2CellId = 1,
  ResponseEnvelop_ClientMapCell_FieldNumber_AsOfTimeMs = 2,
  ResponseEnvelop_ClientMapCell_FieldNumber_FortArray = 3,
  ResponseEnvelop_ClientMapCell_FieldNumber_SpawnPointArray = 4,
  ResponseEnvelop_ClientMapCell_FieldNumber_WildPokemonArray = 5,
  ResponseEnvelop_ClientMapCell_FieldNumber_IsTruncatedList = 7,
  ResponseEnvelop_ClientMapCell_FieldNumber_FortSummaryArray = 8,
  ResponseEnvelop_ClientMapCell_FieldNumber_DecimatedSpawnPointArray = 9,
  ResponseEnvelop_ClientMapCell_FieldNumber_MapPokemonArray = 10,
  ResponseEnvelop_ClientMapCell_FieldNumber_NearbyPokemonArray = 11,
};

@interface ResponseEnvelop_ClientMapCell : GPBMessage

@property(nonatomic, readwrite) uint64_t s2CellId;

@property(nonatomic, readwrite) BOOL hasS2CellId;
@property(nonatomic, readwrite) int64_t asOfTimeMs;

@property(nonatomic, readwrite) BOOL hasAsOfTimeMs;
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<ResponseEnvelop_PokemonFortProto*> *fortArray;
/// The number of items in @c fortArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger fortArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<ResponseEnvelop_ClientSpawnPointProto*> *spawnPointArray;
/// The number of items in @c spawnPointArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger spawnPointArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<ResponseEnvelop_WildPokemonProto*> *wildPokemonArray;
/// The number of items in @c wildPokemonArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger wildPokemonArray_Count;

///unknown DeletedObject = 6;
@property(nonatomic, readwrite) BOOL isTruncatedList;

@property(nonatomic, readwrite) BOOL hasIsTruncatedList;
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<ResponseEnvelop_PokemonSummaryFortProto*> *fortSummaryArray;
/// The number of items in @c fortSummaryArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger fortSummaryArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<ResponseEnvelop_ClientSpawnPointProto*> *decimatedSpawnPointArray;
/// The number of items in @c decimatedSpawnPointArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger decimatedSpawnPointArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<ResponseEnvelop_MapPokemonProto*> *mapPokemonArray;
/// The number of items in @c mapPokemonArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger mapPokemonArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<ResponseEnvelop_NearbyPokemonProto*> *nearbyPokemonArray;
/// The number of items in @c nearbyPokemonArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger nearbyPokemonArray_Count;

@end

#pragma mark - ResponseEnvelop_WildPokemon

typedef GPB_ENUM(ResponseEnvelop_WildPokemon_FieldNumber) {
  ResponseEnvelop_WildPokemon_FieldNumber_UniqueId = 1,
  ResponseEnvelop_WildPokemon_FieldNumber_PokemonId = 2,
  ResponseEnvelop_WildPokemon_FieldNumber_PokemonArray = 11,
};

@interface ResponseEnvelop_WildPokemon : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *uniqueId;
/// Test to see if @c uniqueId has been set.
@property(nonatomic, readwrite) BOOL hasUniqueId;

@property(nonatomic, readwrite, copy, null_resettable) NSString *pokemonId;
/// Test to see if @c pokemonId has been set.
@property(nonatomic, readwrite) BOOL hasPokemonId;

/// int64 three = 3;
/// float four = 4;
/// int32 five = 5;
/// unknown six = 6;
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<ResponseEnvelop_NearbyPokemonProto*> *pokemonArray;
/// The number of items in @c pokemonArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger pokemonArray_Count;

@end

#pragma mark - ResponseEnvelop_MapPokemonProto

typedef GPB_ENUM(ResponseEnvelop_MapPokemonProto_FieldNumber) {
  ResponseEnvelop_MapPokemonProto_FieldNumber_SpawnpointId = 1,
  ResponseEnvelop_MapPokemonProto_FieldNumber_EncounterId = 2,
  ResponseEnvelop_MapPokemonProto_FieldNumber_PokedexTypeId = 3,
  ResponseEnvelop_MapPokemonProto_FieldNumber_ExpirationTimeMs = 4,
  ResponseEnvelop_MapPokemonProto_FieldNumber_Latitude = 5,
  ResponseEnvelop_MapPokemonProto_FieldNumber_Longitude = 6,
};

@interface ResponseEnvelop_MapPokemonProto : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *spawnpointId;
/// Test to see if @c spawnpointId has been set.
@property(nonatomic, readwrite) BOOL hasSpawnpointId;

@property(nonatomic, readwrite) uint64_t encounterId;

@property(nonatomic, readwrite) BOOL hasEncounterId;
@property(nonatomic, readwrite) int32_t pokedexTypeId;

@property(nonatomic, readwrite) BOOL hasPokedexTypeId;
@property(nonatomic, readwrite) int64_t expirationTimeMs;

@property(nonatomic, readwrite) BOOL hasExpirationTimeMs;
@property(nonatomic, readwrite) double latitude;

@property(nonatomic, readwrite) BOOL hasLatitude;
@property(nonatomic, readwrite) double longitude;

@property(nonatomic, readwrite) BOOL hasLongitude;
@end

#pragma mark - ResponseEnvelop_PokemonFortProto

typedef GPB_ENUM(ResponseEnvelop_PokemonFortProto_FieldNumber) {
  ResponseEnvelop_PokemonFortProto_FieldNumber_FortId = 1,
  ResponseEnvelop_PokemonFortProto_FieldNumber_LastModifiedMs = 2,
  ResponseEnvelop_PokemonFortProto_FieldNumber_Latitude = 3,
  ResponseEnvelop_PokemonFortProto_FieldNumber_Longitude = 4,
  ResponseEnvelop_PokemonFortProto_FieldNumber_Team = 5,
  ResponseEnvelop_PokemonFortProto_FieldNumber_GuardPokemonId = 6,
  ResponseEnvelop_PokemonFortProto_FieldNumber_GuardPokemonLevel = 7,
  ResponseEnvelop_PokemonFortProto_FieldNumber_Enabled = 8,
  ResponseEnvelop_PokemonFortProto_FieldNumber_FortType = 9,
  ResponseEnvelop_PokemonFortProto_FieldNumber_GymPoints = 10,
  ResponseEnvelop_PokemonFortProto_FieldNumber_IsInBattle = 11,
  ResponseEnvelop_PokemonFortProto_FieldNumber_ActivePortModifier = 12,
  ResponseEnvelop_PokemonFortProto_FieldNumber_LureInfo = 13,
  ResponseEnvelop_PokemonFortProto_FieldNumber_CooldownCompleteMs = 14,
  ResponseEnvelop_PokemonFortProto_FieldNumber_Sponsor = 15,
  ResponseEnvelop_PokemonFortProto_FieldNumber_RenderingType = 16,
};

@interface ResponseEnvelop_PokemonFortProto : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *fortId;
/// Test to see if @c fortId has been set.
@property(nonatomic, readwrite) BOOL hasFortId;

@property(nonatomic, readwrite) int64_t lastModifiedMs;

@property(nonatomic, readwrite) BOOL hasLastModifiedMs;
@property(nonatomic, readwrite) double latitude;

@property(nonatomic, readwrite) BOOL hasLatitude;
@property(nonatomic, readwrite) double longitude;

@property(nonatomic, readwrite) BOOL hasLongitude;
@property(nonatomic, readwrite) int32_t team;

@property(nonatomic, readwrite) BOOL hasTeam;
@property(nonatomic, readwrite) int32_t guardPokemonId;

@property(nonatomic, readwrite) BOOL hasGuardPokemonId;
@property(nonatomic, readwrite) int32_t guardPokemonLevel;

@property(nonatomic, readwrite) BOOL hasGuardPokemonLevel;
@property(nonatomic, readwrite) BOOL enabled;

@property(nonatomic, readwrite) BOOL hasEnabled;
/// ENUM.Holoholo.Rpc.FortType FortType = 9;
@property(nonatomic, readwrite) int32_t fortType;

@property(nonatomic, readwrite) BOOL hasFortType;
@property(nonatomic, readwrite) int64_t gymPoints;

@property(nonatomic, readwrite) BOOL hasGymPoints;
@property(nonatomic, readwrite) BOOL isInBattle;

@property(nonatomic, readwrite) BOOL hasIsInBattle;
/// Might represent the type of item applied to the pokestop, right now only lures can be applied
@property(nonatomic, readwrite, copy, null_resettable) NSData *activePortModifier;
/// Test to see if @c activePortModifier has been set.
@property(nonatomic, readwrite) BOOL hasActivePortModifier;

@property(nonatomic, readwrite, strong, null_resettable) ResponseEnvelop_FortLureInfoProto *lureInfo;
/// Test to see if @c lureInfo has been set.
@property(nonatomic, readwrite) BOOL hasLureInfo;

@property(nonatomic, readwrite) int64_t cooldownCompleteMs;

@property(nonatomic, readwrite) BOOL hasCooldownCompleteMs;
/// ENUM.Holoholo.Rpc.Sponsor.Types.FortSponsor.Sponsor Sponsor = 15;
@property(nonatomic, readwrite) int32_t sponsor;

@property(nonatomic, readwrite) BOOL hasSponsor;
/// ENUM.Holoholo.Rpc.RenderingType.Types.FortRenderingType.RenderingType RenderingType = 16;
@property(nonatomic, readwrite) int32_t renderingType;

@property(nonatomic, readwrite) BOOL hasRenderingType;
@end

#pragma mark - ResponseEnvelop_FortLureInfoProto

typedef GPB_ENUM(ResponseEnvelop_FortLureInfoProto_FieldNumber) {
  ResponseEnvelop_FortLureInfoProto_FieldNumber_FortId = 1,
  ResponseEnvelop_FortLureInfoProto_FieldNumber_Unknown2 = 2,
  ResponseEnvelop_FortLureInfoProto_FieldNumber_ActivePokemonId = 3,
  ResponseEnvelop_FortLureInfoProto_FieldNumber_LureExpiresTimestampMs = 4,
  ResponseEnvelop_FortLureInfoProto_FieldNumber_DeployerPlayerCodename = 5,
};

@interface ResponseEnvelop_FortLureInfoProto : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *fortId;
/// Test to see if @c fortId has been set.
@property(nonatomic, readwrite) BOOL hasFortId;

@property(nonatomic, readwrite) double unknown2;

@property(nonatomic, readwrite) BOOL hasUnknown2;
@property(nonatomic, readwrite) int32_t activePokemonId;

@property(nonatomic, readwrite) BOOL hasActivePokemonId;
@property(nonatomic, readwrite) int64_t lureExpiresTimestampMs;

@property(nonatomic, readwrite) BOOL hasLureExpiresTimestampMs;
@property(nonatomic, readwrite, copy, null_resettable) NSString *deployerPlayerCodename;
/// Test to see if @c deployerPlayerCodename has been set.
@property(nonatomic, readwrite) BOOL hasDeployerPlayerCodename;

@end

#pragma mark - ResponseEnvelop_PokemonSummaryFortProto

typedef GPB_ENUM(ResponseEnvelop_PokemonSummaryFortProto_FieldNumber) {
  ResponseEnvelop_PokemonSummaryFortProto_FieldNumber_FortSummaryId = 1,
  ResponseEnvelop_PokemonSummaryFortProto_FieldNumber_LastModifiedMs = 2,
  ResponseEnvelop_PokemonSummaryFortProto_FieldNumber_Latitude = 3,
  ResponseEnvelop_PokemonSummaryFortProto_FieldNumber_Longitude = 4,
};

@interface ResponseEnvelop_PokemonSummaryFortProto : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *fortSummaryId;
/// Test to see if @c fortSummaryId has been set.
@property(nonatomic, readwrite) BOOL hasFortSummaryId;

@property(nonatomic, readwrite) int64_t lastModifiedMs;

@property(nonatomic, readwrite) BOOL hasLastModifiedMs;
@property(nonatomic, readwrite) double latitude;

@property(nonatomic, readwrite) BOOL hasLatitude;
@property(nonatomic, readwrite) double longitude;

@property(nonatomic, readwrite) BOOL hasLongitude;
@end

#pragma mark - ResponseEnvelop_ClientSpawnPointProto

typedef GPB_ENUM(ResponseEnvelop_ClientSpawnPointProto_FieldNumber) {
  ResponseEnvelop_ClientSpawnPointProto_FieldNumber_Latitude = 2,
  ResponseEnvelop_ClientSpawnPointProto_FieldNumber_Longitude = 3,
};

@interface ResponseEnvelop_ClientSpawnPointProto : GPBMessage

@property(nonatomic, readwrite) double latitude;

@property(nonatomic, readwrite) BOOL hasLatitude;
@property(nonatomic, readwrite) double longitude;

@property(nonatomic, readwrite) BOOL hasLongitude;
@end

#pragma mark - ResponseEnvelop_WildPokemonProto

typedef GPB_ENUM(ResponseEnvelop_WildPokemonProto_FieldNumber) {
  ResponseEnvelop_WildPokemonProto_FieldNumber_EncounterId = 1,
  ResponseEnvelop_WildPokemonProto_FieldNumber_LastModifiedMs = 2,
  ResponseEnvelop_WildPokemonProto_FieldNumber_Latitude = 3,
  ResponseEnvelop_WildPokemonProto_FieldNumber_Longitude = 4,
  ResponseEnvelop_WildPokemonProto_FieldNumber_SpawnPointId = 5,
  ResponseEnvelop_WildPokemonProto_FieldNumber_Pokemon = 7,
  ResponseEnvelop_WildPokemonProto_FieldNumber_TimeTillHiddenMs = 11,
};

@interface ResponseEnvelop_WildPokemonProto : GPBMessage

@property(nonatomic, readwrite) uint64_t encounterId;

@property(nonatomic, readwrite) BOOL hasEncounterId;
@property(nonatomic, readwrite) int64_t lastModifiedMs;

@property(nonatomic, readwrite) BOOL hasLastModifiedMs;
@property(nonatomic, readwrite) double latitude;

@property(nonatomic, readwrite) BOOL hasLatitude;
@property(nonatomic, readwrite) double longitude;

@property(nonatomic, readwrite) BOOL hasLongitude;
@property(nonatomic, readwrite, copy, null_resettable) NSString *spawnPointId;
/// Test to see if @c spawnPointId has been set.
@property(nonatomic, readwrite) BOOL hasSpawnPointId;

@property(nonatomic, readwrite, strong, null_resettable) ResponseEnvelop_WildPokemonProto_Pokemon *pokemon;
/// Test to see if @c pokemon has been set.
@property(nonatomic, readwrite) BOOL hasPokemon;

@property(nonatomic, readwrite) int32_t timeTillHiddenMs;

@property(nonatomic, readwrite) BOOL hasTimeTillHiddenMs;
@end

#pragma mark - ResponseEnvelop_WildPokemonProto_Pokemon

typedef GPB_ENUM(ResponseEnvelop_WildPokemonProto_Pokemon_FieldNumber) {
  ResponseEnvelop_WildPokemonProto_Pokemon_FieldNumber_Id_p = 1,
  ResponseEnvelop_WildPokemonProto_Pokemon_FieldNumber_PokemonId = 2,
};

@interface ResponseEnvelop_WildPokemonProto_Pokemon : GPBMessage

@property(nonatomic, readwrite) uint64_t id_p;

@property(nonatomic, readwrite) BOOL hasId_p;
@property(nonatomic, readwrite) int32_t pokemonId;

@property(nonatomic, readwrite) BOOL hasPokemonId;
@end

#pragma mark - ResponseEnvelop_NearbyPokemonProto

typedef GPB_ENUM(ResponseEnvelop_NearbyPokemonProto_FieldNumber) {
  ResponseEnvelop_NearbyPokemonProto_FieldNumber_PokedexNumber = 1,
  ResponseEnvelop_NearbyPokemonProto_FieldNumber_DistanceMeters = 2,
  ResponseEnvelop_NearbyPokemonProto_FieldNumber_EncounterId = 3,
};

@interface ResponseEnvelop_NearbyPokemonProto : GPBMessage

@property(nonatomic, readwrite) int32_t pokedexNumber;

@property(nonatomic, readwrite) BOOL hasPokedexNumber;
@property(nonatomic, readwrite) float distanceMeters;

@property(nonatomic, readwrite) BOOL hasDistanceMeters;
@property(nonatomic, readwrite) uint64_t encounterId;

@property(nonatomic, readwrite) BOOL hasEncounterId;
@end

#pragma mark - ResponseEnvelop_ProfilePayload

typedef GPB_ENUM(ResponseEnvelop_ProfilePayload_FieldNumber) {
  ResponseEnvelop_ProfilePayload_FieldNumber_Unknown1 = 1,
  ResponseEnvelop_ProfilePayload_FieldNumber_Profile = 2,
};

@interface ResponseEnvelop_ProfilePayload : GPBMessage

@property(nonatomic, readwrite) int32_t unknown1;

@property(nonatomic, readwrite) BOOL hasUnknown1;
@property(nonatomic, readwrite, strong, null_resettable) ResponseEnvelop_Profile *profile;
/// Test to see if @c profile has been set.
@property(nonatomic, readwrite) BOOL hasProfile;

@end

#pragma mark - ResponseEnvelop_Profile

typedef GPB_ENUM(ResponseEnvelop_Profile_FieldNumber) {
  ResponseEnvelop_Profile_FieldNumber_CreationTime = 1,
  ResponseEnvelop_Profile_FieldNumber_Username = 2,
  ResponseEnvelop_Profile_FieldNumber_Team = 5,
  ResponseEnvelop_Profile_FieldNumber_Tutorial = 7,
  ResponseEnvelop_Profile_FieldNumber_Avatar = 8,
  ResponseEnvelop_Profile_FieldNumber_PokeStorage = 9,
  ResponseEnvelop_Profile_FieldNumber_ItemStorage = 10,
  ResponseEnvelop_Profile_FieldNumber_DailyBonus = 11,
  ResponseEnvelop_Profile_FieldNumber_Unknown12 = 12,
  ResponseEnvelop_Profile_FieldNumber_Unknown13 = 13,
  ResponseEnvelop_Profile_FieldNumber_CurrencyArray = 14,
};

@interface ResponseEnvelop_Profile : GPBMessage

@property(nonatomic, readwrite) int64_t creationTime;

@property(nonatomic, readwrite) BOOL hasCreationTime;
@property(nonatomic, readwrite, copy, null_resettable) NSString *username;
/// Test to see if @c username has been set.
@property(nonatomic, readwrite) BOOL hasUsername;

@property(nonatomic, readwrite) int32_t team;

@property(nonatomic, readwrite) BOOL hasTeam;
@property(nonatomic, readwrite, copy, null_resettable) NSData *tutorial;
/// Test to see if @c tutorial has been set.
@property(nonatomic, readwrite) BOOL hasTutorial;

@property(nonatomic, readwrite, strong, null_resettable) ResponseEnvelop_Profile_AvatarDetails *avatar;
/// Test to see if @c avatar has been set.
@property(nonatomic, readwrite) BOOL hasAvatar;

@property(nonatomic, readwrite) int32_t pokeStorage;

@property(nonatomic, readwrite) BOOL hasPokeStorage;
@property(nonatomic, readwrite) int32_t itemStorage;

@property(nonatomic, readwrite) BOOL hasItemStorage;
@property(nonatomic, readwrite, strong, null_resettable) ResponseEnvelop_Profile_DailyBonus *dailyBonus;
/// Test to see if @c dailyBonus has been set.
@property(nonatomic, readwrite) BOOL hasDailyBonus;

@property(nonatomic, readwrite, copy, null_resettable) NSData *unknown12;
/// Test to see if @c unknown12 has been set.
@property(nonatomic, readwrite) BOOL hasUnknown12;

@property(nonatomic, readwrite, copy, null_resettable) NSData *unknown13;
/// Test to see if @c unknown13 has been set.
@property(nonatomic, readwrite) BOOL hasUnknown13;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<ResponseEnvelop_Profile_Currency*> *currencyArray;
/// The number of items in @c currencyArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger currencyArray_Count;

@end

#pragma mark - ResponseEnvelop_Profile_AvatarDetails

typedef GPB_ENUM(ResponseEnvelop_Profile_AvatarDetails_FieldNumber) {
  ResponseEnvelop_Profile_AvatarDetails_FieldNumber_Unknown2 = 2,
  ResponseEnvelop_Profile_AvatarDetails_FieldNumber_Unknown3 = 3,
  ResponseEnvelop_Profile_AvatarDetails_FieldNumber_Unknown9 = 9,
  ResponseEnvelop_Profile_AvatarDetails_FieldNumber_Unknown10 = 10,
};

@interface ResponseEnvelop_Profile_AvatarDetails : GPBMessage

@property(nonatomic, readwrite) int32_t unknown2;

@property(nonatomic, readwrite) BOOL hasUnknown2;
@property(nonatomic, readwrite) int32_t unknown3;

@property(nonatomic, readwrite) BOOL hasUnknown3;
@property(nonatomic, readwrite) int32_t unknown9;

@property(nonatomic, readwrite) BOOL hasUnknown9;
@property(nonatomic, readwrite) int32_t unknown10;

@property(nonatomic, readwrite) BOOL hasUnknown10;
@end

#pragma mark - ResponseEnvelop_Profile_DailyBonus

typedef GPB_ENUM(ResponseEnvelop_Profile_DailyBonus_FieldNumber) {
  ResponseEnvelop_Profile_DailyBonus_FieldNumber_NextCollectTimestampMs = 1,
  ResponseEnvelop_Profile_DailyBonus_FieldNumber_NextDefenderBonusCollectTimestampMs = 2,
};

@interface ResponseEnvelop_Profile_DailyBonus : GPBMessage

@property(nonatomic, readwrite) int64_t nextCollectTimestampMs;

@property(nonatomic, readwrite) BOOL hasNextCollectTimestampMs;
@property(nonatomic, readwrite) int64_t nextDefenderBonusCollectTimestampMs;

@property(nonatomic, readwrite) BOOL hasNextDefenderBonusCollectTimestampMs;
@end

#pragma mark - ResponseEnvelop_Profile_Currency

typedef GPB_ENUM(ResponseEnvelop_Profile_Currency_FieldNumber) {
  ResponseEnvelop_Profile_Currency_FieldNumber_Type = 1,
  ResponseEnvelop_Profile_Currency_FieldNumber_Amount = 2,
};

@interface ResponseEnvelop_Profile_Currency : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *type;
/// Test to see if @c type has been set.
@property(nonatomic, readwrite) BOOL hasType;

@property(nonatomic, readwrite) int32_t amount;

@property(nonatomic, readwrite) BOOL hasAmount;
@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
