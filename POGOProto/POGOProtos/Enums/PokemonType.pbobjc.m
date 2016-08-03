// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Enums/PokemonType.proto

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

 #import "POGOProtos/Enums/PokemonType.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOPokemonTypeRoot

@implementation POGOPokemonTypeRoot

@end

#pragma mark - Enum POGOPokemonType

GPBEnumDescriptor *POGOPokemonType_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "PokemonTypeNone\000PokemonTypeNormal\000Pokemo"
        "nTypeFighting\000PokemonTypeFlying\000PokemonT"
        "ypePoison\000PokemonTypeGround\000PokemonTypeR"
        "ock\000PokemonTypeBug\000PokemonTypeGhost\000Poke"
        "monTypeSteel\000PokemonTypeFire\000PokemonType"
        "Water\000PokemonTypeGrass\000PokemonTypeElectr"
        "ic\000PokemonTypePsychic\000PokemonTypeIce\000Pok"
        "emonTypeDragon\000PokemonTypeDark\000PokemonTy"
        "peFairy\000";
    static const int32_t values[] = {
        POGOPokemonType_PokemonTypeNone,
        POGOPokemonType_PokemonTypeNormal,
        POGOPokemonType_PokemonTypeFighting,
        POGOPokemonType_PokemonTypeFlying,
        POGOPokemonType_PokemonTypePoison,
        POGOPokemonType_PokemonTypeGround,
        POGOPokemonType_PokemonTypeRock,
        POGOPokemonType_PokemonTypeBug,
        POGOPokemonType_PokemonTypeGhost,
        POGOPokemonType_PokemonTypeSteel,
        POGOPokemonType_PokemonTypeFire,
        POGOPokemonType_PokemonTypeWater,
        POGOPokemonType_PokemonTypeGrass,
        POGOPokemonType_PokemonTypeElectric,
        POGOPokemonType_PokemonTypePsychic,
        POGOPokemonType_PokemonTypeIce,
        POGOPokemonType_PokemonTypeDragon,
        POGOPokemonType_PokemonTypeDark,
        POGOPokemonType_PokemonTypeFairy,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOPokemonType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOPokemonType_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOPokemonType_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOPokemonType_PokemonTypeNone:
    case POGOPokemonType_PokemonTypeNormal:
    case POGOPokemonType_PokemonTypeFighting:
    case POGOPokemonType_PokemonTypeFlying:
    case POGOPokemonType_PokemonTypePoison:
    case POGOPokemonType_PokemonTypeGround:
    case POGOPokemonType_PokemonTypeRock:
    case POGOPokemonType_PokemonTypeBug:
    case POGOPokemonType_PokemonTypeGhost:
    case POGOPokemonType_PokemonTypeSteel:
    case POGOPokemonType_PokemonTypeFire:
    case POGOPokemonType_PokemonTypeWater:
    case POGOPokemonType_PokemonTypeGrass:
    case POGOPokemonType_PokemonTypeElectric:
    case POGOPokemonType_PokemonTypePsychic:
    case POGOPokemonType_PokemonTypeIce:
    case POGOPokemonType_PokemonTypeDragon:
    case POGOPokemonType_PokemonTypeDark:
    case POGOPokemonType_PokemonTypeFairy:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)