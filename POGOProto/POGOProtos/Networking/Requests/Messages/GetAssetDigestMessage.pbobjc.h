// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Requests/Messages/GetAssetDigestMessage.proto

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

GPB_ENUM_FWD_DECLARE(POGOPlatform);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - POGOGetAssetDigestMessageRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOGetAssetDigestMessageRoot : GPBRootObject
@end

#pragma mark - POGOGetAssetDigestMessage

typedef GPB_ENUM(POGOGetAssetDigestMessage_FieldNumber) {
  POGOGetAssetDigestMessage_FieldNumber_Platform = 1,
  POGOGetAssetDigestMessage_FieldNumber_DeviceManufacturer = 2,
  POGOGetAssetDigestMessage_FieldNumber_DeviceModel = 3,
  POGOGetAssetDigestMessage_FieldNumber_Locale = 4,
  POGOGetAssetDigestMessage_FieldNumber_AppVersion = 5,
};

@interface POGOGetAssetDigestMessage : GPBMessage

@property(nonatomic, readwrite) enum POGOPlatform platform;

@property(nonatomic, readwrite, copy, null_resettable) NSString *deviceManufacturer;

@property(nonatomic, readwrite, copy, null_resettable) NSString *deviceModel;

@property(nonatomic, readwrite, copy, null_resettable) NSString *locale;

@property(nonatomic, readwrite) uint32_t appVersion;

@end

/// Fetches the raw value of a @c POGOGetAssetDigestMessage's @c platform property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOGetAssetDigestMessage_Platform_RawValue(POGOGetAssetDigestMessage *message);
/// Sets the raw value of an @c POGOGetAssetDigestMessage's @c platform property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOGetAssetDigestMessage_Platform_RawValue(POGOGetAssetDigestMessage *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
