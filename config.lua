--[[EXPORTS: 
1) exports['BetterFight']:AlterSpecificGunRecoil(`WEAPON_PISTOL`, 4.00) -- Alter a specific guns recoil. This is a multiplier, first value is the weapons hash and the second is the multiplier value.
2) exports['BetterFight']:AlterGeneralGunRecoil(0.5) -- Alter the general recoil system. Can get any value. This is a multiplier. So recoil now is recoil * 0.5.
3) exports['BetterFight']:ResetAllGunRecoil() -- Resets all guns recoils. This should be only used when you have used the 2 exports above and you want to reset all the data.]]


Config = {}


--SERVERSIDE STUFF--
Config.CheckVersion =  false -- Enable/Disable version checker. Prints on serverside console.
--SERVERSIDE STUFF--


--CROSSHAIR--
Config.UseCustomCrosshair = false -- Turn on/off custom crosshair.
Config.RemoveCrosshairOnFirstPerson = true -- Turn on/off custom crosshair while On First Person. IGNORE if the above is set to FALSE.
--CROSSHAIR--


--DISABLE HEADSHOT--
Config.RemoveHeadshots = false -- Disable/Enable headshots only on players.
--DISABLE HEADSHOT--


--JUMP SPAM PREVENTION--
Config.JumpSpamPrevention = true -- Disable/Enable the jump spam prevention system. Pretty much if you spam the jump button it will make you fall down.
Config.JumpSpamPreventionTimer = 2000 -- Timer for the jump spam prevention system. This is in milliseconds. So 2000 is 2 seconds.
--JUMP SPAM PREVENTION--


--REMOVE PISTOL WHIPPING--
Config.RemovePistolWhipping = true
--REMOVE PISTOL WHIPPING--


--ROLL PREVENTION--
Config.RollPrevention = true -- Disable/Enable the roll prevention. Just doesn't allow players to roll while aiming. Yes, it is annoying in gta.
--ROLL PREVENTION--


--VIEW CAM FORCER--
Config.UseViewCamForcer = false -- Turn on/off view cam forcer inside vehicles.
Config.ViewCamForcerStartTime = 200
Config.ViewCamForcerFinishTime = 0
Config.UseVehicleViewCamForcer = false -- Turn on/off view cam forcer inside vehicles.
Config.UseDisable3rdPersonShooting = false
Config.UseFirstJoinViewCamForcer = false -- Disable the first person on first join. To stop the loop you need to trigger our export on your first joined event. exports['BetterFight']:ViewCamForcerJoined()
Config.DefaultViewCamModeOnFirstJoin = 1 -- Sets their prespective. Choose either 1/2/3.
--VIEW CAM FORCER--


--WEAPON DAMAGES--
Config.UseCustomWeaponDamages = true -- Disable/Enable custom weapon damages.
--WEAPON DAMAGES--


--RECOIL--
Config.UseRecoil = true -- Turn on/off recoil.
Config.RightLeftRecoil = false -- Turn on/off right left movement recoil.
Config.RightLeftRecoilRandomiser = true --If this is set to true then the recoil inside a vehicle will not trigger all the time. The value below will set the chance if true.
Config.RightLeftRecoilRandomiserChance = 20 --This is a percentage out of 100. The higher it is, the higher the chance of recoil kicking inside a vehicle.

Config.UseVehicleRecoil = true --Enable/Disable recoil inside vehicles.
Config.UseScreenExplosions = true --Adds a small screen explosion, it is affected by how big recoil is.

Config.GripMultiplier =  true
Config.SuppressorMultiplier = true

Config.LoweredFirstPersonRecoil = true -- Turn on/off lowered recoil while being in first person mode..
Config.LoweredFirstPersonRecoilValue = 0.7 -- Value for lowered recoil. It is actually the recoil * the value. So the lower the value is here the lowered it will be in first person.
--RECOIL--


--WEAPON SETTINGS--
Config.Weapons= {

    --You can change the values down here, feel free to also comment any weapons you don't want and add any weapons you do want. Only throwables are missing from this list.
    --Here's a link for you to find all weapons in GTA V: https://wiki.rage.mp/index.php?title=Weapons

    --Pistol--
    [1] = { hash = `WEAPON_PISTOL`, recoil = 1.46, rightLeftRecoil = 1.00, vehicleRecoil = 0.65, vehicleRightLeftRecoil = 0.65, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.85},
    [2] = { hash = `WEAPON_PISTOL_MK2`, recoil = 0.75, rightLeftRecoil = 0.30, vehicleRecoil = 0.30, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.86},
    [3] = { hash = `WEAPON_COMBATPISTOL`, recoil = 1.20, rightLeftRecoil = 1.00, vehicleRecoil = 0.0, vehicleRightLeftRecoil = 0.8, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.85},
    [4] = { hash = `WEAPON_APPISTOL`, recoil = 1.90, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [5] = { hash = `WEAPON_STUNGUN`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [6] = { hash = `WEAPON_PISTOL50`, recoil = 6.20, rightLeftRecoil = 4.00, vehicleRecoil = 6.10, vehicleRightLeftRecoil = 6.00, gripMultiplier = 0.80, suppressorMultiplier = 1.50, damageMultiplier = 0.65},
    [7] = { hash = `WEAPON_DEAGLE`, recoil = 6.20, rightLeftRecoil = 15.00, vehicleRecoil = 10.10, vehicleRightLeftRecoil = 10.00, gripMultiplier = 0.80, suppressorMultiplier = 1.50, damageMultiplier = 1.00},
    [8] = { hash = `WEAPON_SNSPISTOL`, recoil = 0.80, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.50},
    [9] = { hash = `WEAPON_SNSPISTOL_MK2`, recoil = 0.30, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.65},
    [10] = { hash = `WEAPON_HEAVYPISTOL`, recoil = 3.50, rightLeftRecoil = 1.00, vehicleRecoil = 0.40, vehicleRightLeftRecoil = 1.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.77},
    [11] = { hash = `WEAPON_VINTAGEPISTOL`, recoil = 4.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.78},
    [12] = { hash = `WEAPON_FLAREGUN`, recoil = 3.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [13] = { hash = `WEAPON_MARKSMANPISTOL`, recoil = 6.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.40},
    [14] = { hash = `WEAPON_REVOLVER`, recoil = 14.00, rightLeftRecoil = 18.00, vehicleRecoil = 5.10, vehicleRightLeftRecoil = 4.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.30},
    [15] = { hash = `WEAPON_REVOLVER_MK2`, recoil = 18.00, rightLeftRecoil = 18.00, vehicleRecoil = 5.10, vehicleRightLeftRecoil = 5.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.30},
    [16] = { hash = `WEAPON_DOUBLEACTION`, recoil = 6.00, rightLeftRecoil = 1.00, vehicleRecoil = 3.10, vehicleRightLeftRecoil = 3.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.35},
    [17] = { hash = `WEAPON_RAYPISTOL`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [18] = { hash = `WEAPON_CERAMICPISTOL`, recoil = 1.20, rightLeftRecoil = 1.00, vehicleRecoil = 0.40, vehicleRightLeftRecoil = 0.40, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.60},
    [19] = { hash = `WEAPON_NAVYREVOLVER`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 8.00},
    [20] = { hash = `WEAPON_GADGETPISTOL`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    --Pistol--


    --Submachine Guns--
    [20] = { hash = `WEAPON_MICROSMG`, recoil = 3.20, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [21] = { hash = `WEAPON_SMG`, recoil = 0.90, rightLeftRecoil = 0.80, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.70},
    [22] = { hash = `WEAPON_SMG_MK2`, recoil = 0.10, rightLeftRecoil = 0.10, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 1.35, damageMultiplier = 1.65},
    [23] = { hash = `WEAPON_ASSAULTMG`, recoil = 2.50, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [24] = { hash = `WEAPON_COMBATPDW`, recoil = 1.10, rightLeftRecoil = 0.80, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.60},
    [25] = { hash = `WEAPON_MACHINEPISTOL`, recoil = 2.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.55},
    [26] = { hash = `WEAPON_MINISMG`, recoil = 1.70, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [27] = { hash = `WEAPON_RAYCARBINE`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [27] = { hash = `WEAPON_P90FM`, recoil = 0.50, rightLeftRecoil = 0.50, vehicleRecoil = 0.10, vehicleRightLeftRecoil = 0.00, gripMultiplier = 0.80, suppressorMultiplier = 0.70, damageMultiplier = 0.70},
    --Submachine Guns--


    --Shotguns--
    [28] = { hash = `WEAPON_PUMPSHOTGUN`, recoil = 6.00, rightLeftRecoil = 5.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.70},
    [29] = { hash = `WEAPON_PUMPSHOTGUN_MK2`, recoil = 3.50, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.60},
    [30] = { hash = `WEAPON_SAWNOFFSHOTGUN`, recoil = 6.00, rightLeftRecoil = 4.00, vehicleRecoil = 4.10, vehicleRightLeftRecoil = 20.00, gripMultiplier = 10.80, suppressorMultiplier = 0.72, damageMultiplier = 0.40},
    [31] = { hash = `WEAPON_ASSAULTSHOTGUN`, recoil = 7.30, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.80},
    [32] = { hash = `WEAPON_BULLPUPSHOTGUN`, recoil = 4.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.10},
    [33] = { hash = `WEAPON_MUSKET`, recoil = 8.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.10},
    [34] = { hash = `WEAPON_HEAVYSHOTGUN`, recoil = 6.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.10},
    [35] = { hash = `WEAPON_DBSHOTGUN`, recoil = 5.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.10},
    [36] = { hash = `WEAPON_AUTOSHOTGUN`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.10},
    [37] = { hash = `WEAPON_COMBATSHOTGUN`, recoil = 4.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.10},
    --Shotguns--

    --Assault Rifles--
    [38] = { hash = `WEAPON_ASSAULTRIFLE`, recoil = 1.30, rightLeftRecoil = 0.00, vehicleRecoil = 0.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.65},
    [39] = { hash = `WEAPON_ASSAULTRIFLE_MK2`, recoil = 1.20, rightLeftRecoil = 0.00, vehicleRecoil = 0.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.70},
    [40] = { hash = `WEAPON_CARBINERIFLE`, recoil = 1.15, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.68},
    [41] = { hash = `WEAPON_CARBINERIFLE_MK2`, recoil = 1.10, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.75},
    [42] = { hash = `WEAPON_ADVANCEDRIFLE`, recoil = 1.25, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.65},
    [43] = { hash = `WEAPON_SPECIALCARBINE`, recoil = 1.11, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.68},
    [44] = { hash = `WEAPON_SPECIALCARBINE_MK2`, recoil = 1.5, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.73},
    [45] = { hash = `WEAPON_BULLPUPRIFLE`, recoil = 1.35, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.60},
    [46] = { hash = `WEAPON_BULLPUPRIFLE_MK2`, recoil = 1.55, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.75},
    [47] = { hash = `WEAPON_COMPACTRIFLE`, recoil = 1.8, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.60},
    [48] = { hash = `WEAPON_MILITARYRIFLE`, recoil = 1.50, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.76},
    --Assault Rifles--   

    --Light Machine Guns--
    [49] = { hash = `WEAPON_MG`, recoil = 1.80, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [50] = { hash = `WEAPON_COMBATMG`, recoil = 1.70, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [51] = { hash = `WEAPON_COMBATMG_MK2`, recoil = 1.70, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [52] = { hash = `WEAPON_GUSENBERG`, recoil = 1.80, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    --Light Machine Guns--

    --Sniper Rifles--
    [53] = { hash = `WEAPON_SNIPERRIFLE`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.00},
    [54] = { hash = `WEAPON_HEAVYSNIPER`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.00},
    [55] = { hash = `WEAPON_HEAVYSNIPER_MK2`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.00},
    [56] = { hash = `WEAPON_MARKSMANRIFLE`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.00},
    [57] = { hash = `WEAPON_MARKSMANRIFLE_MK2`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 0.00},
    --Sniper Rifles--   

    --Heavy Weapons--
    [58] = { hash = `WEAPON_RPG`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [59] = { hash = `WEAPON_GRENADELAUNCHER`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [60] = { hash = `WEAPON_GRENADELAUNCHER_SMOKE`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [61] = { hash = `WEAPON_MINIGUN`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [62] = { hash = `WEAPON_FIREWORK`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [63] = { hash = `WEAPON_RAILGUN`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [64] = { hash = `WEAPON_HOMINGLAUNCHER`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [65] = { hash = `WEAPON_COMPACTLAUNCHER`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [66] = { hash = `WEAPON_RAYMINIGUN`, recoil = 1.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    --Heavy Weapons--      

    --Melee--
    [70] = { hash = `WEAPON_UNARMED`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.25},
    [71] = { hash = `WEAPON_DAGGER`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.25},
    [72] = { hash = `WEAPON_BAT`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.25},
    [73] = { hash = `WEAPON_BOTTLE`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.25},
    [74] = { hash = `WEAPON_CROWBAR`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.25},
    [75] = { hash = `WEAPON_FLASHLIGHT`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.25},
    [76] = { hash = `WEAPON_GOLFCLUB`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.25},
    [77] = { hash = `WEAPON_HAMMER`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.25},
    [78] = { hash = `WEAPON_HATCHET`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.25},
    [79] = { hash = `WEAPON_KNUCKLE`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.25},
    [80] = { hash = `WEAPON_KNIFE`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.25},
    [81] = { hash = `WEAPON_MACHETE`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.25},
    [82] = { hash = `WEAPON_SWITCHBLADE`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.50},
    [83] = { hash = `WEAPON_NIGHTSTICK`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.25},
    [84] = { hash = `WEAPON_WRENCH`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.25},
    [85] = { hash = `WEAPON_BATTLEAXE`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.75},
    [86] = { hash = `WEAPON_POOLCUE`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.25},
    [87] = { hash = `WEAPON_STONE_HATCHET`, recoil = 0.00, vehicleRecoil = 0.00, gripMultiplier = 0.00, suppressorMultiplier = 0.00, damageMultiplier = 0.25},
    --Melee--

    [88] = { hash = `WEAPON_ASSAULTSMG`, recoil = 2.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
    [89] = { hash = `WEAPON_SMOKEGRENADE`, recoil = 100.00, rightLeftRecoil = 1.00, vehicleRecoil = 1.10, vehicleRightLeftRecoil = 2.00, gripMultiplier = 0.80, suppressorMultiplier = 0.72, damageMultiplier = 1.00},
}
