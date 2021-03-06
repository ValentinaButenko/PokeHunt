// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/UseIncenseResponse.proto

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

@class POGOAppliedItem;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum POGOUseIncenseResponse_Result

typedef GPB_ENUM(POGOUseIncenseResponse_Result) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  POGOUseIncenseResponse_Result_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  POGOUseIncenseResponse_Result_Unknown = 0,
  POGOUseIncenseResponse_Result_Success = 1,
  POGOUseIncenseResponse_Result_IncenseAlreadyActive = 2,
  POGOUseIncenseResponse_Result_NoneInInventory = 3,
  POGOUseIncenseResponse_Result_LocationUnset = 4,
};

GPBEnumDescriptor *POGOUseIncenseResponse_Result_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL POGOUseIncenseResponse_Result_IsValidValue(int32_t value);

#pragma mark - POGOUseIncenseResponseRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOUseIncenseResponseRoot : GPBRootObject
@end

#pragma mark - POGOUseIncenseResponse

typedef GPB_ENUM(POGOUseIncenseResponse_FieldNumber) {
  POGOUseIncenseResponse_FieldNumber_Result = 1,
  POGOUseIncenseResponse_FieldNumber_AppliedIncense = 2,
};

@interface POGOUseIncenseResponse : GPBMessage

@property(nonatomic, readwrite) POGOUseIncenseResponse_Result result;

@property(nonatomic, readwrite, strong, null_resettable) POGOAppliedItem *appliedIncense;
/// Test to see if @c appliedIncense has been set.
@property(nonatomic, readwrite) BOOL hasAppliedIncense;

@end

/// Fetches the raw value of a @c POGOUseIncenseResponse's @c result property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOUseIncenseResponse_Result_RawValue(POGOUseIncenseResponse *message);
/// Sets the raw value of an @c POGOUseIncenseResponse's @c result property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOUseIncenseResponse_Result_RawValue(POGOUseIncenseResponse *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
