// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Inventory/InventoryDelta.proto

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

@class POGOInventoryItem;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - POGOInventoryDeltaRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOInventoryDeltaRoot : GPBRootObject
@end

#pragma mark - POGOInventoryDelta

typedef GPB_ENUM(POGOInventoryDelta_FieldNumber) {
  POGOInventoryDelta_FieldNumber_OriginalTimestampMs = 1,
  POGOInventoryDelta_FieldNumber_NewTimestampMs = 2,
  POGOInventoryDelta_FieldNumber_InventoryItemsArray = 3,
};

@interface POGOInventoryDelta : GPBMessage

@property(nonatomic, readwrite) int64_t originalTimestampMs;

@property(nonatomic, readwrite) int64_t newTimestampMs;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<POGOInventoryItem*> *inventoryItemsArray;
/// The number of items in @c inventoryItemsArray without causing the array to be created.
@property(nonatomic, readonly) NSUInteger inventoryItemsArray_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
