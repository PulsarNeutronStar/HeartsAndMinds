/*
	Author: CVO - Mr. Zorn

	Description:
		Defines Equipment


	Returns:
		<>

	Examples:
*/


/*=================================================*
	CVO_ARSENAL_DEFINE
*=================================================*

Here, you define the Available Equipment for the CVO Arsenal
It is seperated in 3 Parts

##################
1. BASE KIT - This is Available for Everyone
##################

Variable Name: CVO_A_BASE = [];

For easier reading it is suggested to compartmentalise
and append the individual Groups to CVO_A_BASE



##################
### 2. ROLE KIT - This is dependent on the Players Role.
##################

Traits like "Medic" or "Engineer" are automatically detected,
meaning manually giving a player the medic or doctor trait isnt necessary.

##################
3. Personal KIT - Add Items to individual players based on their UID(steam64)
##################

This is based on Code blocks to allow for checks.

##################

BASE KIT gets defined once in the beginning, as it will never change during during mission.

ROLE KIT gets updated each time the arsenal opens as Roles and Traits might change mid-mission (Ad-hoc Medic)
PLAYER KIT gets updated each time the arsenal opens as it CAN be dependend on other Roles and Traits as well.


##################


*=================================================*/  


if (!hasInterface) exitWith {};
diag_log ("[CVO] [Arsenal_Define] - start");


// #####################################################
// ###### DEFINE ARSENAL BOXES HERE - objects that give accesss to the CVO Arsenal
// #####################################################
// ###### Ether Define the CVO_Arsenal_Boxes directly via array or by putting all boxes in one layer called "CVO_ARSENAL_BOXES"
// #####################################################

CVO_Arsenal_boxes = [];

CVO_arsenal_boxes append [
	cvo_arsenal_1,
	cvo_arsenal_2,
	cvo_arsenal_3,
	cvo_arsenal_4,
	cvo_arsenal_5,
	cvo_arsenal_6,
	cvo_arsenal_7,
	cvo_arsenal_8,
	cvo_arsenal_9,
	cvo_arsenal_10,
	cvo_arsenal_11
];


/*private _layerArray = getMissionLayerEntities "cvo_arsenal_boxes";
if (!(_layerArray isEqualTo [])) then {CVO_Arsenal_boxes append getMissionLayerEntities "cvo_arsenal_boxes" # 0;};*/


// #####################################################
// ###### DEFINE BASE KIT HERE - AVAILABLE FOR EVERYONE
// #####################################################

CVO_A_BASE = [];

// ###### Baseline Equipment ###### 
// The Following can be mostly left as default

if (CVO_A_modLoaded_GreenMag) then {

		CVO_A_BASE append [
			"greenmag_ammo_556x45_basic_60Rnd",
			"greenmag_ammo_556x45_basic_30Rnd",

			"greenmag_ammo_762x51_basic_60Rnd",
			"greenmag_ammo_762x51_basic_30Rnd",

			"greenmag_ammo_545x39_basic_60Rnd",
			"greenmag_ammo_545x39_basic_30Rnd",

			"greenmag_ammo_762x39_basic_60Rnd",
			"greenmag_ammo_762x39_basic_30Rnd",
			
			"greenmag_ammo_9x19_basic_60Rnd",
			"greenmag_ammo_9x19_basic_30Rnd",
			
			"greenmag_ammo_762x54_basic_60Rnd",
			"greenmag_ammo_762x54_basic_30Rnd",

			"greenmag_item_speedloader"
		];
	diag_log "[CVO] [ARSENAL_DEFINE] - GreenMag added";
};


// Medical 
CVO_A_BASE append [
	"ACE_packingBandage",
	"ACE_fieldDressing",
	"ACE_tourniquet", 
	"ACE_splint",
	"ACE_morphine",
	"ACE_epinephrine", 
	"ACE_salineIV", 
	"ACE_salineIV_500",
	"ACE_salineIV_250",
	"ACE_personalAidKit",
	"ACE_bodyBag"];

// Tools & Equipment
CVO_A_BASE append [
	"ChemicalDetector_01_watch_F",

	"immersion_pops_poppack",
	"murshun_cigs_cigpack",
	"murshun_cigs_lighter",
	"murshun_cigs_matches",
	"immersion_cigs_cigar0",
	"immersion_cigs_cigar0_nv",

	"ACE_Humanitarian_Ration",

	"ACE_MapTools",
	"ace_marker_flags_yellow",
	"ace_marker_flags_red",
	"ace_marker_flags_green",
	"ace_marker_flags_blue",

	"ACE_EntrenchingTool",
	"ACE_EarPlugs",

	"ACE_SpraypaintGreen",
	"ACE_SpraypaintRed",

	"ACE_DAGR",
	"ACE_CableTie",
	"ACE_Chemlight_Shield",
	"acex_intelitems_notepad",
	"ACE_Flashlight_KSF1",

	"ACE_WaterBottle",

	"tsp_paperclip",

	"ItemWatch",
	"ItemCompass"];

// Binoculars
CVO_A_BASE append [
	//"Hate_Smartphone_HUD", "Hate_Smartphone",
	"Nikon_DSLR_HUD",
	"Nikon_DSLR",
	"Old_Camera_HUD",
	"Old_Camera",
	"Old_Camera_Color_HUD",
	"Old_Camera_Color",
	"Binocular"];

// NVGs
CVO_A_BASE append [
	"gm_ferod51_oli"
];


// Rappeling Rope 
CVO_A_BASE append [
	//"AUR_Rappel_Rope_70",
	//"AUR_Rappel_Rope_50",
	//"AUR_Rappel_Rope_30",
	"AUR_Rappel_Rope_20",
	"AUR_Rappel_Rope_10",
	"AUR_Rappel_Gear"];

// Radios
CVO_A_BASE append  ["ACRE_PRC343"];

// ###### Wearables ###### 

// Uniforms 
CVO_A_BASE append [
	"ACM_APD_Clothes_Blouse",
	"ACM_APD_Clothes",
	"ACM_APD_2_Clothes",
	"U_Marshal"];

// Vests
CVO_A_BASE append [
	"V_Safety_blue_F",
	"V_TacVestIR_blk",
	"V_TacVest_blk_POLICE",
	"ACM_APD_Vest",
	"V_LegStrapBag_black_F",
	//unlock later - done
	"V_SmershVest_01_black_F",				
	"V_SmershVest_01_radio_black_F",
	"V_CarrierRigKBT_01_light_DarkOlive_F",
	"V_CarrierRigKBT_01_DarkOlive_F"];

// Backpacks
CVO_A_BASE append [
	"gm_ge_backpack_satchel_80_blk",
	"gm_pl_army_backpack_80_oli",
	"B_AssaultPack_blk",
	"B_LegStrapBag_black_F",
	"B_Messenger_Black_F"];

// Headgear
CVO_A_BASE append [
	"gm_gc_headgear_fjh_model4_wht",
	"ACM_APD_Cap",
	"H_Cap_police",
	"gm_ge_headgear_beret_un",
	"H_MilCap_blue"];

// Facewear
CVO_A_BASE append [
	"gm_gc_army_facewear_dustglasses",
	"G_Respirator_white_F",
	"G_Spectacles_Tinted",
	"G_Squares",
	"G_Squares_Tinted",
	"G_Spectacles",

	"immersion_pops_pop0",
	"murshun_cigs_cig0",
	"immersion_cigs_cigar0",

	"G_Aviator"				];

// ###### WEAPONS - MAIN ###### 

// Rifles
CVO_A_BASE append  [
	// Shotgun
	"gm_hk512_ris_wud",
	"gm_hk512_wud",
	"gm_7rnd_12ga_hk512_slug",
	"gm_7rnd_12ga_hk512_pellet",

	// MP5 + Variants
	"gm_mp5n_surefire_blk",
	"gm_mp5n_blk",
	"gm_mp5a5_blk",
	"gm_mp5a4_blk",
	"gm_mp5a3_surefire_blk",
	"gm_mp5a3_blk",
	"gm_mp5a2_blk",
	"gm_30Rnd_9x19mm_B_DM51_mp5a3_blk",
	"gm_30Rnd_9x19mm_B_DM11_mp5a3_blk",
	"gm_30Rnd_9x19mm_BSD_DM81_mp5a3_blk",
	"gm_30Rnd_9x19mm_AP_DM91_mp5a3_blk",
	"gm_30Rnd_9x19mm_B_DM51_mp5_blk",
	"gm_30Rnd_9x19mm_B_DM11_mp5_blk",
	"gm_30Rnd_9x19mm_BSD_DM81_mp5_blk",
	"gm_30Rnd_9x19mm_AP_DM91_mp5_blk",

	// Attachments
	"gm_surefire_l75_ir_surefire_blk",
	"gm_surefire_l72_red_surefire_blk",
	"gm_surefire_l72_grn_surefire_blk",
	"gm_surefire_l60_red_surefire_blk",
	"gm_surefire_l60_ir_surefire_blk",
	"gm_surefire_l60_wht_surefire_blk",
	"gm_maglite_2d_hkslim_blk"];

// Pistols
CVO_A_BASE append [
	"gm_pn3_gry",		
	"gm_pimb_blk",
	"gm_pim_blk",
	"gm_8Rnd_9x18mm_B_pst_pm_blk",
	"gm_p210_blk",
	"gm_8Rnd_9x19mm_B_DM11_p210_blk",
	"gm_8Rnd_9x19mm_B_DM51_p210_blk",
	"gm_p1_blk",
	"gm_8Rnd_9x19mm_B_DM11_p1_blk",
	"gm_8Rnd_9x19mm_B_DM51_p1_blk",
	"gm_8Rnd_9x19mm_BSD_DM81_p1_blk",
	"gm_m49_blk",
	"gm_8Rnd_9x19mm_B_DM11_p210_blk",
	"gm_8Rnd_9x19mm_B_DM51_p210_blk",
	//"gm_pm63_blk",             Rest in peace sweet prince, your mags are usable with the SVD for some reason
	//"gm_pm63_handgun_blk",
	//"gm_15Rnd_9x18mm_B_pst_pm63_blk",
	//"gm_25Rnd_9x18mm_B_pst_pm63_blk",
	"gm_lp1_blk",
	"gm_1Rnd_265mm_smoke_single_vlt_DM24",
	"gm_1Rnd_265mm_smoke_single_org_DM22",
	"gm_1Rnd_265mm_smoke_single_yel_DM19",
	"gm_1Rnd_265mm_smoke_single_yel_gc",
	"gm_1Rnd_265mm_smoke_single_blu_gc",
	"gm_1Rnd_265mm_smoke_single_blk_gc",
	"gm_1Rnd_265mm_flare_multi_nbc_DM47",
	"gm_1Rnd_265mm_flare_multi_wht_DM25",
	"gm_1Rnd_265mm_flare_multi_red_DM23",
	"gm_1Rnd_265mm_flare_multi_grn_DM21",
	"gm_1Rnd_265mm_flare_multi_yel_DM20",
	"gm_1Rnd_265mm_flare_para_yel_DM16",
	"gm_1Rnd_265mm_flare_single_wht_DM15",
	"gm_1Rnd_265mm_flare_single_red_DM13",
	"gm_1Rnd_265mm_flare_single_grn_DM11",
	"gm_1Rnd_265mm_flare_single_yel_DM10",
	"gm_1Rnd_265mm_flare_single_wht_gc",
	"gm_1Rnd_265mm_flare_single_red_gc",
	"gm_1Rnd_265mm_flare_multi_red_gc",
	"gm_1Rnd_265mm_flare_single_grn_gc"];

// Handgrenades and Throwables
CVO_A_BASE append   [
	"gm_handgrenade_conc_dm51a1",
	"gm_handgrenade_conc_dm51",

	"ACE_M84",

	"ACE_HandFlare_Green",
	"ACE_HandFlare_Yellow",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White",

	"Chemlight_yellow",
	"Chemlight_red",
	"Chemlight_blue",
	"Chemlight_green",
	"ACE_Chemlight_Orange",
	"ACE_Chemlight_White",
	"ACE_Chemlight_HiWhite",
	"ACE_Chemlight_UltraHiOrange"];

// Explosives
CVO_A_BASE append [
	"tsp_popperCharge_auto_mag",
	"tsp_popperCharge_mag"];

// CBRN KIT
CVO_A_BASE append [
	"U_C_CBRN_Suit_01_Blue_F", 
	"G_AirPurifyingRespirator_01_F",
	"G_RegulatorMask_F", 
	"B_SCBA_01_F"];

// AD KIT

CVO_A_BASE append [
	// G3A3
		"gm_g3a3_blk",
		"gm_10Rnd_762x51mm_B_DM111_g3_blk",		//10Rnd Magazine
		"gm_20Rnd_762x51mm_B_DM111_g3_blk",		//20Rnd Magazine
		"gm_maglite_2d_hkslim_blk",
	// Uniform
		"ACM_APD_Clothes_3",
	// Helmets
		"gm_ge_headgear_m92_cover_blk",
		"gm_ge_headgear_m92_cover_glasses_blk",
	// Vests
		"gm_ge_bgs_vest_type3_gry",
		"gm_ge_bgs_vest_type18_blk",
		"gm_ge_bgs_vest_type3a1_gry"];

CVO_A_Base append [		
		// Mags
		"gm_30Rnd_545x39mm_B_T_7T3_ak74_blk",
		"gm_30Rnd_545x39mm_B_T_7T3_ak74_org",
		"gm_30Rnd_545x39mm_B_T_7T3_ak74_prp",
		"gm_30Rnd_545x39mm_B_7N6_ak74_blk",
		"gm_30Rnd_545x39mm_B_7N6_ak74_org",
		"gm_30Rnd_545x39mm_B_7N6_ak74_prp",
		// Light
		"gm_flashlightp2_wht_akkhandguard_blu",
		// Rifles
		"gm_mpiaks74nk_prp",
		"gm_mpiaks74nk_blk",
		"gm_mpiaks74nk_brn",
		"gm_mpiaks74n_prp",
		"gm_mpiaks74n_blk",
		"gm_mpiaks74n_brn",
		"gm_mpiak74n_brn",
		"gm_mpiak74n_blk",
		"gm_mpiak74n_prp"];


CVO_A_BASE append [		// M16A1 Kit

	"gm_20Rnd_556x45mm_B_M855_stanag_gry",		//20r Mags
	"gm_20Rnd_556x45mm_B_M193_stanag_gry",
	"gm_20Rnd_556x45mm_B_T_M856_stanag_gry",
	"gm_20Rnd_556x45mm_B_T_M196_stanag_gry",

	"gm_30Rnd_556x45mm_B_T_M196_stanag_gry",	//30r Mags
	"gm_30Rnd_556x45mm_B_T_M856_stanag_gry",
	"gm_30Rnd_556x45mm_B_M193_stanag_gry",
	"gm_30Rnd_556x45mm_B_M855_stanag_gry",
	
	"gm_colt4x20_ar15_blk",						// Scope

	"gm_suppressor_atec150_556mm_blk",			// Suppressor

	"gm_m16a1_blk"
];

CVO_A_BASE append [		// ASAS Upgrade Kit
	"gm_suppressor_atec150_762mm_blk",       // G3/33 Accessories
	"gm_colt4x20_stanagClaw_blk",
	"gm_suppressor_atec150_762mm_long_blk",
	"gm_suppressor_atec150_556mm_long_blk",

	"gm_g3ka4_blk",							// G3/33 Rifles
	"gm_g3ka4_oli",
	"gm_g3a4_blk",
	"gm_g3a4_oli",
	"gm_hk33ka3_blk",
	"gm_hk33a3_blk",
	"gm_g3a3_oli",
	"gm_g3a3_blk",
	"gm_hk33a2_blk",
	"gm_hk33ka2_blk",

	"gm_40Rnd_556x45mm_B_DM11_hk33_blk",	// 40 rnd mags for the G33
	"gm_40Rnd_556x45mm_B_T_DM21_hk33_blk",

	"gm_20Rnd_762x51mm_AP_DM151_g3_blk",   //Improved G3 ammo
	"gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk",
	"gm_10Rnd_762x51mm_AP_DM151_g3_blk",   
	"gm_10Rnd_762x51mm_B_T_DM21A2_g3_blk",
	"gm_zln1k_ir_dovetail_gry",				//RPK Accs
	"gm_zln1k_ir_dovetail_blk",
	"gm_pka_dovetail_gry",
	"gm_pka_dovetail_blk",	
	"gm_suppressor_pbs1_762mm_blk",

	"gm_handgrenade_frag_dm51a1",   //New grenades, explosive and smoke
	"gm_smokeshell_grn_dm21",
	"gm_smokeshell_red_dm23",
	"gm_smokeshell_wht_dm25",
	"gm_smokeshell_org_dm32",
	"gm_smokeshell_yel_dm26",

	"ACRE_PRC343"					//AN-PRC 343 Short range radio
];
// Lategame Uniforms and Wear
CVO_A_BASE append [
	//uniforms
	"eou_gorka_1",
	"U_O_R_Gorka_01_black_F",
	"U_B_GEN_Commander_F",
	"gm_ge_uniform_pilot_commando_rolled_blk",
	"gm_ge_uniform_pilot_commando_blk",
	"gm_ge_uniform_pilot_commando_rolled_gry",
	"gm_ge_uniform_pilot_commando_gry",
	//hats and masks
	"gm_ge_facewear_stormhood_dustglasses_blk",
	"gm_ge_facewear_stormhood_blk",
	"H_Watchcap_black_hsless",
	"H_Watchcap_blu_hsless",
	"H_Watchcap_blue2_hsless",
	"H_Watchcap_blueblack_hsless",
	"H_Watchcap_drkgrey_hsless",
	"H_Watchcap_grey_hsless",
	"H_Watchcap_greyblack_hsless",
	"H_Watchcap_greyblue_hsless",
	"H_Booniehat_black",
	"H_Booniehat_blue",
	"H_Booniehat_grey",
	//vests
	"gm_ge_vest_sov_armor_80_blk",
	"gm_ge_vest_sov_80_blk",
	//Weapons
	"gm_mpm85_blk",
	"gm_akmn_wud",
	"gm_akmsn_wud",
	"gm_m16a1_blk",
	"gm_m16a2_blk",
	"gm_mp5sd6_blk",
	"gm_mp5sd5_blk",
	//accessories
	"gm_suppressor_pbs4_545mm_blk",
	"gm_streamlight_sl20_stanaghk_blk",
	"gm_streamlight_sl20_stanaghk_brn",
	"gm_blits_stanagHK_blk",
	"gm_feroz24_stanagHK_blk",
	"gm_ls45_ir_stanaghk_blk",
	"gm_ls45_red_stanaghk_blk",
	"gm_maglite_3d_stanaghk_blk",
	"gm_rv_stanagHK_blk",
	"gm_rv_stanagClaw_blk",
	"gm_rv_stanagClaw_oli",
	"gm_ls45_ir_stanagClaw_blk",
	"gm_ls45_ir_stanagClaw_oli",
	"gm_suppressor_hknavy_9mm_gry",
	"gm_suppressor_kacnavy_9mm_blk",
	"gm_suppressor_kacnavyk_9mm_blk",
	"gm_suppressor_kacnavysd_9mm_blk",
	"gm_suppressor_tgpp_9mm_blk",
	"gm_30Rnd_762x39mm_B_57N231_ak47_blk",
	"gm_30Rnd_762x39mm_B_T_57N231P_ak47_blk",
	"gm_30Rnd_762x39mm_BSD_57N231U_ak47_blk",
	"gm_surefire_l60_wht_hoseclamp_blk",
	"gm_surefire_l60_ir_hoseclamp_blk",
	"gm_surefire_l60_red_hoseclamp_blk",
	"gm_surefire_l72_grn_hoseclamp_blk",
	"gm_surefire_l72_red_hoseclamp_blk",
	"gm_surefire_l75_ir_hoseclamp_blk"
	];




// #####################################################
// ###### DEFINE ROLE KIT HERE - AVAILABLE FOR SPECIFIC ROLES
// #####################################################

// CUSTOM ROLES
// Formatting Template: [  "KEY/ROLENAME",	[  ["ARRAY OF CLASSNAMES"],{"Optional CODEBLOCK"}  ]  ]

// #####################################################
// ## HOW TO DEFINE A UNIT AS A SPECIFIC ROLE:
// ## UNIT INIT FIELD IN THE EDITOR:
// this setVariable ["CVO_A_Roles",["Officer"]];
// ## Further Notes: 
// -- "Medic" and "Engineer" are autoDetected based on ACE Skill Level  
// #####################################################


CVO_A_HASH_RoleKit = createHashMapFromArray [
	["Medic", [[
		"gm_ge_backpack_satchel_80_san",

		"ACE_quikclot", 
		"ACE_elasticBandage", 
		"ACE_adenosine", 
		"ACE_plasmaIV",
		"ACE_plasmaIV_500",
		"ACE_plasmaIV_250",
		"ACE_bloodIV",
		"ACE_bloodIV_500",
		"ACE_bloodIV_250",
		"ACE_surgicalKit",
		"ACE_suture"],
	{}]],
	["Engineer", [[
		// Tools and Detectors
		"ACE_VMM3","ACE_VMH3", 
		"ACE_wirecutter", "ToolKit", 
		"ACE_Fortify", "ACE_DefusalKit",
		
		// Explosives
		"DemoCharge_Remote_Mag",	"ACE_DemoCharge_Remote_Mag_Throwable",
		"SatchelCharge_Remote_Mag",	"ACE_SatchelCharge_Remote_Mag_Throwable",

		"gm_explosive_plnp_charge",
		"gm_explosive_petn_charge",

		"tsp_frameCharge_mag",
		"tsp_stickCharge_mag",
		"tsp_stickCharge_auto_mag",

		// Uniforms
		"gm_ge_uniform_pilot_commando_rolled_gry",	"gm_ge_uniform_pilot_commando_rolled_blk",
		"gm_ge_uniform_pilot_commando_gry",			"gm_ge_uniform_pilot_commando_blk",

		"gm_ge_army_backpack_80_oli",
		"gm_ge_bgs_vest_type18_blk",
		"gm_ge_headgear_psh77_up_oli",				"gm_ge_headgear_psh77_down_oli"], 
		{}]],
	["Officer", [
		["gm_akm_pallad_wud",
		"H_Beret_blk",
		"gm_ge_headgear_beret_blk",
		"ACRE_PRC148",
		"gm_m72a3_oli",
		"gm_hk69a1_blk",
		"1Rnd_HE_Grenade_shell",
		"ACE_40mm_Flare_white",
		"ACE_40mm_Flare_green",
		"ACE_40mm_Flare_red",
		"ACE_40mm_Flare_ir",
		"1Rnd_SmokeBlue_Grenade_shell",
		"1Rnd_SmokeGreen_Grenade_shell",
		"1Rnd_SmokeOrange_Grenade_shell",
		"1Rnd_SmokePurple_Grenade_shell",
		"1Rnd_SmokeRed_Grenade_shell",
		"1Rnd_Smoke_Grenade_shell",
		"1Rnd_SmokeYellow_Grenade_shell"],
		{}	
	]],
	["Marksman", [
		["gm_nspu_dovetail_gry",
		"gm_nspu_dovetail_blk",
		"gm_pso6x36_1_dovetail_gry",
		"gm_pso6x36_1_dovetail_blk",
		"gm_pso1_dovetail_gry",
		"gm_pso1_dovetail_blk",
		"gm_svd_wud",
		"gm_diavari_da_stanagClaw_oli",
		"gm_diavari_da_stanagClaw_blk",
		"gm_suppressor_tgpv_762mm_blk",
		"gm_10Rnd_762x54mmR_B_T_7t2_svd_blk",
		"gm_10Rnd_762x54mmR_API_7bz3_svd_blk",
		"gm_10Rnd_762x54mmR_AP_7N1_svd_blk",
		"gm_g3sg1_blk",
		"gm_hk33sg1_blk",
		"gm_zf10x42_stanagClaw_blk",
		"gm_zf10x42_stanagClaw_oli",
		"gm_feroz51_stanagClaw_oli"
		],
		{}	
	]], 
	["Anti-Tank", [
		[
			"gm_pzf84_oli",
			"gm_pzf44_2_oli",					
			"gm_feroz2x17_pzf44_2_blk",
			"gm_feroz51_pzf84_oli",
			"gm_feroz2x17_pzf84_blk",
			"gm_1Rnd_44x537mm_heat_dm32_pzf44_2",
			"gm_1Rnd_84x245mm_heat_t_DM32_carlgustaf",
			"gm_1Rnd_84x245mm_ILLUM_DM16_carlgustaf",
			"gm_rpg7_wud",
			"gm_pgo7v_blk",
			"gm_1Rnd_40mm_heat_pg7v_rpg7",
			"gm_1Rnd_40mm_heat_pg7vl_rpg7",
			"gm_feroz51_pzf44_2_oli"
		],
		{}	
	]],
	["Machinegunner", [
		[
		"gm_rpkn_wud",
		"gm_rpk_wud",
		"gm_zvn64_rpk",
		"gm_lmgk500s_blk",
		"gm_lmgk500s_prp",
		"gm_lmgk500s_brn",
		"gm_rpk74n_wud",
		"gm_rpk74n_brn",
		"gm_rpk74n_blk",
		"gm_rpk74n_prp",
		"gm_mg8a2_blk",
		"gm_g8_bipod_blk",
		"gm_75Rnd_762x39mm_AP_7N23_ak47_blk",
		"gm_75Rnd_762x39mm_BSD_57N231U_ak47_blk",
		"gm_75Rnd_762x39mm_B_T_57N231P_ak47_blk",
		"gm_75Rnd_762x39mm_B_57N231_ak47_blk",
		"gm_45Rnd_545x39mm_B_T_7T3_ak74_blk",
		"gm_45Rnd_545x39mm_B_T_7T3_ak74_prp",
		"gm_45Rnd_545x39mm_B_T_7T3_ak74_org",
		"gm_45Rnd_545x39mm_B_7N6_ak74_blk",
		"gm_45Rnd_545x39mm_B_7N6_ak74_prp",
		"gm_45Rnd_545x39mm_B_7N6_ak74_org",
		"gm_100Rnd_762x51mm_B_T_DM21A2_mg8_oli"
		],
		{}	
	]]
];

// #####################################################
// ###### DEFINE PLAYER KIT HERE - Based on STEAM64 ID
// #####################################################

// Formatting Template: [  "STEAM64",	["PlayerName", "["ARRAY OF CLASSNAMES"],{"Optional CODEBLOCK"}  ]  ]


CVO_A_HASH_PlayerKit = createHashMapFromArray [
	["_SP_PLAYER_", 		["Editor Debug", 	["ACE_Banana"],		{systemChat "CVO_A_Playerkit test Successful - Banana Given"; 	["ACE_Banana"]}		]	],	
	["76561197970306509", 	["Zorn", 			[	"gm_pl_headgear_beret_blu",	"gm_ge_headgear_beret_un", "G_Spectacles_Tinted", "G_Balaclava_blk", "H_Beret_blk", "gm_flashlightp2_brk_akkhandguard_dino"],	{[]}	]],
	["76561198090236234", 	["Recon", 			[	"gm_flashlightp2_brk_akkhandguard_dino",		"gm_rv_ris_blk",	"gm_hk512_ris_wud"			 ],	{[]}	]],
	["76561198147307775", 	["Clone", 			[	"gm_pl_headgear_beret_blu",	"gm_ge_headgear_beret_un"],	{[]}	]] 	
];

diag_log ("[CVO] [Arsenal_Define] - completed");
