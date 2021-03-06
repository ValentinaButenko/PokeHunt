// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Responses/CheckAwardedBadgesResponse.proto

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

NS_ASSUME_NONNULL_BEGIN

#pragma mark - POGOCheckAwardedBadgesResponseRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOCheckAwardedBadgesResponseRoot : GPBRootObject
@end

#pragma mark - POGOCheckAwardedBadgesResponse

typedef GPB_ENUM(POGOCheckAwardedBadgesResponse_FieldNumber) {
  POGOCheckAwardedBadgesResponse_FieldNumber_Success = 1,
  POGOCheckAwardedBadgesResponse_FieldNumber_AwardedBadgesArray = 2,
  POGOCheckAwardedBadgesResponse_FieldNumber_AwardedBadgeLevelsArray = 3,
};

@interface POGOCheckAwardedBadgesResponse : GPBMessage

@property(nonatomic, readwrite) BOOL success;

// |awardedBadgesArray| contains |POGOBadgeType|
@property(nonatomic, readwrite, strong, null_resettable) GPBEnumArray *awardedBadgesArray;
/// The number of items in @c awardedBadgesArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger awardedBadgesArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) GPBInt32Array *awardedBadgeLevelsArray;
/// The number of items in @c awardedBadgeLevelsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger awardedBadgeLevelsArray_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
