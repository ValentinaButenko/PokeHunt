// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/UseItemXpBoostResponse.proto

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

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum POGOUseItemXpBoostResponse_Result

typedef GPB_ENUM(POGOUseItemXpBoostResponse_Result) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  POGOUseItemXpBoostResponse_Result_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  POGOUseItemXpBoostResponse_Result_Unset = 0,
  POGOUseItemXpBoostResponse_Result_Success = 1,
  POGOUseItemXpBoostResponse_Result_ErrorInvalidItemType = 2,
  POGOUseItemXpBoostResponse_Result_ErrorXpBoostAlreadyActive = 3,
  POGOUseItemXpBoostResponse_Result_ErrorNoItemsRemaining = 4,
  POGOUseItemXpBoostResponse_Result_ErrorLocationUnset = 5,
};

GPBEnumDescriptor *POGOUseItemXpBoostResponse_Result_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL POGOUseItemXpBoostResponse_Result_IsValidValue(int32_t value);

#pragma mark - POGOUseItemXpBoostResponseRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOUseItemXpBoostResponseRoot : GPBRootObject
@end

#pragma mark - POGOUseItemXpBoostResponse

typedef GPB_ENUM(POGOUseItemXpBoostResponse_FieldNumber) {
  POGOUseItemXpBoostResponse_FieldNumber_Result = 1,
  POGOUseItemXpBoostResponse_FieldNumber_AppliedItems = 2,
};

@interface POGOUseItemXpBoostResponse : GPBMessage

@property(nonatomic, readwrite) POGOUseItemXpBoostResponse_Result result;

@property(nonatomic, readwrite, strong, null_resettable) POGOAppliedItems *appliedItems;
/// Test to see if @c appliedItems has been set.
@property(nonatomic, readwrite) BOOL hasAppliedItems;

@end

/// Fetches the raw value of a @c POGOUseItemXpBoostResponse's @c result property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOUseItemXpBoostResponse_Result_RawValue(POGOUseItemXpBoostResponse *message);
/// Sets the raw value of an @c POGOUseItemXpBoostResponse's @c result property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOUseItemXpBoostResponse_Result_RawValue(POGOUseItemXpBoostResponse *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)