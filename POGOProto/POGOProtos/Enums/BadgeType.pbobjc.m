// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Enums/BadgeType.proto

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

 #import "POGOProtos/Enums/BadgeType.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOBadgeTypeRoot

@implementation POGOBadgeTypeRoot

@end

#pragma mark - Enum POGOBadgeType

GPBEnumDescriptor *POGOBadgeType_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "BadgeUnset\000BadgeTravelKm\000BadgePokedexEnt"
        "ries\000BadgeCaptureTotal\000BadgeDefeatedFort"
        "\000BadgeEvolvedTotal\000BadgeHatchedTotal\000Bad"
        "geEncounteredTotal\000BadgePokestopsVisited"
        "\000BadgeUniquePokestops\000BadgePokeballThrow"
        "n\000BadgeBigMagikarp\000BadgeDeployedTotal\000Ba"
        "dgeBattleAttackWon\000BadgeBattleTrainingWo"
        "n\000BadgeBattleDefendWon\000BadgePrestigeRais"
        "ed\000BadgePrestigeDropped\000BadgeTypeNormal\000"
        "BadgeTypeFighting\000BadgeTypeFlying\000BadgeT"
        "ypePoison\000BadgeTypeGround\000BadgeTypeRock\000"
        "BadgeTypeBug\000BadgeTypeGhost\000BadgeTypeSte"
        "el\000BadgeTypeFire\000BadgeTypeWater\000BadgeTyp"
        "eGrass\000BadgeTypeElectric\000BadgeTypePsychi"
        "c\000BadgeTypeIce\000BadgeTypeDragon\000BadgeType"
        "Dark\000BadgeTypeFairy\000BadgeSmallRattata\000Ba"
        "dgePikachu\000";
    static const int32_t values[] = {
        POGOBadgeType_BadgeUnset,
        POGOBadgeType_BadgeTravelKm,
        POGOBadgeType_BadgePokedexEntries,
        POGOBadgeType_BadgeCaptureTotal,
        POGOBadgeType_BadgeDefeatedFort,
        POGOBadgeType_BadgeEvolvedTotal,
        POGOBadgeType_BadgeHatchedTotal,
        POGOBadgeType_BadgeEncounteredTotal,
        POGOBadgeType_BadgePokestopsVisited,
        POGOBadgeType_BadgeUniquePokestops,
        POGOBadgeType_BadgePokeballThrown,
        POGOBadgeType_BadgeBigMagikarp,
        POGOBadgeType_BadgeDeployedTotal,
        POGOBadgeType_BadgeBattleAttackWon,
        POGOBadgeType_BadgeBattleTrainingWon,
        POGOBadgeType_BadgeBattleDefendWon,
        POGOBadgeType_BadgePrestigeRaised,
        POGOBadgeType_BadgePrestigeDropped,
        POGOBadgeType_BadgeTypeNormal,
        POGOBadgeType_BadgeTypeFighting,
        POGOBadgeType_BadgeTypeFlying,
        POGOBadgeType_BadgeTypePoison,
        POGOBadgeType_BadgeTypeGround,
        POGOBadgeType_BadgeTypeRock,
        POGOBadgeType_BadgeTypeBug,
        POGOBadgeType_BadgeTypeGhost,
        POGOBadgeType_BadgeTypeSteel,
        POGOBadgeType_BadgeTypeFire,
        POGOBadgeType_BadgeTypeWater,
        POGOBadgeType_BadgeTypeGrass,
        POGOBadgeType_BadgeTypeElectric,
        POGOBadgeType_BadgeTypePsychic,
        POGOBadgeType_BadgeTypeIce,
        POGOBadgeType_BadgeTypeDragon,
        POGOBadgeType_BadgeTypeDark,
        POGOBadgeType_BadgeTypeFairy,
        POGOBadgeType_BadgeSmallRattata,
        POGOBadgeType_BadgePikachu,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOBadgeType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOBadgeType_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOBadgeType_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOBadgeType_BadgeUnset:
    case POGOBadgeType_BadgeTravelKm:
    case POGOBadgeType_BadgePokedexEntries:
    case POGOBadgeType_BadgeCaptureTotal:
    case POGOBadgeType_BadgeDefeatedFort:
    case POGOBadgeType_BadgeEvolvedTotal:
    case POGOBadgeType_BadgeHatchedTotal:
    case POGOBadgeType_BadgeEncounteredTotal:
    case POGOBadgeType_BadgePokestopsVisited:
    case POGOBadgeType_BadgeUniquePokestops:
    case POGOBadgeType_BadgePokeballThrown:
    case POGOBadgeType_BadgeBigMagikarp:
    case POGOBadgeType_BadgeDeployedTotal:
    case POGOBadgeType_BadgeBattleAttackWon:
    case POGOBadgeType_BadgeBattleTrainingWon:
    case POGOBadgeType_BadgeBattleDefendWon:
    case POGOBadgeType_BadgePrestigeRaised:
    case POGOBadgeType_BadgePrestigeDropped:
    case POGOBadgeType_BadgeTypeNormal:
    case POGOBadgeType_BadgeTypeFighting:
    case POGOBadgeType_BadgeTypeFlying:
    case POGOBadgeType_BadgeTypePoison:
    case POGOBadgeType_BadgeTypeGround:
    case POGOBadgeType_BadgeTypeRock:
    case POGOBadgeType_BadgeTypeBug:
    case POGOBadgeType_BadgeTypeGhost:
    case POGOBadgeType_BadgeTypeSteel:
    case POGOBadgeType_BadgeTypeFire:
    case POGOBadgeType_BadgeTypeWater:
    case POGOBadgeType_BadgeTypeGrass:
    case POGOBadgeType_BadgeTypeElectric:
    case POGOBadgeType_BadgeTypePsychic:
    case POGOBadgeType_BadgeTypeIce:
    case POGOBadgeType_BadgeTypeDragon:
    case POGOBadgeType_BadgeTypeDark:
    case POGOBadgeType_BadgeTypeFairy:
    case POGOBadgeType_BadgeSmallRattata:
    case POGOBadgeType_BadgePikachu:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
