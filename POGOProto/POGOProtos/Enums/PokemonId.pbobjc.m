// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Enums/PokemonId.proto

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

 #import "POGOProtos/Enums/PokemonId.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGOPokemonIdRoot

@implementation POGOPokemonIdRoot

@end

#pragma mark - Enum POGOPokemonId

GPBEnumDescriptor *POGOPokemonId_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Missingno\000Bulbasaur\000Ivysaur\000Venusaur\000Cha"
        "rmander\000Charmeleon\000Charizard\000Squirtle\000Wa"
        "rtortle\000Blastoise\000Caterpie\000Metapod\000Butte"
        "rfree\000Weedle\000Kakuna\000Beedrill\000Pidgey\000Pidg"
        "eotto\000Pidgeot\000Rattata\000Raticate\000Spearow\000F"
        "earow\000Ekans\000Arbok\000Pikachu\000Raichu\000Sandshr"
        "ew\000Sandslash\000NidoranFemale\000Nidorina\000Nido"
        "queen\000NidoranMale\000Nidorino\000Nidoking\000Clef"
        "airy\000Clefable\000Vulpix\000Ninetales\000Jigglypuf"
        "f\000Wigglytuff\000Zubat\000Golbat\000Oddish\000Gloom\000V"
        "ileplume\000Paras\000Parasect\000Venonat\000Venomoth"
        "\000Diglett\000Dugtrio\000Meowth\000Persian\000Psyduck\000"
        "Golduck\000Mankey\000Primeape\000Growlithe\000Arcani"
        "ne\000Poliwag\000Poliwhirl\000Poliwrath\000Abra\000Kada"
        "bra\000Alakazam\000Machop\000Machoke\000Machamp\000Bell"
        "sprout\000Weepinbell\000Victreebel\000Tentacool\000T"
        "entacruel\000Geodude\000Graveler\000Golem\000Ponyta\000"
        "Rapidash\000Slowpoke\000Slowbro\000Magnemite\000Magn"
        "eton\000Farfetchd\000Doduo\000Dodrio\000Seel\000Dewgong"
        "\000Grimer\000Muk\000Shellder\000Cloyster\000Gastly\000Hau"
        "nter\000Gengar\000Onix\000Drowzee\000Hypno\000Krabby\000Ki"
        "ngler\000Voltorb\000Electrode\000Exeggcute\000Exeggu"
        "tor\000Cubone\000Marowak\000Hitmonlee\000Hitmonchan\000"
        "Lickitung\000Koffing\000Weezing\000Rhyhorn\000Rhydon"
        "\000Chansey\000Tangela\000Kangaskhan\000Horsea\000Seadr"
        "a\000Goldeen\000Seaking\000Staryu\000Starmie\000MrMime\000"
        "Scyther\000Jynx\000Electabuzz\000Magmar\000Pinsir\000Ta"
        "uros\000Magikarp\000Gyarados\000Lapras\000Ditto\000Eeve"
        "e\000Vaporeon\000Jolteon\000Flareon\000Porygon\000Omany"
        "te\000Omastar\000Kabuto\000Kabutops\000Aerodactyl\000Sn"
        "orlax\000Articuno\000Zapdos\000Moltres\000Dratini\000Dr"
        "agonair\000Dragonite\000Mewtwo\000Mew\000";
    static const int32_t values[] = {
        POGOPokemonId_Missingno,
        POGOPokemonId_Bulbasaur,
        POGOPokemonId_Ivysaur,
        POGOPokemonId_Venusaur,
        POGOPokemonId_Charmander,
        POGOPokemonId_Charmeleon,
        POGOPokemonId_Charizard,
        POGOPokemonId_Squirtle,
        POGOPokemonId_Wartortle,
        POGOPokemonId_Blastoise,
        POGOPokemonId_Caterpie,
        POGOPokemonId_Metapod,
        POGOPokemonId_Butterfree,
        POGOPokemonId_Weedle,
        POGOPokemonId_Kakuna,
        POGOPokemonId_Beedrill,
        POGOPokemonId_Pidgey,
        POGOPokemonId_Pidgeotto,
        POGOPokemonId_Pidgeot,
        POGOPokemonId_Rattata,
        POGOPokemonId_Raticate,
        POGOPokemonId_Spearow,
        POGOPokemonId_Fearow,
        POGOPokemonId_Ekans,
        POGOPokemonId_Arbok,
        POGOPokemonId_Pikachu,
        POGOPokemonId_Raichu,
        POGOPokemonId_Sandshrew,
        POGOPokemonId_Sandslash,
        POGOPokemonId_NidoranFemale,
        POGOPokemonId_Nidorina,
        POGOPokemonId_Nidoqueen,
        POGOPokemonId_NidoranMale,
        POGOPokemonId_Nidorino,
        POGOPokemonId_Nidoking,
        POGOPokemonId_Clefairy,
        POGOPokemonId_Clefable,
        POGOPokemonId_Vulpix,
        POGOPokemonId_Ninetales,
        POGOPokemonId_Jigglypuff,
        POGOPokemonId_Wigglytuff,
        POGOPokemonId_Zubat,
        POGOPokemonId_Golbat,
        POGOPokemonId_Oddish,
        POGOPokemonId_Gloom,
        POGOPokemonId_Vileplume,
        POGOPokemonId_Paras,
        POGOPokemonId_Parasect,
        POGOPokemonId_Venonat,
        POGOPokemonId_Venomoth,
        POGOPokemonId_Diglett,
        POGOPokemonId_Dugtrio,
        POGOPokemonId_Meowth,
        POGOPokemonId_Persian,
        POGOPokemonId_Psyduck,
        POGOPokemonId_Golduck,
        POGOPokemonId_Mankey,
        POGOPokemonId_Primeape,
        POGOPokemonId_Growlithe,
        POGOPokemonId_Arcanine,
        POGOPokemonId_Poliwag,
        POGOPokemonId_Poliwhirl,
        POGOPokemonId_Poliwrath,
        POGOPokemonId_Abra,
        POGOPokemonId_Kadabra,
        POGOPokemonId_Alakazam,
        POGOPokemonId_Machop,
        POGOPokemonId_Machoke,
        POGOPokemonId_Machamp,
        POGOPokemonId_Bellsprout,
        POGOPokemonId_Weepinbell,
        POGOPokemonId_Victreebel,
        POGOPokemonId_Tentacool,
        POGOPokemonId_Tentacruel,
        POGOPokemonId_Geodude,
        POGOPokemonId_Graveler,
        POGOPokemonId_Golem,
        POGOPokemonId_Ponyta,
        POGOPokemonId_Rapidash,
        POGOPokemonId_Slowpoke,
        POGOPokemonId_Slowbro,
        POGOPokemonId_Magnemite,
        POGOPokemonId_Magneton,
        POGOPokemonId_Farfetchd,
        POGOPokemonId_Doduo,
        POGOPokemonId_Dodrio,
        POGOPokemonId_Seel,
        POGOPokemonId_Dewgong,
        POGOPokemonId_Grimer,
        POGOPokemonId_Muk,
        POGOPokemonId_Shellder,
        POGOPokemonId_Cloyster,
        POGOPokemonId_Gastly,
        POGOPokemonId_Haunter,
        POGOPokemonId_Gengar,
        POGOPokemonId_Onix,
        POGOPokemonId_Drowzee,
        POGOPokemonId_Hypno,
        POGOPokemonId_Krabby,
        POGOPokemonId_Kingler,
        POGOPokemonId_Voltorb,
        POGOPokemonId_Electrode,
        POGOPokemonId_Exeggcute,
        POGOPokemonId_Exeggutor,
        POGOPokemonId_Cubone,
        POGOPokemonId_Marowak,
        POGOPokemonId_Hitmonlee,
        POGOPokemonId_Hitmonchan,
        POGOPokemonId_Lickitung,
        POGOPokemonId_Koffing,
        POGOPokemonId_Weezing,
        POGOPokemonId_Rhyhorn,
        POGOPokemonId_Rhydon,
        POGOPokemonId_Chansey,
        POGOPokemonId_Tangela,
        POGOPokemonId_Kangaskhan,
        POGOPokemonId_Horsea,
        POGOPokemonId_Seadra,
        POGOPokemonId_Goldeen,
        POGOPokemonId_Seaking,
        POGOPokemonId_Staryu,
        POGOPokemonId_Starmie,
        POGOPokemonId_MrMime,
        POGOPokemonId_Scyther,
        POGOPokemonId_Jynx,
        POGOPokemonId_Electabuzz,
        POGOPokemonId_Magmar,
        POGOPokemonId_Pinsir,
        POGOPokemonId_Tauros,
        POGOPokemonId_Magikarp,
        POGOPokemonId_Gyarados,
        POGOPokemonId_Lapras,
        POGOPokemonId_Ditto,
        POGOPokemonId_Eevee,
        POGOPokemonId_Vaporeon,
        POGOPokemonId_Jolteon,
        POGOPokemonId_Flareon,
        POGOPokemonId_Porygon,
        POGOPokemonId_Omanyte,
        POGOPokemonId_Omastar,
        POGOPokemonId_Kabuto,
        POGOPokemonId_Kabutops,
        POGOPokemonId_Aerodactyl,
        POGOPokemonId_Snorlax,
        POGOPokemonId_Articuno,
        POGOPokemonId_Zapdos,
        POGOPokemonId_Moltres,
        POGOPokemonId_Dratini,
        POGOPokemonId_Dragonair,
        POGOPokemonId_Dragonite,
        POGOPokemonId_Mewtwo,
        POGOPokemonId_Mew,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGOPokemonId)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGOPokemonId_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGOPokemonId_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGOPokemonId_Missingno:
    case POGOPokemonId_Bulbasaur:
    case POGOPokemonId_Ivysaur:
    case POGOPokemonId_Venusaur:
    case POGOPokemonId_Charmander:
    case POGOPokemonId_Charmeleon:
    case POGOPokemonId_Charizard:
    case POGOPokemonId_Squirtle:
    case POGOPokemonId_Wartortle:
    case POGOPokemonId_Blastoise:
    case POGOPokemonId_Caterpie:
    case POGOPokemonId_Metapod:
    case POGOPokemonId_Butterfree:
    case POGOPokemonId_Weedle:
    case POGOPokemonId_Kakuna:
    case POGOPokemonId_Beedrill:
    case POGOPokemonId_Pidgey:
    case POGOPokemonId_Pidgeotto:
    case POGOPokemonId_Pidgeot:
    case POGOPokemonId_Rattata:
    case POGOPokemonId_Raticate:
    case POGOPokemonId_Spearow:
    case POGOPokemonId_Fearow:
    case POGOPokemonId_Ekans:
    case POGOPokemonId_Arbok:
    case POGOPokemonId_Pikachu:
    case POGOPokemonId_Raichu:
    case POGOPokemonId_Sandshrew:
    case POGOPokemonId_Sandslash:
    case POGOPokemonId_NidoranFemale:
    case POGOPokemonId_Nidorina:
    case POGOPokemonId_Nidoqueen:
    case POGOPokemonId_NidoranMale:
    case POGOPokemonId_Nidorino:
    case POGOPokemonId_Nidoking:
    case POGOPokemonId_Clefairy:
    case POGOPokemonId_Clefable:
    case POGOPokemonId_Vulpix:
    case POGOPokemonId_Ninetales:
    case POGOPokemonId_Jigglypuff:
    case POGOPokemonId_Wigglytuff:
    case POGOPokemonId_Zubat:
    case POGOPokemonId_Golbat:
    case POGOPokemonId_Oddish:
    case POGOPokemonId_Gloom:
    case POGOPokemonId_Vileplume:
    case POGOPokemonId_Paras:
    case POGOPokemonId_Parasect:
    case POGOPokemonId_Venonat:
    case POGOPokemonId_Venomoth:
    case POGOPokemonId_Diglett:
    case POGOPokemonId_Dugtrio:
    case POGOPokemonId_Meowth:
    case POGOPokemonId_Persian:
    case POGOPokemonId_Psyduck:
    case POGOPokemonId_Golduck:
    case POGOPokemonId_Mankey:
    case POGOPokemonId_Primeape:
    case POGOPokemonId_Growlithe:
    case POGOPokemonId_Arcanine:
    case POGOPokemonId_Poliwag:
    case POGOPokemonId_Poliwhirl:
    case POGOPokemonId_Poliwrath:
    case POGOPokemonId_Abra:
    case POGOPokemonId_Kadabra:
    case POGOPokemonId_Alakazam:
    case POGOPokemonId_Machop:
    case POGOPokemonId_Machoke:
    case POGOPokemonId_Machamp:
    case POGOPokemonId_Bellsprout:
    case POGOPokemonId_Weepinbell:
    case POGOPokemonId_Victreebel:
    case POGOPokemonId_Tentacool:
    case POGOPokemonId_Tentacruel:
    case POGOPokemonId_Geodude:
    case POGOPokemonId_Graveler:
    case POGOPokemonId_Golem:
    case POGOPokemonId_Ponyta:
    case POGOPokemonId_Rapidash:
    case POGOPokemonId_Slowpoke:
    case POGOPokemonId_Slowbro:
    case POGOPokemonId_Magnemite:
    case POGOPokemonId_Magneton:
    case POGOPokemonId_Farfetchd:
    case POGOPokemonId_Doduo:
    case POGOPokemonId_Dodrio:
    case POGOPokemonId_Seel:
    case POGOPokemonId_Dewgong:
    case POGOPokemonId_Grimer:
    case POGOPokemonId_Muk:
    case POGOPokemonId_Shellder:
    case POGOPokemonId_Cloyster:
    case POGOPokemonId_Gastly:
    case POGOPokemonId_Haunter:
    case POGOPokemonId_Gengar:
    case POGOPokemonId_Onix:
    case POGOPokemonId_Drowzee:
    case POGOPokemonId_Hypno:
    case POGOPokemonId_Krabby:
    case POGOPokemonId_Kingler:
    case POGOPokemonId_Voltorb:
    case POGOPokemonId_Electrode:
    case POGOPokemonId_Exeggcute:
    case POGOPokemonId_Exeggutor:
    case POGOPokemonId_Cubone:
    case POGOPokemonId_Marowak:
    case POGOPokemonId_Hitmonlee:
    case POGOPokemonId_Hitmonchan:
    case POGOPokemonId_Lickitung:
    case POGOPokemonId_Koffing:
    case POGOPokemonId_Weezing:
    case POGOPokemonId_Rhyhorn:
    case POGOPokemonId_Rhydon:
    case POGOPokemonId_Chansey:
    case POGOPokemonId_Tangela:
    case POGOPokemonId_Kangaskhan:
    case POGOPokemonId_Horsea:
    case POGOPokemonId_Seadra:
    case POGOPokemonId_Goldeen:
    case POGOPokemonId_Seaking:
    case POGOPokemonId_Staryu:
    case POGOPokemonId_Starmie:
    case POGOPokemonId_MrMime:
    case POGOPokemonId_Scyther:
    case POGOPokemonId_Jynx:
    case POGOPokemonId_Electabuzz:
    case POGOPokemonId_Magmar:
    case POGOPokemonId_Pinsir:
    case POGOPokemonId_Tauros:
    case POGOPokemonId_Magikarp:
    case POGOPokemonId_Gyarados:
    case POGOPokemonId_Lapras:
    case POGOPokemonId_Ditto:
    case POGOPokemonId_Eevee:
    case POGOPokemonId_Vaporeon:
    case POGOPokemonId_Jolteon:
    case POGOPokemonId_Flareon:
    case POGOPokemonId_Porygon:
    case POGOPokemonId_Omanyte:
    case POGOPokemonId_Omastar:
    case POGOPokemonId_Kabuto:
    case POGOPokemonId_Kabutops:
    case POGOPokemonId_Aerodactyl:
    case POGOPokemonId_Snorlax:
    case POGOPokemonId_Articuno:
    case POGOPokemonId_Zapdos:
    case POGOPokemonId_Moltres:
    case POGOPokemonId_Dratini:
    case POGOPokemonId_Dragonair:
    case POGOPokemonId_Dragonite:
    case POGOPokemonId_Mewtwo:
    case POGOPokemonId_Mew:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
