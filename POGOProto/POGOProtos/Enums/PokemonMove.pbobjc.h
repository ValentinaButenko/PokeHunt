// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: POGOProtos/Enums/PokemonMove.proto

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

#pragma mark - Enum POGOPokemonMove

typedef GPB_ENUM(POGOPokemonMove) {
  /// Value used if any message's field encounters a value that is not defined
  /// by this enum. The message will also have C functions to get/set the rawValue
  /// of the field.
  POGOPokemonMove_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  POGOPokemonMove_MoveUnset = 0,
  POGOPokemonMove_ThunderShock = 1,
  POGOPokemonMove_QuickAttack = 2,
  POGOPokemonMove_Scratch = 3,
  POGOPokemonMove_Ember = 4,
  POGOPokemonMove_VineWhip = 5,
  POGOPokemonMove_Tackle = 6,
  POGOPokemonMove_RazorLeaf = 7,
  POGOPokemonMove_TakeDown = 8,
  POGOPokemonMove_WaterGun = 9,
  POGOPokemonMove_Bite = 10,
  POGOPokemonMove_Pound = 11,
  POGOPokemonMove_DoubleSlap = 12,
  POGOPokemonMove_Wrap = 13,
  POGOPokemonMove_HyperBeam = 14,
  POGOPokemonMove_Lick = 15,
  POGOPokemonMove_DarkPulse = 16,
  POGOPokemonMove_Smog = 17,
  POGOPokemonMove_Sludge = 18,
  POGOPokemonMove_MetalClaw = 19,
  POGOPokemonMove_ViceGrip = 20,
  POGOPokemonMove_FlameWheel = 21,
  POGOPokemonMove_Megahorn = 22,
  POGOPokemonMove_WingAttack = 23,
  POGOPokemonMove_Flamethrower = 24,
  POGOPokemonMove_SuckerPunch = 25,
  POGOPokemonMove_Dig = 26,
  POGOPokemonMove_LowKick = 27,
  POGOPokemonMove_CrossChop = 28,
  POGOPokemonMove_PsychoCut = 29,
  POGOPokemonMove_Psybeam = 30,
  POGOPokemonMove_Earthquake = 31,
  POGOPokemonMove_StoneEdge = 32,
  POGOPokemonMove_IcePunch = 33,
  POGOPokemonMove_HeartStamp = 34,
  POGOPokemonMove_Discharge = 35,
  POGOPokemonMove_FlashCannon = 36,
  POGOPokemonMove_Peck = 37,
  POGOPokemonMove_DrillPeck = 38,
  POGOPokemonMove_IceBeam = 39,
  POGOPokemonMove_Blizzard = 40,
  POGOPokemonMove_AirSlash = 41,
  POGOPokemonMove_HeatWave = 42,
  POGOPokemonMove_Twineedle = 43,
  POGOPokemonMove_PoisonJab = 44,
  POGOPokemonMove_AerialAce = 45,
  POGOPokemonMove_DrillRun = 46,
  POGOPokemonMove_PetalBlizzard = 47,
  POGOPokemonMove_MegaDrain = 48,
  POGOPokemonMove_BugBuzz = 49,
  POGOPokemonMove_PoisonFang = 50,
  POGOPokemonMove_NightSlash = 51,
  POGOPokemonMove_Slash = 52,
  POGOPokemonMove_BubbleBeam = 53,
  POGOPokemonMove_Submission = 54,
  POGOPokemonMove_KarateChop = 55,
  POGOPokemonMove_LowSweep = 56,
  POGOPokemonMove_AquaJet = 57,
  POGOPokemonMove_AquaTail = 58,
  POGOPokemonMove_SeedBomb = 59,
  POGOPokemonMove_Psyshock = 60,
  POGOPokemonMove_RockThrow = 61,
  POGOPokemonMove_AncientPower = 62,
  POGOPokemonMove_RockTomb = 63,
  POGOPokemonMove_RockSlide = 64,
  POGOPokemonMove_PowerGem = 65,
  POGOPokemonMove_ShadowSneak = 66,
  POGOPokemonMove_ShadowPunch = 67,
  POGOPokemonMove_ShadowClaw = 68,
  POGOPokemonMove_OminousWind = 69,
  POGOPokemonMove_ShadowBall = 70,
  POGOPokemonMove_BulletPunch = 71,
  POGOPokemonMove_MagnetBomb = 72,
  POGOPokemonMove_SteelWing = 73,
  POGOPokemonMove_IronHead = 74,
  POGOPokemonMove_ParabolicCharge = 75,
  POGOPokemonMove_Spark = 76,
  POGOPokemonMove_ThunderPunch = 77,
  POGOPokemonMove_Thunder = 78,
  POGOPokemonMove_Thunderbolt = 79,
  POGOPokemonMove_Twister = 80,
  POGOPokemonMove_DragonBreath = 81,
  POGOPokemonMove_DragonPulse = 82,
  POGOPokemonMove_DragonClaw = 83,
  POGOPokemonMove_DisarmingVoice = 84,
  POGOPokemonMove_DrainingKiss = 85,
  POGOPokemonMove_DazzlingGleam = 86,
  POGOPokemonMove_Moonblast = 87,
  POGOPokemonMove_PlayRough = 88,
  POGOPokemonMove_CrossPoison = 89,
  POGOPokemonMove_SludgeBomb = 90,
  POGOPokemonMove_SludgeWave = 91,
  POGOPokemonMove_GunkShot = 92,
  POGOPokemonMove_MudShot = 93,
  POGOPokemonMove_BoneClub = 94,
  POGOPokemonMove_Bulldoze = 95,
  POGOPokemonMove_MudBomb = 96,
  POGOPokemonMove_FuryCutter = 97,
  POGOPokemonMove_BugBite = 98,
  POGOPokemonMove_SignalBeam = 99,
  POGOPokemonMove_XScissor = 100,
  POGOPokemonMove_FlameCharge = 101,
  POGOPokemonMove_FlameBurst = 102,
  POGOPokemonMove_FireBlast = 103,
  POGOPokemonMove_Brine = 104,
  POGOPokemonMove_WaterPulse = 105,
  POGOPokemonMove_Scald = 106,
  POGOPokemonMove_HydroPump = 107,
  POGOPokemonMove_Psychic = 108,
  POGOPokemonMove_Psystrike = 109,
  POGOPokemonMove_IceShard = 110,
  POGOPokemonMove_IcyWind = 111,
  POGOPokemonMove_FrostBreath = 112,
  POGOPokemonMove_Absorb = 113,
  POGOPokemonMove_GigaDrain = 114,
  POGOPokemonMove_FirePunch = 115,
  POGOPokemonMove_SolarBeam = 116,
  POGOPokemonMove_LeafBlade = 117,
  POGOPokemonMove_PowerWhip = 118,
  POGOPokemonMove_Splash = 119,
  POGOPokemonMove_Acid = 120,
  POGOPokemonMove_AirCutter = 121,
  POGOPokemonMove_Hurricane = 122,
  POGOPokemonMove_BrickBreak = 123,
  POGOPokemonMove_Cut = 124,
  POGOPokemonMove_Swift = 125,
  POGOPokemonMove_HornAttack = 126,
  POGOPokemonMove_Stomp = 127,
  POGOPokemonMove_Headbutt = 128,
  POGOPokemonMove_HyperFang = 129,
  POGOPokemonMove_Slam = 130,
  POGOPokemonMove_BodySlam = 131,
  POGOPokemonMove_Rest = 132,
  POGOPokemonMove_Struggle = 133,
  POGOPokemonMove_ScaldBlastoise = 134,
  POGOPokemonMove_HydroPumpBlastoise = 135,
  POGOPokemonMove_WrapGreen = 136,
  POGOPokemonMove_WrapPink = 137,
  POGOPokemonMove_FuryCutterFast = 200,
  POGOPokemonMove_BugBiteFast = 201,
  POGOPokemonMove_BiteFast = 202,
  POGOPokemonMove_SuckerPunchFast = 203,
  POGOPokemonMove_DragonBreathFast = 204,
  POGOPokemonMove_ThunderShockFast = 205,
  POGOPokemonMove_SparkFast = 206,
  POGOPokemonMove_LowKickFast = 207,
  POGOPokemonMove_KarateChopFast = 208,
  POGOPokemonMove_EmberFast = 209,
  POGOPokemonMove_WingAttackFast = 210,
  POGOPokemonMove_PeckFast = 211,
  POGOPokemonMove_LickFast = 212,
  POGOPokemonMove_ShadowClawFast = 213,
  POGOPokemonMove_VineWhipFast = 214,
  POGOPokemonMove_RazorLeafFast = 215,
  POGOPokemonMove_MudShotFast = 216,
  POGOPokemonMove_IceShardFast = 217,
  POGOPokemonMove_FrostBreathFast = 218,
  POGOPokemonMove_QuickAttackFast = 219,
  POGOPokemonMove_ScratchFast = 220,
  POGOPokemonMove_TackleFast = 221,
  POGOPokemonMove_PoundFast = 222,
  POGOPokemonMove_CutFast = 223,
  POGOPokemonMove_PoisonJabFast = 224,
  POGOPokemonMove_AcidFast = 225,
  POGOPokemonMove_PsychoCutFast = 226,
  POGOPokemonMove_RockThrowFast = 227,
  POGOPokemonMove_MetalClawFast = 228,
  POGOPokemonMove_BulletPunchFast = 229,
  POGOPokemonMove_WaterGunFast = 230,
  POGOPokemonMove_SplashFast = 231,
  POGOPokemonMove_WaterGunFastBlastoise = 232,
  POGOPokemonMove_MudSlapFast = 233,
  POGOPokemonMove_ZenHeadbuttFast = 234,
  POGOPokemonMove_ConfusionFast = 235,
  POGOPokemonMove_PoisonStingFast = 236,
  POGOPokemonMove_BubbleFast = 237,
  POGOPokemonMove_FeintAttackFast = 238,
  POGOPokemonMove_SteelWingFast = 239,
  POGOPokemonMove_FireFangFast = 240,
  POGOPokemonMove_RockSmashFast = 241,
};

GPBEnumDescriptor *POGOPokemonMove_EnumDescriptor(void);

/// Checks to see if the given value is defined by the enum or was not known at
/// the time this source was generated.
BOOL POGOPokemonMove_IsValidValue(int32_t value);

#pragma mark - POGOPokemonMoveRoot

/// Exposes the extension registry for this file.
///
/// The base class provides:
/// @code
///   + (GPBExtensionRegistry *)extensionRegistry;
/// @endcode
/// which is a @c GPBExtensionRegistry that includes all the extensions defined by
/// this file and all files that it depends on.
@interface POGOPokemonMoveRoot : GPBRootObject
@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
