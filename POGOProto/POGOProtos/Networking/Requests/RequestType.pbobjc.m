// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Networking/Requests/RequestType.proto

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

 #import "POGOProtos/Networking/Requests/RequestType.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - POGORequestTypeRoot

@implementation POGORequestTypeRoot

@end

#pragma mark - Enum POGORequestType

GPBEnumDescriptor *POGORequestType_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "MethodUnset\000PlayerUpdate\000GetPlayer\000GetIn"
        "ventory\000DownloadSettings\000DownloadItemTem"
        "plates\000DownloadRemoteConfigVersion\000FortS"
        "earch\000Encounter\000CatchPokemon\000FortDetails"
        "\000ItemUse\000GetMapObjects\000FortDeployPokemon"
        "\000FortRecallPokemon\000ReleasePokemon\000UseIte"
        "mPotion\000UseItemCapture\000UseItemFlee\000UseIt"
        "emRevive\000TradeSearch\000TradeOffer\000TradeRes"
        "ponse\000TradeResult\000GetPlayerProfile\000GetIt"
        "emPack\000BuyItemPack\000BuyGemPack\000EvolvePoke"
        "mon\000GetHatchedEggs\000EncounterTutorialComp"
        "lete\000LevelUpRewards\000CheckAwardedBadges\000U"
        "seItemGym\000GetGymDetails\000StartGymBattle\000A"
        "ttackGym\000RecycleInventoryItem\000CollectDai"
        "lyBonus\000UseItemXpBoost\000UseItemEggIncubat"
        "or\000UseIncense\000GetIncensePokemon\000IncenseE"
        "ncounter\000AddFortModifier\000DiskEncounter\000C"
        "ollectDailyDefenderBonus\000UpgradePokemon\000"
        "SetFavoritePokemon\000NicknamePokemon\000Equip"
        "Badge\000SetContactSettings\000GetAssetDigest\000"
        "GetDownloadUrls\000GetSuggestedCodenames\000Ch"
        "eckCodenameAvailable\000ClaimCodename\000SetAv"
        "atar\000SetPlayerTeam\000MarkTutorialComplete\000"
        "LoadSpawnPoints\000Echo\000DebugUpdateInventor"
        "y\000DebugDeletePlayer\000SfidaRegistration\000Sf"
        "idaActionLog\000SfidaCertification\000SfidaUpd"
        "ate\000SfidaAction\000SfidaDowser\000SfidaCapture"
        "\000";
    static const int32_t values[] = {
        POGORequestType_MethodUnset,
        POGORequestType_PlayerUpdate,
        POGORequestType_GetPlayer,
        POGORequestType_GetInventory,
        POGORequestType_DownloadSettings,
        POGORequestType_DownloadItemTemplates,
        POGORequestType_DownloadRemoteConfigVersion,
        POGORequestType_FortSearch,
        POGORequestType_Encounter,
        POGORequestType_CatchPokemon,
        POGORequestType_FortDetails,
        POGORequestType_ItemUse,
        POGORequestType_GetMapObjects,
        POGORequestType_FortDeployPokemon,
        POGORequestType_FortRecallPokemon,
        POGORequestType_ReleasePokemon,
        POGORequestType_UseItemPotion,
        POGORequestType_UseItemCapture,
        POGORequestType_UseItemFlee,
        POGORequestType_UseItemRevive,
        POGORequestType_TradeSearch,
        POGORequestType_TradeOffer,
        POGORequestType_TradeResponse,
        POGORequestType_TradeResult,
        POGORequestType_GetPlayerProfile,
        POGORequestType_GetItemPack,
        POGORequestType_BuyItemPack,
        POGORequestType_BuyGemPack,
        POGORequestType_EvolvePokemon,
        POGORequestType_GetHatchedEggs,
        POGORequestType_EncounterTutorialComplete,
        POGORequestType_LevelUpRewards,
        POGORequestType_CheckAwardedBadges,
        POGORequestType_UseItemGym,
        POGORequestType_GetGymDetails,
        POGORequestType_StartGymBattle,
        POGORequestType_AttackGym,
        POGORequestType_RecycleInventoryItem,
        POGORequestType_CollectDailyBonus,
        POGORequestType_UseItemXpBoost,
        POGORequestType_UseItemEggIncubator,
        POGORequestType_UseIncense,
        POGORequestType_GetIncensePokemon,
        POGORequestType_IncenseEncounter,
        POGORequestType_AddFortModifier,
        POGORequestType_DiskEncounter,
        POGORequestType_CollectDailyDefenderBonus,
        POGORequestType_UpgradePokemon,
        POGORequestType_SetFavoritePokemon,
        POGORequestType_NicknamePokemon,
        POGORequestType_EquipBadge,
        POGORequestType_SetContactSettings,
        POGORequestType_GetAssetDigest,
        POGORequestType_GetDownloadUrls,
        POGORequestType_GetSuggestedCodenames,
        POGORequestType_CheckCodenameAvailable,
        POGORequestType_ClaimCodename,
        POGORequestType_SetAvatar,
        POGORequestType_SetPlayerTeam,
        POGORequestType_MarkTutorialComplete,
        POGORequestType_LoadSpawnPoints,
        POGORequestType_Echo,
        POGORequestType_DebugUpdateInventory,
        POGORequestType_DebugDeletePlayer,
        POGORequestType_SfidaRegistration,
        POGORequestType_SfidaActionLog,
        POGORequestType_SfidaCertification,
        POGORequestType_SfidaUpdate,
        POGORequestType_SfidaAction,
        POGORequestType_SfidaDowser,
        POGORequestType_SfidaCapture,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(POGORequestType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:POGORequestType_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL POGORequestType_IsValidValue(int32_t value__) {
  switch (value__) {
    case POGORequestType_MethodUnset:
    case POGORequestType_PlayerUpdate:
    case POGORequestType_GetPlayer:
    case POGORequestType_GetInventory:
    case POGORequestType_DownloadSettings:
    case POGORequestType_DownloadItemTemplates:
    case POGORequestType_DownloadRemoteConfigVersion:
    case POGORequestType_FortSearch:
    case POGORequestType_Encounter:
    case POGORequestType_CatchPokemon:
    case POGORequestType_FortDetails:
    case POGORequestType_ItemUse:
    case POGORequestType_GetMapObjects:
    case POGORequestType_FortDeployPokemon:
    case POGORequestType_FortRecallPokemon:
    case POGORequestType_ReleasePokemon:
    case POGORequestType_UseItemPotion:
    case POGORequestType_UseItemCapture:
    case POGORequestType_UseItemFlee:
    case POGORequestType_UseItemRevive:
    case POGORequestType_TradeSearch:
    case POGORequestType_TradeOffer:
    case POGORequestType_TradeResponse:
    case POGORequestType_TradeResult:
    case POGORequestType_GetPlayerProfile:
    case POGORequestType_GetItemPack:
    case POGORequestType_BuyItemPack:
    case POGORequestType_BuyGemPack:
    case POGORequestType_EvolvePokemon:
    case POGORequestType_GetHatchedEggs:
    case POGORequestType_EncounterTutorialComplete:
    case POGORequestType_LevelUpRewards:
    case POGORequestType_CheckAwardedBadges:
    case POGORequestType_UseItemGym:
    case POGORequestType_GetGymDetails:
    case POGORequestType_StartGymBattle:
    case POGORequestType_AttackGym:
    case POGORequestType_RecycleInventoryItem:
    case POGORequestType_CollectDailyBonus:
    case POGORequestType_UseItemXpBoost:
    case POGORequestType_UseItemEggIncubator:
    case POGORequestType_UseIncense:
    case POGORequestType_GetIncensePokemon:
    case POGORequestType_IncenseEncounter:
    case POGORequestType_AddFortModifier:
    case POGORequestType_DiskEncounter:
    case POGORequestType_CollectDailyDefenderBonus:
    case POGORequestType_UpgradePokemon:
    case POGORequestType_SetFavoritePokemon:
    case POGORequestType_NicknamePokemon:
    case POGORequestType_EquipBadge:
    case POGORequestType_SetContactSettings:
    case POGORequestType_GetAssetDigest:
    case POGORequestType_GetDownloadUrls:
    case POGORequestType_GetSuggestedCodenames:
    case POGORequestType_CheckCodenameAvailable:
    case POGORequestType_ClaimCodename:
    case POGORequestType_SetAvatar:
    case POGORequestType_SetPlayerTeam:
    case POGORequestType_MarkTutorialComplete:
    case POGORequestType_LoadSpawnPoints:
    case POGORequestType_Echo:
    case POGORequestType_DebugUpdateInventory:
    case POGORequestType_DebugDeletePlayer:
    case POGORequestType_SfidaRegistration:
    case POGORequestType_SfidaActionLog:
    case POGORequestType_SfidaCertification:
    case POGORequestType_SfidaUpdate:
    case POGORequestType_SfidaAction:
    case POGORequestType_SfidaDowser:
    case POGORequestType_SfidaCapture:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)