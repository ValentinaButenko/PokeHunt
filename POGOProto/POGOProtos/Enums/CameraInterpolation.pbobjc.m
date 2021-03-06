// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Enums/CameraInterpolation.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "POGOProtos/Enums/CameraInterpolation.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOCameraInterpolationRoot

@implementation POGOCameraInterpolationRoot

@end

#pragma mark - Enum POGOCameraInterpolation

GPBEnumDescriptor *POGOCameraInterpolation_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "CamInterpCut\000CamInterpLinear\000CamInterpSm"
        "ooth\000CamInterpSmoothRotLinearMove\000CamInt"
        "erpDepends\000";
    static const int32_t values[] = {
        POGOCameraInterpolation_CamInterpCut,
        POGOCameraInterpolation_CamInterpLinear,
        POGOCameraInterpolation_CamInterpSmooth,
        POGOCameraInterpolation_CamInterpSmoothRotLinearMove,
        POGOCameraInterpolation_CamInterpDepends,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOCameraInterpolation)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOCameraInterpolation_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOCameraInterpolation_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOCameraInterpolation_CamInterpCut:
    case POGOCameraInterpolation_CamInterpLinear:
    case POGOCameraInterpolation_CamInterpSmooth:
    case POGOCameraInterpolation_CamInterpSmoothRotLinearMove:
    case POGOCameraInterpolation_CamInterpDepends:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
