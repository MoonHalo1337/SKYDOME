local get_prop = { EntityList.GetIntNetvar, EntityList.GetFloatNetvar, EntityList.GetBoolNetvar, EntityList.GetVectorNetvar }
local class_list = {
        'DT_AI_BaseNPC',
        'DT_BaseAnimating',
        'DT_BaseAnimatingOverlay',
        'DT_BaseAttributableItem',
        'DT_BaseBeam',
        'DT_BaseButton',
        'DT_BaseCSGrenade',
        'DT_BaseCSGrenadeProjectile',
        'DT_BaseCombatCharacter',
        'DT_BaseCombatWeapon',
        'DT_BaseDoor',
        'DT_BaseEntity',
        'DT_BaseFlex',
        'DT_BaseGrenade',
        'DT_BaseParticleEntity',
        'DT_BasePlayer',
        'DT_BasePropDoor',
        'DT_BaseTeamObjectiveResource',
        'DT_BaseToggle',
        'DT_BaseTrigger',
        'DT_BaseVPhysicsTrigger',
        'DT_BaseViewModel',
        'DT_BaseWeaponWorldModel',
        'DT_Beam',
        'DT_BeamSpotlight',
        'DT_BoneFollower',
        'DT_BreakableProp',
        'DT_BreakableSurface',
        'DT_CChicken',
        'DT_CFish',
        'DT_CHostage',
        'DT_CSGameRulesProxy',
        'DT_CSPlayer',
        'DT_CSPlayerResource',
        'DT_CSRagdoll',
        'DT_CSTeam',
        'DT_CascadeLight',
        'DT_ColorCorrection',
        'DT_ColorCorrectionVolume',
        'DT_DecoyGrenade',
        'DT_DecoyProjectile',
        'DT_DetailController',
        'DT_DustTrail',
        'DT_DynamicLight',
        'DT_DynamicProp',
        'DT_EconEntity',
        'DT_Embers',
        'DT_EntityDissolve',
        'DT_EntityFlame',
        'DT_EntityFreezing',
        'DT_EntityParticleTrail',
        'DT_EnvAmbientLight',
        'DT_EnvDOFController',
        'DT_EnvParticleScript',
        'DT_EnvProjectedTexture',
        'DT_EnvScreenEffect',
        'DT_EnvScreenOverlay',
        'DT_EnvTonemapController',
        'DT_EnvWind',
        'DT_FEPlayerDecal',
        'DT_FireCrackerBlast',
        'DT_FireSmoke',
        'DT_FireTrail',
        'DT_Flashbang',
        'DT_FogController',
        'DT_FootstepControl',
        'DT_FuncAreaPortalWindow',
        'DT_FuncBrush',
        'DT_FuncConveyor',
        'DT_FuncLadder',
        'DT_FuncMonitor',
        'DT_FuncMoveLinear',
        'DT_FuncOccluder',
        'DT_FuncReflectiveGlass',
        'DT_FuncRotating',
        'DT_FuncSmokeVolume',
        'DT_FuncTrackTrain',
        'DT_Func_Dust',
        'DT_Func_LOD',
        'DT_HEGrenade',
        'DT_HandleTest',
        'DT_HostageCarriableProp',
        'DT_IncendiaryGrenade',
        'DT_Inferno',
        'DT_InfoLadderDismount',
        'DT_InfoOverlayAccessor',
        'DT_Item',
        'DT_ItemAssaultSuitUseable',
        'DT_ItemDogtags',
        'DT_Item_Healthshot',
        'DT_LightGlow',
        'DT_MaterialModifyControl',
        'DT_MolotovGrenade',
        'DT_MolotovProjectile',
        'DT_MovieDisplay',
        'DT_MovieExplosion',
        'DT_NextBot',
        'DT_ParticleFire',
        'DT_ParticlePerformanceMonitor',
        'DT_ParticleSmokeGrenade',
        'DT_ParticleSystem',
        'DT_PhysBox',
        'DT_PhysBoxMultiplayer',
        'DT_PhysMagnet',
        'DT_PhysicsProp',
        'DT_PhysicsPropMultiplayer',
        'DT_PlantedC4',
        'DT_Plasma',
        'DT_PlayerResource',
        'DT_PointCamera',
        'DT_PointCommentaryNode',
        'DT_PointWorldText',
        'DT_PoseController',
        'DT_PostProcessController',
        'DT_Precipitation',
        'DT_PrecipitationBlocker',
        'DT_PredictedViewModel',
        'DT_PropDoorRotating',
        'DT_PropJeep',
        'DT_PropVehicleChoreoGeneric',
        'DT_PropVehicleDriveable',
        'DT_Prop_Hallucination',
        'DT_ProxyToggle',
        'DT_QuadraticBeam',
        'DT_Ragdoll',
        'DT_RagdollManager',
        'DT_Ragdoll_Attached',
        'DT_RocketTrail',
        'DT_RopeKeyframe',
        'DT_SceneEntity',
        'DT_SensorGrenade',
        'DT_SensorGrenadeProjectile',
        'DT_ShadowControl',
        'DT_SlideshowDisplay',
        'DT_SmokeGrenade',
        'DT_SmokeGrenadeProjectile',
        'DT_SmokeStack',
        'DT_SmokeTrail',
        'DT_SpatialEntity',
        'DT_SporeExplosion',
        'DT_SporeTrail',
        'DT_SpotlightEnd',
        'DT_Sprite',
        'DT_SpriteOriented',
        'DT_SpriteTrail',
        'DT_StatueProp',
        'DT_SteamJet',
        'DT_Sun',
        'DT_SunlightShadowControl',
        'DT_TEArmorRicochet',
        'DT_TEBSPDecal',
        'DT_TEBeamEntPoint',
        'DT_TEBeamEnts',
        'DT_TEBeamFollow',
        'DT_TEBeamLaser',
        'DT_TEBeamPoints',
        'DT_TEBeamRing',
        'DT_TEBeamRingPoint',
        'DT_TEBeamSpline',
        'DT_TEBloodSprite',
        'DT_TEBloodStream',
        'DT_TEBreakModel',
        'DT_TEBubbleTrail',
        'DT_TEBubbles',
        'DT_TEClientProjectile',
        'DT_TEDecal',
        'DT_TEDust',
        'DT_TEDynamicLight',
        'DT_TEEffectDispatch',
        'DT_TEEnergySplash',
        'DT_TEExplosion',
        'DT_TEFireBullets',
        'DT_TEFizz',
        'DT_TEFootprintDecal',
        'DT_TEFoundryHelpers',
        'DT_TEGaussExplosion',
        'DT_TEGlowSprite',
        'DT_TEImpact',
        'DT_TEKillPlayerAttachments',
        'DT_TELargeFunnel',
        'DT_TEMetalSparks',
        'DT_TEMuzzleFlash',
        'DT_TEParticleSystem',
        'DT_TEPhysicsProp',
        'DT_TEPlantBomb',
        'DT_TEPlayerAnimEvent',
        'DT_TEPlayerDecal',
        'DT_TEProjectedDecal',
        'DT_TERadioIcon',
        'DT_TEShatterSurface',
        'DT_TEShowLine',
        'DT_TESmoke',
        'DT_TESparks',
        'DT_TESprite',
        'DT_TESpriteSpray',
        'DT_TEWorldDecal',
        'DT_Team',
        'DT_TeamplayRoundBasedRulesProxy',
        'DT_Tesla',
        'DT_TestTraceline',
        'DT_TriggerPlayerMovement',
        'DT_TriggerSoundOperator',
        'DT_VGuiScreen',
        'DT_VoteController',
        'DT_WaterBullet',
        'DT_WaterLODControl',
        'DT_WeaponAK47',
        'DT_WeaponAWP',
        'DT_WeaponAug',
        'DT_WeaponBaseItem',
        'DT_WeaponBizon',
        'DT_WeaponC4',
        'DT_WeaponCSBase',
        'DT_WeaponCSBaseGun',
        'DT_WeaponCubemap',
        'DT_WeaponCycler',
        'DT_WeaponDEagle',
        'DT_WeaponElite',
        'DT_WeaponFamas',
        'DT_WeaponFiveSeven',
        'DT_WeaponG3SG1',
        'DT_WeaponGalil',
        'DT_WeaponGalilAR',
        'DT_WeaponGlock',
        'DT_WeaponHKP2000',
        'DT_WeaponKnife',
        'DT_WeaponKnifeGG',
        'DT_WeaponM249',
        'DT_WeaponM3',
        'DT_WeaponM4A1',
        'DT_WeaponMAC10',
        'DT_WeaponMP5Navy',
        'DT_WeaponMP7',
        'DT_WeaponMP9',
        'DT_WeaponMag7',
        'DT_WeaponNOVA',
        'DT_WeaponNegev',
        'DT_WeaponP228',
        'DT_WeaponP250',
        'DT_WeaponP90',
        'DT_WeaponSCAR17',
        'DT_WeaponSCAR20',
        'DT_WeaponSG550',
        'DT_WeaponSG552',
        'DT_WeaponSG556',
        'DT_WeaponSSG08',
        'DT_WeaponSawedoff',
        'DT_WeaponScout',
        'DT_WeaponTMP',
        'DT_WeaponTaser',
        'DT_WeaponTec9',
        'DT_WeaponUMP45',
        'DT_WeaponUSP',
        'DT_WeaponXM1014',
        'DT_WearableItem',
        'DT_World',
}

local prop_list = {
    ['m_flAnimTime'] = 1,
    ['m_flSimulationTime'] = 2,
    ['m_cellbits'] = 3,
    ['m_cellX'] = 4,
    ['m_cellY'] = 5,
    ['m_cellZ'] = 6,
    ['m_vecOrigin'] = 7,
    ['m_angRotation'] = 8,
    ['m_nModelIndex'] = 9,
    ['m_fEffects'] = 10,
    ['m_nRenderMode'] = 11,
    ['m_nRenderFX'] = 12,
    ['m_clrRender'] = 13,
    ['m_iTeamNum'] = 14,
    ['m_iPendingTeamNum'] = 15,
    ['m_CollisionGroup'] = 16,
    ['m_flElasticity'] = 17,
    ['m_flShadowCastDistance'] = 18,
    ['m_hOwnerEntity'] = 19,
    ['m_hEffectEntity'] = 20,
    ['moveparent'] = 21,
    ['m_iParentAttachment'] = 22,
    ['m_iName'] = 23,
    ['movetype'] = 24,
    ['movecollide'] = 25,
    ['m_Collision'] = 26,
    ['m_vecMins'] = 27,
    ['m_vecMaxs'] = 28,
    ['m_nSolidType'] = 29,
    ['m_usSolidFlags'] = 30,
    ['m_nSurroundType'] = 31,
    ['m_triggerBloat'] = 32,
    ['m_vecSpecifiedSurroundingMins'] = 33,
    ['m_vecSpecifiedSurroundingMaxs'] = 34,
    ['m_iTextureFrameIndex'] = 35,
    ['m_bSimulatedEveryTick'] = 36,
    ['m_bAnimatedEveryTick'] = 37,
    ['m_bAlternateSorting'] = 38,
    ['m_bSpotted'] = 39,
    ['m_bSpottedBy'] = 40,
    ['m_bSpottedByMask'] = 41,
    ['m_bIsAutoaimTarget'] = 42,
    ['m_fadeMinDist'] = 43,
    ['m_fadeMaxDist'] = 44,
    ['m_flFadeScale'] = 45,
    ['m_nMinCPULevel'] = 46,
    ['m_nMaxCPULevel'] = 47,
    ['m_nMinGPULevel'] = 48,
    ['m_nMaxGPULevel'] = 49,
    ['m_flUseLookAtAngle'] = 50,
    ['m_flLastMadeNoiseTime'] = 51,

 ['m_flAnimTime'] = 52,
 ['m_flSimulationTime'] = 53,
 ['m_cellbits'] = 54,
 ['m_cellX'] = 55,
 ['m_cellY'] = 56,
 ['m_cellZ'] = 57,
 ['m_vecOrigin'] = 58,
 ['m_angRotation'] = 59,
 ['m_nModelIndex'] = 60,
 ['m_fEffects'] = 61,
 ['m_nRenderMode'] = 62,
 ['m_nRenderFX'] = 63,
 ['m_clrRender'] = 64,
 ['m_iTeamNum'] = 65,
 ['m_iPendingTeamNum'] = 66,
 ['m_CollisionGroup'] = 67,
 ['m_flElasticity'] = 68,
 ['m_flShadowCastDistance'] = 69,
 ['m_hOwnerEntity'] = 70,
 ['m_hEffectEntity'] = 71,
 ['moveparent'] = 72,
 ['m_iParentAttachment'] = 73,
 ['m_iName'] = 74,
 ['movetype'] = 75,
 ['movecollide'] = 76,
 ['m_Collision'] = 77,
  ['m_vecMins'] = 78,
  ['m_vecMaxs'] = 79,
  ['m_nSolidType'] = 80,
  ['m_usSolidFlags'] = 81,
  ['m_nSurroundType'] = 82,
  ['m_triggerBloat'] = 83,
  ['m_vecSpecifiedSurroundingMins'] = 84,
  ['m_vecSpecifiedSurroundingMaxs'] = 85,
  ['m_iTextureFrameIndex'] = 86,
  ['m_bSimulatedEveryTick'] = 87,
  ['m_bAnimatedEveryTick'] = 88,
  ['m_bAlternateSorting'] = 89,
  ['m_bSpotted'] = 90,
  ['m_bSpottedBy'] = 91,
   ['m_bSpottedByMask'] = 92,
    ['m_bIsAutoaimTarget'] = 93,
    ['m_fadeMinDist'] = 94,
    ['m_fadeMaxDist'] = 95,
    ['m_flFadeScale'] = 96,
    ['m_nMinCPULevel'] = 97,
    ['m_nMaxCPULevel'] = 98,
    ['m_nMinGPULevel'] = 99,
    ['m_nMaxGPULevel'] = 100,
    ['m_flUseLookAtAngle'] = 101,
    ['m_flLastMadeNoiseTime'] = 102,
['m_nSequence'] = 103,
['m_nForceBone'] = 104,
['m_vecForce'] = 105,
['m_nSkin'] = 106,
['m_nBody'] = 107,
['m_nHitboxSet'] = 108,
['m_flModelScale'] = 109,
['m_flPoseParameter'] = 110,
 ['m_flPlaybackRate'] = 111,
 ['m_flEncodedController'] = 112,
  ['m_bClientSideAnimation'] = 113,
  ['m_bClientSideFrameReset'] = 114,
  ['m_bClientSideRagdoll'] = 115,
  ['m_nNewSequenceParity'] = 116,
  ['m_nResetEventsParity'] = 117,
  ['m_nMuzzleFlashParity'] = 118,
  ['m_hLightingOrigin'] = 119,
  ['serveranimdata'] = 120,
   ['m_flCycle'] = 121,
   ['m_flFrozen'] = 122,
   ['m_ScaleType'] = 123,
   ['m_bSuppressAnimSounds'] = 124,
['overlay_vars'] = 125,
 ['m_AnimOverlay'] = 126,
  ['lengthproxy'] = 127,
   ['lengthprop15'] = 128,
['m_flexWeight'] = 129,
 ['m_blinktoggle'] = 130,
 ['m_viewtarget'] = 131,
['bcc_localdata'] = 132,
 ['m_flNextAttack'] = 133,
 ['bcc_nonlocaldata'] = 134,
  ['m_hMyWeapons'] = 135,
  ['m_LastHitGroup'] = 136,
  ['m_hActiveWeapon'] = 137,
  ['m_flTimeOfLastInjury'] = 138,
  ['m_nRelativeDirectionOfLastInjury'] = 139,
  ['m_hMyWeapons'] = 140,
   ['m_hMyWearables'] = 141,
['localdata'] = 142,
 ['m_Local'] = 143,
  ['m_chAreaBits'] = 144,
   ['m_chAreaPortalBits'] = 145,
    ['m_iHideHUD'] = 146,
    ['m_flFOVRate'] = 147,
    ['m_bDucked'] = 148,
    ['m_bDucking'] = 149,
    ['m_flLastDuckTime'] = 150,
    ['m_bInDuckJump'] = 151,
    ['m_nDuckTimeMsecs'] = 152,
    ['m_nDuckJumpTimeMsecs'] = 153,
    ['m_nJumpTimeMsecs'] = 154,
    ['m_flFallVelocity'] = 155,
    ['m_viewPunchAngle'] = 156,
    ['m_aimPunchAngle'] = 157,
    ['m_aimPunchAngleVel'] = 158,
    ['m_bDrawViewmodel'] = 159,
    ['m_bWearingSuit'] = 160,
    ['m_bPoisoned'] = 161,
    ['m_flStepSize'] = 162,
    ['m_bAllowAutoMovement'] = 163,
    ['m_skybox3d.scale'] = 164,
    ['m_skybox3d.origin'] = 165,
    ['m_skybox3d.area'] = 166,
    ['m_skybox3d.fog.enable'] = 167,
    ['m_skybox3d.fog.blend'] = 168,
    ['m_skybox3d.fog.dirPrimary'] = 169,
    ['m_skybox3d.fog.colorPrimary'] = 170,
    ['m_skybox3d.fog.colorSecondary'] = 171,
    ['m_skybox3d.fog.start'] = 172,
    ['m_skybox3d.fog.end'] = 173,
    ['m_skybox3d.fog.maxdensity'] = 174,
    ['m_skybox3d.fog.HDRColorScale'] = 175,
    ['m_audio.localSound[0]'] = 176,
    ['m_audio.localSound[1]'] = 177,
    ['m_audio.localSound[2]'] = 178,
    ['m_audio.localSound[3]'] = 179,
    ['m_audio.localSound[4]'] = 180,
    ['m_audio.localSound[5]'] = 181,
    ['m_audio.localSound[6]'] = 182,
    ['m_audio.localSound[7]'] = 183,
    ['m_audio.soundscapeIndex'] = 184,
    ['m_audio.localBits'] = 185,
    ['m_audio.entIndex'] = 186,
  ['m_vecViewOffset[0]'] = 187,
  ['m_vecViewOffset[1]'] = 188,
  ['m_vecViewOffset[2]'] = 189,
  ['m_flFriction'] = 190,
  ['m_fOnTarget'] = 191,
  ['m_nTickBase'] = 192,
  ['m_nNextThinkTick'] = 193,
  ['m_hLastWeapon'] = 194,
  ['m_vecVelocity[0]'] = 195,
  ['m_vecVelocity[1]'] = 196,
  ['m_vecVelocity[2]'] = 197,
  ['m_vecBaseVelocity'] = 198,
  ['m_hConstraintEntity'] = 199,
  ['m_vecConstraintCenter'] = 200,
  ['m_flConstraintRadius'] = 201,
  ['m_flConstraintWidth'] = 202,
  ['m_flConstraintSpeedFactor'] = 203,
  ['m_bConstraintPastRadius'] = 204,
  ['m_flDeathTime'] = 205,
  ['m_flNextDecalTime'] = 206,
  ['m_fForceTeam'] = 207,
  ['m_nWaterLevel'] = 208,
  ['m_flLaggedMovementValue'] = 209,
  ['m_hTonemapController'] = 210,
  ['pl'] = 211,
  ['deadflag'] = 212,
  ['m_iFOV'] = 213,
  ['m_iFOVStart'] = 214,
  ['m_flFOVTime'] = 215,
  ['m_iDefaultFOV'] = 216,
  ['m_hZoomOwner'] = 217,
  ['m_afPhysicsFlags'] = 218,
  ['m_hVehicle'] = 219,
  ['m_hUseEntity'] = 220,
  ['m_hGroundEntity'] = 221,
  ['m_iHealth'] = 222,
  ['m_lifeState'] = 223,
  ['m_iAmmo'] = 224,
   ['m_iBonusProgress'] = 225,
   ['m_iBonusChallenge'] = 226,
   ['m_flMaxspeed'] = 227,
   ['m_fFlags'] = 228,
   ['m_iObserverMode'] = 229,
   ['m_bActiveCameraMan'] = 230,
   ['m_bCameraManXRay'] = 231,
   ['m_bCameraManOverview'] = 232,
   ['m_bCameraManScoreBoard'] = 233,
   ['m_uCameraManGraphs'] = 234,
   ['m_iDeathPostEffect'] = 235,
   ['m_hObserverTarget'] = 236,
   ['m_hViewModel[0]'] = 237,
   ['m_hViewModel'] = 238,
   ['m_iCoachingTeam'] = 239,
   ['m_szLastPlaceName'] = 240,
   ['m_vecLadderNormal'] = 241,
   ['m_ladderSurfaceProps'] = 245,
   ['m_ubEFNoInterpParity'] = 246,
   ['m_hPostProcessCtrl'] = 247,
   ['m_hColorCorrectionCtrl'] = 248,
   ['m_PlayerFog.m_hCtrl'] = 249,
   ['m_vphysicsCollisionState'] = 250,
   ['m_hViewEntity'] = 251,
   ['m_bShouldDrawPlayerWhileUsingViewEntity'] = 252,
   ['m_flDuckAmount'] = 253,
   ['m_flDuckSpeed'] = 254,
}

local totype = {
    ['m_flAnimTime'] = 1,
    ['m_flSimulationTime'] = 1,
    ['m_cellbits'] = 1,
    ['m_cellX'] = 1,
    ['m_cellY'] = 1,
    ['m_cellZ'] = 1,
    ['m_vecOrigin'] = 4,
    ['m_angRotation'] = 4,
    ['m_nModelIndex'] = 1,
    ['m_fEffects'] = 1,
    ['m_nRenderMode'] = 1,
    ['m_nRenderFX'] = 1,
    ['m_clrRender'] = 1,
    ['m_iTeamNum'] = 1,
    ['m_iPendingTeamNum'] = 1,
    ['m_CollisionGroup'] = 1,
    ['m_flElasticity'] = 2,
    ['m_flShadowCastDistance'] = 2,
    ['m_hOwnerEntity'] = 1,
    ['m_hEffectEntity'] = 1,
    ['moveparent'] = 1,
    ['m_iParentAttachment'] = 1,
    ['m_iName'] = 1,
    ['movetype'] = 1,
    ['movecollide'] = 1,
    ['m_Collision'] = 2,
    ['m_vecMins'] = 4,
    ['m_vecMaxs'] = 4,
    ['m_nSolidType'] = 1,
    ['m_usSolidFlags'] = 1,
    ['m_nSurroundType'] = 1,
    ['m_triggerBloat'] = 1,
    ['m_vecSpecifiedSurroundingMins'] = 4,
    ['m_vecSpecifiedSurroundingMaxs'] = 4,
    ['m_iTextureFrameIndex'] = 1,
    ['m_bSimulatedEveryTick'] = 1,
    ['m_bAnimatedEveryTick'] = 1,
    ['m_bAlternateSorting'] = 1,
    ['m_bSpotted'] = 1,
    ['m_bSpottedBy'] = 2,
    ['m_bSpottedByMask'] = 2,
    ['m_bIsAutoaimTarget'] = 1,
    ['m_fadeMinDist'] = 2,
    ['m_fadeMaxDist'] = 2,
    ['m_flFadeScale'] = 2,
    ['m_nMinCPULevel'] = 1,
    ['m_nMaxCPULevel'] = 1,
    ['m_nMinGPULevel'] = 1,
    ['m_nMaxGPULevel'] = 1,
    ['m_flUseLookAtAngle'] = 2,
    ['m_flLastMadeNoiseTime'] = 2,

 ['m_flAnimTime'] = 1,
 ['m_flSimulationTime'] = 1,
 ['m_cellbits'] = 1,
 ['m_cellX'] = 1,
 ['m_cellY'] = 1,
 ['m_cellZ'] = 1,
 ['m_vecOrigin'] = 4,
 ['m_angRotation'] = 4,
 ['m_nModelIndex'] = 1,
 ['m_fEffects'] = 1,
 ['m_nRenderMode'] = 1,
 ['m_nRenderFX'] = 1,
 ['m_clrRender'] = 1,
 ['m_iTeamNum'] = 1,
 ['m_iPendingTeamNum'] = 1,
 ['m_CollisionGroup'] = 1,
 ['m_flElasticity'] = 2,
 ['m_flShadowCastDistance'] = 2,
 ['m_hOwnerEntity'] = 1,
 ['m_hEffectEntity'] = 1,
 ['moveparent'] = 1,
 ['m_iParentAttachment'] = 1,
 ['m_iName'] = 1,
 ['movetype'] = 1,
 ['movecollide'] = 1,
 ['m_Collision'] = 2,
  ['m_vecMins'] = 4,
  ['m_vecMaxs'] = 4,
  ['m_nSolidType'] = 1,
  ['m_usSolidFlags'] = 1,
  ['m_nSurroundType'] = 1,
  ['m_triggerBloat'] = 1,
  ['m_vecSpecifiedSurroundingMins'] = 4,
  ['m_vecSpecifiedSurroundingMaxs'] = 4,
  ['m_iTextureFrameIndex'] = 1,
  ['m_bSimulatedEveryTick'] = 1,
  ['m_bAnimatedEveryTick'] = 1,
  ['m_bAlternateSorting'] = 1,
  ['m_bSpotted'] = 1,
  ['m_bSpottedBy'] = 2,
   ['m_bSpottedByMask'] = 2,
    ['m_bIsAutoaimTarget'] = 1,
    ['m_fadeMinDist'] = 2,
    ['m_fadeMaxDist'] = 2,
    ['m_flFadeScale'] = 2,
    ['m_nMinCPULevel'] = 1,
    ['m_nMaxCPULevel'] = 1,
    ['m_nMinGPULevel'] = 1,
    ['m_nMaxGPULevel'] = 1,
    ['m_flUseLookAtAngle'] = 2,
    ['m_flLastMadeNoiseTime'] = 2,
['m_nSequence'] = 1,
['m_nForceBone'] = 1,
['m_vecForce'] = 4,
['m_nSkin'] = 1,
['m_nBody'] = 1,
['m_nHitboxSet'] = 1,
['m_flModelScale'] = 2,
['m_flPoseParameter'] = 1,
 ['m_flPlaybackRate'] = 2,
 ['m_flEncodedController'] = 1,
  ['m_bClientSideAnimation'] = 1,
  ['m_bClientSideFrameReset'] = 1,
  ['m_bClientSideRagdoll'] = 1,
  ['m_nNewSequenceParity'] = 1,
  ['m_nResetEventsParity'] = 1,
  ['m_nMuzzleFlashParity'] = 1,
  ['m_hLightingOrigin'] = 1,
  ['serveranimdata'] = 1,
   ['m_flCycle'] = 2,
   ['m_flFrozen'] = 2,
   ['m_ScaleType'] = 1,
   ['m_bSuppressAnimSounds'] = 1,
['overlay_vars'] = 1,
 ['m_AnimOverlay'] = 1,
  ['lengthproxy'] = 1,
   ['lengthprop15'] = 1,
['m_flexWeight'] = 1,
 ['m_blinktoggle'] = 1,
 ['m_viewtarget'] = 4,
['bcc_localdata'] = 1,
 ['m_flNextAttack'] = 2,
 ['bcc_nonlocaldata'] = 1,
  ['m_hMyWeapons'] = 1,
  ['m_LastHitGroup'] = 1,
  ['m_hActiveWeapon'] = 1,
  ['m_flTimeOfLastInjury'] = 2,
  ['m_nRelativeDirectionOfLastInjury'] = 1,
  ['m_hMyWeapons'] = 1,
   ['m_hMyWearables'] = 1,
['localdata'] = 1,
 ['m_Local'] = 1,
  ['m_chAreaBits'] = 1,
   ['m_chAreaPortalBits'] = 1,
    ['m_iHideHUD'] = 1,
    ['m_flFOVRate'] = 2,
    ['m_bDucked'] = 1,
    ['m_bDucking'] = 1,
    ['m_flLastDuckTime'] = 2,
    ['m_bInDuckJump'] = 1,
    ['m_nDuckTimeMsecs'] = 1,
    ['m_nDuckJumpTimeMsecs'] = 1,
    ['m_nJumpTimeMsecs'] = 1,
    ['m_flFallVelocity'] = 2,
    ['m_viewPunchAngle'] = 4,
    ['m_aimPunchAngle'] = 4,
    ['m_aimPunchAngleVel'] = 4,
    ['m_bDrawViewmodel'] = 1,
    ['m_bWearingSuit'] = 1,
    ['m_bPoisoned'] = 1,
    ['m_flStepSize'] = 2,
    ['m_bAllowAutoMovement'] = 1,
    ['m_skybox3d.scale'] = 1,
    ['m_skybox3d.origin'] = 4,
    ['m_skybox3d.area'] = 1,
    ['m_skybox3d.fog.enable'] = 1,
    ['m_skybox3d.fog.blend'] = 1,
    ['m_skybox3d.fog.dirPrimary'] = 4,
    ['m_skybox3d.fog.colorPrimary'] = 1,
    ['m_skybox3d.fog.colorSecondary'] = 1,
    ['m_skybox3d.fog.start'] = 2,
    ['m_skybox3d.fog.end'] = 2,
    ['m_skybox3d.fog.maxdensity'] = 2,
    ['m_skybox3d.fog.HDRColorScale'] = 2,
    ['m_audio.localSound[0]'] = 4,
    ['m_audio.localSound[1]'] = 4,
    ['m_audio.localSound[2]'] = 4,
    ['m_audio.localSound[3]'] = 4,
    ['m_audio.localSound[4]'] = 4,
    ['m_audio.localSound[5]'] = 4,
    ['m_audio.localSound[6]'] = 4,
    ['m_audio.localSound[7]'] = 4,
    ['m_audio.soundscapeIndex'] = 1,
    ['m_audio.localBits'] = 1,
    ['m_audio.entIndex'] = 1,
  ['m_vecViewOffset[0]'] = 2,
  ['m_vecViewOffset[1]'] = 2,
  ['m_vecViewOffset[2]'] = 2,
  ['m_flFriction'] = 2,
  ['m_fOnTarget'] = 1,
  ['m_nTickBase'] = 1,
  ['m_nNextThinkTick'] = 1,
  ['m_hLastWeapon'] = 1,
  ['m_vecVelocity[0]'] = 2,
  ['m_vecVelocity[1]'] = 2,
  ['m_vecVelocity[2]'] = 2,
  ['m_vecBaseVelocity'] = 4,
  ['m_hConstraintEntity'] = 1,
  ['m_vecConstraintCenter'] = 4,
  ['m_flConstraintRadius'] = 2,
  ['m_flConstraintWidth'] = 2,
  ['m_flConstraintSpeedFactor'] = 2,
  ['m_bConstraintPastRadius'] = 1,
  ['m_flDeathTime'] = 2,
  ['m_flNextDecalTime'] = 2,
  ['m_fForceTeam'] = 2,
  ['m_nWaterLevel'] = 1,
  ['m_flLaggedMovementValue'] = 2,
  ['m_hTonemapController'] = 1,
  ['pl'] = 1,
  ['deadflag'] = 1,
  ['m_iFOV'] = 1,
  ['m_iFOVStart'] = 1,
  ['m_flFOVTime'] = 2,
  ['m_iDefaultFOV'] = 1,
  ['m_hZoomOwner'] = 1,
  ['m_afPhysicsFlags'] = 1,
  ['m_hVehicle'] = 1,
  ['m_hUseEntity'] = 1,
  ['m_hGroundEntity'] = 1,
  ['m_iHealth'] = 1,
  ['m_lifeState'] = 1,
  ['m_iAmmo'] = 1,
   ['m_iBonusProgress'] = 1,
   ['m_iBonusChallenge'] = 1,
   ['m_flMaxspeed'] = 2,
   ['m_fFlags'] = 1,
   ['m_iObserverMode'] = 1,
   ['m_bActiveCameraMan'] = 1,
   ['m_bCameraManXRay'] = 1,
   ['m_bCameraManOverview'] = 1,
   ['m_bCameraManScoreBoard'] = 1,
   ['m_uCameraManGraphs'] = 1,
   ['m_iDeathPostEffect'] = 1,
   ['m_hObserverTarget'] = 1,
   ['m_hViewModel[0]'] = 1,
   ['m_hViewModel'] = 1,
   ['m_iCoachingTeam'] = 1,
   ['m_szLastPlaceName'] = 1,
   ['m_vecLadderNormal'] = 4,
   ['m_ladderSurfaceProps'] = 1,
   ['m_ubEFNoInterpParity'] = 1,
   ['m_hPostProcessCtrl'] = 1,
   ['m_hColorCorrectionCtrl'] = 1,
   ['m_PlayerFog.m_hCtrl'] = 1,
   ['m_vphysicsCollisionState'] = 1,
   ['m_hViewEntity'] = 1,
   ['m_bShouldDrawPlayerWhileUsingViewEntity'] = 1,
   ['m_flDuckAmount'] = 2,
   ['m_flDuckSpeed'] = 2,
}

client.get_prop = function(ent, v)
    if not ent or not v then return 'error entity' end
    return get_prop[totype[v]](ent, class_list[prop_list[v] < 52 and 12 or 16], v)
end