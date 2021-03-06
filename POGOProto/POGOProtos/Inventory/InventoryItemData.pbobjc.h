// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Inventory/InventoryItemData.proto

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

@class POGOAppliedItems;
@class POGOEggIncubators;
@class POGOInventoryUpgrades;
@class POGOItemData;
@class POGOPlayerCamera;
@class POGOPlayerCurrency;
@class POGOPlayerStats;
@class POGOPokedexEntry;
@class POGOPokemonData;
@class POGOPokemonFamily;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - POGOInventoryItemDataRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOInventoryItemDataRoot : GPBRootObject
@end

#pragma mark - POGOInventoryItemData

typedef GPB_ENUM(POGOInventoryItemData_FieldNumber) {
  POGOInventoryItemData_FieldNumber_PokemonData = 1,
  POGOInventoryItemData_FieldNumber_Item = 2,
  POGOInventoryItemData_FieldNumber_PokedexEntry = 3,
  POGOInventoryItemData_FieldNumber_PlayerStats = 4,
  POGOInventoryItemData_FieldNumber_PlayerCurrency = 5,
  POGOInventoryItemData_FieldNumber_PlayerCamera = 6,
  POGOInventoryItemData_FieldNumber_InventoryUpgrades = 7,
  POGOInventoryItemData_FieldNumber_AppliedItems = 8,
  POGOInventoryItemData_FieldNumber_EggIncubators = 9,
  POGOInventoryItemData_FieldNumber_PokemonFamily = 10,
};

@interface POGOInventoryItemData : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) POGOPokemonData *pokemonData;
/// Test to see if @c pokemonData has been set.
@property(nonatomic, readwrite) BOOL hasPokemonData;

@property(nonatomic, readwrite, strong, null_resettable) POGOItemData *item;
/// Test to see if @c item has been set.
@property(nonatomic, readwrite) BOOL hasItem;

@property(nonatomic, readwrite, strong, null_resettable) POGOPokedexEntry *pokedexEntry;
/// Test to see if @c pokedexEntry has been set.
@property(nonatomic, readwrite) BOOL hasPokedexEntry;

@property(nonatomic, readwrite, strong, null_resettable) POGOPlayerStats *playerStats;
/// Test to see if @c playerStats has been set.
@property(nonatomic, readwrite) BOOL hasPlayerStats;

@property(nonatomic, readwrite, strong, null_resettable) POGOPlayerCurrency *playerCurrency;
/// Test to see if @c playerCurrency has been set.
@property(nonatomic, readwrite) BOOL hasPlayerCurrency;

@property(nonatomic, readwrite, strong, null_resettable) POGOPlayerCamera *playerCamera;
/// Test to see if @c playerCamera has been set.
@property(nonatomic, readwrite) BOOL hasPlayerCamera;

@property(nonatomic, readwrite, strong, null_resettable) POGOInventoryUpgrades *inventoryUpgrades;
/// Test to see if @c inventoryUpgrades has been set.
@property(nonatomic, readwrite) BOOL hasInventoryUpgrades;

@property(nonatomic, readwrite, strong, null_resettable) POGOAppliedItems *appliedItems;
/// Test to see if @c appliedItems has been set.
@property(nonatomic, readwrite) BOOL hasAppliedItems;

@property(nonatomic, readwrite, strong, null_resettable) POGOEggIncubators *eggIncubators;
/// Test to see if @c eggIncubators has been set.
@property(nonatomic, readwrite) BOOL hasEggIncubators;

@property(nonatomic, readwrite, strong, null_resettable) POGOPokemonFamily *pokemonFamily;
/// Test to see if @c pokemonFamily has been set.
@property(nonatomic, readwrite) BOOL hasPokemonFamily;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
