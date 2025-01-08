_pmcUniforms = ["CUP_I_B_PMC_Unit_16", "CUP_I_B_PMC_Unit_17", "CUP_I_B_PMC_Unit_39"];
_pmcVest = ["MMM_TMC6094A_545_DarkGreen_top01_front02_sides01_bot00_tape00", "MMM_TMC6094A_545_MultiCam_top01_front02_sides01_bot00_tape00", "MMM_TMC6094A_545_MultiCamC_top01_front02_sides01_bot00_tape00", "MMM_TMC6094A_545_DarkGreen_top01_front02_sides01_bot01_tape00", "MMM_TMC6094A_545_MultiCam_top01_front02_sides01_bot01_tape00", "MMM_TMC6094A_545_MultiCamC_top01_front02_sides01_bot01_tape00", "MMM_TMC6094A_545_DarkGreen_top01_front02_sides02_bot00_tape00", "MMM_TMC6094A_545_MultiCam_top01_front02_sides02_bot00_tape00", "MMM_TMC6094A_545_MultiCamC_top01_front02_sides02_bot00_tape00"];
_pmcHelmets = ["CUP_H_FR_Boonie_DES", "rhs_booniehat2_marpatd", "CUP_H_USA_Cap_PUNISHER_DEF", "CUP_H_CZ_Cap_Headphones_des", "rhsusf_ach_helmet_DCU_early", "rhsusf_ach_bare_tan_headset"];
_pmcBackpack = ["MMM_UA_MTacARMOR_545x39_DarkGreen_FStd_LNone_RIFAK_BSuharka", "MMM_UA_MTacARMOR_545x39_MultiCam_FStd_LNone_RIFAK_BNone", "MMM_UA_MTacARMOR_545x39_MultiCamC_FStd_LNone_RIFAK_BSuharka"];
_pmcFace = ["CUP_FR_NeckScarf2", "CUP_G_ESS_KHK_Facewrap_Tan", "CUP_G_ESS_BLK_Scarf_Blk", "", ""];

_soverUniforms = ["CUP_U_I_GUE_Anorak_02", "CUP_O_TKI_Khet_Jeans_04", "CUP_O_TKI_Khet_Jeans_01", "CUP_U_O_CHDKZ_Lopotev"];
_soverVest = ["CUP_V_CDF_6B3_3_DST", "rhs_6b3_RPK", "rhs_chicom_khk", "CUP_V_OI_TKI_Jacket4_05"];
_soverHelmets = ["rhs_ssh68_2", "rhs_ssh60", "CUP_H_TKI_Lungee_06", "CUP_H_TKI_Lungee_Open_04", "rhs_stsh81_butan"];
_soverBackpack = ["CUP_B_AlicePack_Bedroll", "rhs_sidor", "CUP_B_TacticalPack_TTS"];
_soverFace = ["CUP_G_RUS_Ratnik_Balaclava_A_Tacs_2", "G_Spectacles_Tinted", "G_Balaclava_Skull1", "", "", "", ""];

private _addWeaponAndAmmo = {
  _akmWeapons = ["rhs_weap_akms", "rhs_weap_akm"];
  _akmAmmo = "rhs_30Rnd_762x39mm";

  _ak74Weapons = ["rhs_weap_ak74_2", "rhs_weap_aks74n_2"];
  _ak74Ammo = "rhs_30Rnd_545x39_7N6M_AK";

  if (random 1 > 0.5) then {
    player addWeapon (selectRandom _akmWeapons);
    for "_i" from 1 to 6 do { player addItemToVest _akmAmmo; };
  } else {
    player addWeapon (selectRandom _ak74Weapons);
    for "_i" from 1 to 6 do { player addItemToVest _ak74Ammo; };
  };
};

private _addMedicineToUniform = {
  _bandage = "ACE_quikclot";
  _splint = "ACE_splint";
  _tourniquet = "ACE_tourniquet";
  _painkiller = "ACE_painkillers";
  _guedel = "kat_guedel";
  _chestSeal = "kat_chestSeal";
  _blood = "ACE_bloodIV_250";

  for "_i" from 1 to 10 do { player addItemToUniform _bandage; };
  for "_i" from 1 to 2 do { player addItemToUniform _tourniquet; };

  player addItemToUniform _splint;
  player addItemToUniform _painkiller;
  player addItemToUniform _guedel;
  player addItemToUniform _chestSeal;
  player addItemToUniform _blood;
};

removeAllItems player;
removeAllWeapons player;
removeAllAssignedItems player;

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

if (playerSide == WEST) then { 
  player forceAddUniform (selectRandom _pmcUniforms);
  player addVest (selectRandom _pmcVest);
  player addHeadgear (selectRandom _pmcHelmets);
  player addGoggles (selectRandom _pmcFace);

  removeBackpackGlobal player;
  player addBackpack (selectRandom _pmcBackpack);
};
 
if (playerSide == EAST) then { 
  player forceAddUniform (selectRandom _soverUniforms);
  player addVest (selectRandom _soverVest);
  player addHeadgear (selectRandom _soverHelmets);
  player addGoggles (selectRandom _soverFace);

  removeBackpackGlobal player;
  player addBackpack (selectRandom _soverBackpack);
};

call _addWeaponAndAmmo;
call _addMedicineToUniform
