// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Requests/Messages/UseItemPotionMessage.proto

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

GPB_ENUM_FWD_DECLARE(POGOItemId);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - POGOUseItemPotionMessageRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOUseItemPotionMessageRoot : GPBRootObject
@end

#pragma mark - POGOUseItemPotionMessage

typedef GPB_ENUM(POGOUseItemPotionMessage_FieldNumber) {
  POGOUseItemPotionMessage_FieldNumber_ItemId = 1,
  POGOUseItemPotionMessage_FieldNumber_PokemonId = 2,
};

@interface POGOUseItemPotionMessage : GPBMessage

@property(nonatomic, readwrite) enum POGOItemId itemId;

@property(nonatomic, readwrite) uint64_t pokemonId;

@end

/// Fetches the raw value of a @c POGOUseItemPotionMessage's @c itemId property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOUseItemPotionMessage_ItemId_RawValue(POGOUseItemPotionMessage *message);
/// Sets the raw value of an @c POGOUseItemPotionMessage's @c itemId property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOUseItemPotionMessage_ItemId_RawValue(POGOUseItemPotionMessage *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
