/**
 * ExileServer_object_vehicle_event_onGetIn
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_vehicleObject"];
_vehicleObject = _this select 0;
if !(simulationEnabled _vehicleObject) then 
{
	_vehicleObject enableSimulationGlobal true;
};

// Pawnee and Hellcat
if (typeOf _vehicleObject in ["B_Heli_Light_01_armed_F","I_Heli_light_03_F"]) then
{
	[_vehicleObject, ["missiles_DAR",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
};

// Orca
if (typeOf _vehicleObject in ["O_Heli_Light_02_F","O_Heli_Light_02_v2_F"]) then
{
	[_vehicleObject, ["missiles_DAGR",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
};

// RHS Littlebird
if (typeOf _vehicleObject in ["RHS_MELB_AH6M_L"]) then
{
	[_vehicleObject, ["RHS_M260_MELB",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["rhs_pod_FFAR_7",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["rhs_pod_FFAR_7",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["RHS_14Rnd_M151_Magazine_MELB",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
};

// RHS Littlebird
if (typeOf _vehicleObject in ["RHS_MELB_AH6M_M"]) then
{
	[_vehicleObject, ["RHS_M261_MELB",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["rhs_pod_FFAR_19",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["RHS_19Rnd_M151_Magazine_MELB",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
};

// RHS UH1Y
if (typeOf _vehicleObject in ["RHS_UH1Y"]) then
{
	[_vehicleObject, ["rhs_pod_FFAR_7_green",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["rhs_pod_FFAR_7_green",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["rhs_mag_M151_14",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
};

// Wipeout
if (typeOf _vehicleObject in ["B_Plane_CAS_01_F"]) then
{
	[_vehicleObject, ["7Rnd_Rocket_04_HE_F",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["7Rnd_Rocket_04_AP_F",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["4Rnd_Bomb_04_F",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["2Rnd_Missile_AA_04_F",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["6Rnd_Missile_AGM_02_F",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["Rocket_04_HE_Plane_CAS_01_F",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["Rocket_04_AP_Plane_CAS_01_F",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["Missile_AA_04_Plane_CAS_01_F",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["Missile_AGM_02_Plane_CAS_01_F",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["Bomb_04_Plane_CAS_01_F",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
};

// Shikra
if (typeOf _vehicleObject in ["O_Plane_Fighter_02_F"]) then
{
	[_vehicleObject, ["PylonMissile_Missile_AA_R73_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_AA_R73_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_AA_R73_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_AA_R73_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_AA_R77_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_AA_R77_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_AA_R77_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_AA_R77_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Bomb_KAB250_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Bomb_KAB250_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Bomb_KAB250_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["weapon_R73Launcher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["weapon_R77Launcher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["weapon_KAB250Launcher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
};

// Black Wasp
if (typeOf _vehicleObject in ["B_Plane_Fighter_01_F"]) then
{
	[_vehicleObject, ["PylonRack_Missile_AMRAAM_D_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonRack_Missile_AMRAAM_D_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonRack_Missile_AGM_02_x2",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonRack_Missile_AGM_02_x2",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_BIM9X_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_BIM9X_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_AMRAAM_D_INT_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_AMRAAM_D_INT_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Bomb_GBU12_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Bomb_GBU12_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["weapon_AMRAAMLauncher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["weapon_AGM_65Launcher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["weapon_BIM9xLauncher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["weapon_GBU12Launcher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
};

// Gryphon
if (typeOf _vehicleObject in ["I_Plane_Fighter_04_F"]) then
{
	[_vehicleObject, ["PylonMissile_Missile_BIM9X_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_BIM9X_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonRack_Missile_AGM_02_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonRack_Missile_AGM_02_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonRack_Missile_AMRAAM_C_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonRack_Missile_AMRAAM_C_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["weapon_BIM9xLauncher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["weapon_AGM_65Launcher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["weapon_AMRAAMLauncher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
};

// Black Wasp Stealth
if (typeOf _vehicleObject in ["B_Plane_Fighter_01_Stealth_F"]) then
{
	[_vehicleObject, ["PylonMissile_Missile_BIM9X_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_BIM9X_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_AMRAAM_D_INT_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_AMRAAM_D_INT_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Bomb_GBU12_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Bomb_GBU12_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["weapon_BIM9xLauncher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["weapon_AMRAAMLauncher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["weapon_GBU12Launcher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
};

// Shikra Stealth
if (typeOf _vehicleObject in ["O_Plane_Fighter_02_Stealth_F"]) then
{
	[_vehicleObject, ["PylonMissile_Missile_AA_R73_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_AA_R73_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_AA_R77_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_AA_R77_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_AA_R77_INT_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Missile_AA_R77_INT_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["PylonMissile_Bomb_KAB250_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["weapon_R73Launcher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["weapon_R77Launcher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["weapon_KAB250Launcher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
};

// Xi'an
if (typeOf _vehicleObject in ["O_T_VTOL_02_Infantry_F","O_T_VTOL_02_Vehicle_F","O_T_VTOL_02_Infantry_hex_F","O_T_VTOL_02_Vehicle_hex_F","O_T_VTOL_02_Infantry_grey_F","O_T_VTOL_02_Vehicle_grey_F"]) then
{
	[_vehicleObject, ["8Rnd_LG_scalpel",[0]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["38Rnd_80mm_rockets",[0]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["missiles_SCALPEL",[0]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["rockets_Skyfire",[0]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
};

// Neophron
if (typeOf _vehicleObject in ["O_Plane_CAS_02_F"]) then
{
    [_vehicleObject, ["2Rnd_Missile_AA_03_F_x1",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["4Rnd_Missile_AGM_01_F",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["2Rnd_Bomb_03_F",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["20Rnd_Rocket_03_HE_F",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["20Rnd_Rocket_03_AP_F",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["Missile_AA_03_Plane_CAS_02_F",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
    [_vehicleObject, ["Missile_AGM_01_Plane_CAS_02_F",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
    [_vehicleObject, ["Rocket_03_HE_Plane_CAS_02_F",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
    [_vehicleObject, ["Rocket_03_AP_Plane_CAS_02_F",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
    [_vehicleObject, ["Bomb_03_Plane_CAS_02_F",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
};

// Buzzard CAS
if (typeOf _vehicleObject in ["I_Plane_Fighter_03_CAS_F"]) then
{
    [_vehicleObject, ["2Rnd_LG_scalpel",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["2Rnd_AAA_missiles",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["2Rnd_GBU12_LGB_MI10",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["missiles_SCALPEL",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
    [_vehicleObject, ["missiles_ASRAAM",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
    [_vehicleObject, ["GBU12BombLauncher_Plane_Fighter_03_F",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
};

// Buzzard AA
if (typeOf _vehicleObject in ["I_Plane_Fighter_03_AA_F"]) then
{
    [_vehicleObject, ["4Rnd_GAA_missiles",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["2Rnd_AAA_missiles_MI06",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["missiles_Zephyr",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
    [_vehicleObject, ["missiles_ASRAAM",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
};

// RHS A10
if (typeOf _vehicleObject in ["RHS_A10"]) then
{
    [_vehicleObject, ["rhs_pod_lau68",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_pod_agm65",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_gbu12",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_gbu12",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_gbu12",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_gbu12",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_pod_agm65",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_pod_lau68",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_ANALQ131",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_Sidewinder_a10_2",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_FFAR_A10_14",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_agm65",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_agm65",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    //[_vehicleObject, ["RHS_weap_gau8",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
    [_vehicleObject, ["rhs_weap_SidewinderLauncher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
    [_vehicleObject, ["rhs_weap_agm65",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
    [_vehicleObject, ["rhs_weap_FFARLauncher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
    [_vehicleObject, ["rhs_weap_gbu12",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
};

// RHS A10 AT
if (typeOf _vehicleObject in ["RHS_A10_AT"]) then
{
    [_vehicleObject, ["rhs_pod_lau68",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_pod_agm65x3_rack",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_gbu12",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_gbu12",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_gbu12",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_gbu12",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_pod_agm65x3_rack",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_pod_lau68",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_ANALQ131",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_Sidewinder_a10_2",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_FFAR_A10_14",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_agm65_x3",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_agm65_x3",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_agm65_x3",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_agm65_x3",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_agm65_x3",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    [_vehicleObject, ["rhs_mag_agm65_x3",[-1]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
    //[_vehicleObject, ["RHS_weap_gau8",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
    [_vehicleObject, ["rhs_weap_SidewinderLauncher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
    [_vehicleObject, ["rhs_weap_agm65",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
    [_vehicleObject, ["rhs_weap_FFARLauncher",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
    [_vehicleObject, ["rhs_weap_gbu12",[-1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
};

// Blackfish
if (typeOf _vehicleObject in ["B_T_VTOL_01_armed_olive_F","B_T_VTOL_01_armed_blue_F"]) then
{                             	
    [_vehicleObject, ["cannon_105mm_VTOL_01",[1]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
    [_vehicleObject, ["autocannon_40mm_VTOL_01",[2]]] remoteExecCall ["removeWeaponTurret", _vehicleObject];
	[_vehicleObject, ["240Rnd_40mm_GPR_Tracer_Red_shells",[2]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
	[_vehicleObject, ["160Rnd_40mm_APFSDS_Tracer_Red_shells",[2]]] remoteExecCall ["removeMagazineTurret", _vehicleObject];
};

true