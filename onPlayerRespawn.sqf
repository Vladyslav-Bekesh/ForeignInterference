

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
