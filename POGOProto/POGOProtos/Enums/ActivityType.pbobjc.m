// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Enums/ActivityType.proto

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

 #import "POGOProtos/Enums/ActivityType.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOActivityTypeRoot

@implementation POGOActivityTypeRoot

@end

#pragma mark - Enum POGOActivityType

GPBEnumDescriptor *POGOActivityType_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "ActivityUnknown\000ActivityCatchPokemon\000Act"
        "ivityCatchLegendPokemon\000ActivityFleePoke"
        "mon\000ActivityDefeatFort\000ActivityEvolvePok"
        "emon\000ActivityHatchEgg\000ActivityWalkKm\000Act"
        "ivityPokedexEntryNew\000ActivityCatchFirstT"
        "hrow\000ActivityCatchNiceThrow\000ActivityCatc"
        "hGreatThrow\000ActivityCatchExcellentThrow\000"
        "ActivityCatchCurveball\000ActivityCatchFirs"
        "tCatchOfDay\000ActivityCatchMilestone\000Activ"
        "ityTrainPokemon\000ActivitySearchFort\000Activ"
        "ityReleasePokemon\000ActivityHatchEggSmallB"
        "onus\000ActivityHatchEggMediumBonus\000Activit"
        "yHatchEggLargeBonus\000ActivityDefeatGymDef"
        "ender\000ActivityDefeatGymLeader\000";
    static const int32_t values[] = {
        POGOActivityType_ActivityUnknown,
        POGOActivityType_ActivityCatchPokemon,
        POGOActivityType_ActivityCatchLegendPokemon,
        POGOActivityType_ActivityFleePokemon,
        POGOActivityType_ActivityDefeatFort,
        POGOActivityType_ActivityEvolvePokemon,
        POGOActivityType_ActivityHatchEgg,
        POGOActivityType_ActivityWalkKm,
        POGOActivityType_ActivityPokedexEntryNew,
        POGOActivityType_ActivityCatchFirstThrow,
        POGOActivityType_ActivityCatchNiceThrow,
        POGOActivityType_ActivityCatchGreatThrow,
        POGOActivityType_ActivityCatchExcellentThrow,
        POGOActivityType_ActivityCatchCurveball,
        POGOActivityType_ActivityCatchFirstCatchOfDay,
        POGOActivityType_ActivityCatchMilestone,
        POGOActivityType_ActivityTrainPokemon,
        POGOActivityType_ActivitySearchFort,
        POGOActivityType_ActivityReleasePokemon,
        POGOActivityType_ActivityHatchEggSmallBonus,
        POGOActivityType_ActivityHatchEggMediumBonus,
        POGOActivityType_ActivityHatchEggLargeBonus,
        POGOActivityType_ActivityDefeatGymDefender,
        POGOActivityType_ActivityDefeatGymLeader,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOActivityType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOActivityType_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOActivityType_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOActivityType_ActivityUnknown:
    case POGOActivityType_ActivityCatchPokemon:
    case POGOActivityType_ActivityCatchLegendPokemon:
    case POGOActivityType_ActivityFleePokemon:
    case POGOActivityType_ActivityDefeatFort:
    case POGOActivityType_ActivityEvolvePokemon:
    case POGOActivityType_ActivityHatchEgg:
    case POGOActivityType_ActivityWalkKm:
    case POGOActivityType_ActivityPokedexEntryNew:
    case POGOActivityType_ActivityCatchFirstThrow:
    case POGOActivityType_ActivityCatchNiceThrow:
    case POGOActivityType_ActivityCatchGreatThrow:
    case POGOActivityType_ActivityCatchExcellentThrow:
    case POGOActivityType_ActivityCatchCurveball:
    case POGOActivityType_ActivityCatchFirstCatchOfDay:
    case POGOActivityType_ActivityCatchMilestone:
    case POGOActivityType_ActivityTrainPokemon:
    case POGOActivityType_ActivitySearchFort:
    case POGOActivityType_ActivityReleasePokemon:
    case POGOActivityType_ActivityHatchEggSmallBonus:
    case POGOActivityType_ActivityHatchEggMediumBonus:
    case POGOActivityType_ActivityHatchEggLargeBonus:
    case POGOActivityType_ActivityDefeatGymDefender:
    case POGOActivityType_ActivityDefeatGymLeader:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
