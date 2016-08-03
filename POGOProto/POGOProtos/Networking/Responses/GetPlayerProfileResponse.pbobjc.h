// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/GetPlayerProfileResponse.proto

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

@class POGOPlayerBadge;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum POGOGetPlayerProfileResponse_Result

typedef GPB_ENUM(POGOGetPlayerProfileResponse_Result) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  POGOGetPlayerProfileResponse_Result_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  POGOGetPlayerProfileResponse_Result_Unset = 0,
  POGOGetPlayerProfileResponse_Result_Success = 1,
};

GPBEnumDescriptor *POGOGetPlayerProfileResponse_Result_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL POGOGetPlayerProfileResponse_Result_IsValidValue(int32_t value);

#pragma mark - POGOGetPlayerProfileResponseRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOGetPlayerProfileResponseRoot : GPBRootObject
@end

#pragma mark - POGOGetPlayerProfileResponse

typedef GPB_ENUM(POGOGetPlayerProfileResponse_FieldNumber) {
  POGOGetPlayerProfileResponse_FieldNumber_Result = 1,
  POGOGetPlayerProfileResponse_FieldNumber_StartTime = 2,
  POGOGetPlayerProfileResponse_FieldNumber_BadgesArray = 3,
};

@interface POGOGetPlayerProfileResponse : GPBMessage

@property(nonatomic, readwrite) POGOGetPlayerProfileResponse_Result result;

@property(nonatomic, readwrite) int64_t startTime;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<POGOPlayerBadge*> *badgesArray;
/// The number of items in @c badgesArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger badgesArray_Count;

@end

/// Fetches the raw value of a @c POGOGetPlayerProfileResponse's @c result property, even
/// if the value was not defined by the enum at the time the code was generated.
int32_t POGOGetPlayerProfileResponse_Result_RawValue(POGOGetPlayerProfileResponse *message);
/// Sets the raw value of an @c POGOGetPlayerProfileResponse's @c result property, allowing
/// it to be set to a value that was not defined by the enum at the time the code
/// was generated.
void SetPOGOGetPlayerProfileResponse_Result_RawValue(POGOGetPlayerProfileResponse *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)