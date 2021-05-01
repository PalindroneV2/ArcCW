AddCSLuaFile()

-- SPAWNABLE
SWEP.Spawnable = false -- set to true to make it actually spawnable
SWEP.AdminOnly = false -- self-explanatory

-- TRIVIA
-- TrueName is used in case the True Names option is enabled.
-- You should make the PrintName an alternative, usually more fantastical or imaginary name for the gun,
-- With the TrueName being its real life name.
-- Alternatively, the PrintName could be the name a gun has in a game, versus its name in real life.
SWEP.PrintName = "ArcCW Base" -- "9mm SMG"
SWEP.TrueName = "ArcCW Base" -- "MP5"

SWEP.Category = "ArcCW - [CATEGORY]"

SWEP.Trivia_Class = nil -- "Submachine Gun"
SWEP.Trivia_Desc = nil -- "Common 9mm submachine gun. Well rounded performance."
SWEP.Trivia_Manufacturer = nil -- "HK"
SWEP.Trivia_Calibre = nil -- "9x19mm"
SWEP.Trivia_Mechanism = nil -- "Roller-Delayed Blowback"
SWEP.Trivia_Country = nil -- "Austria"
SWEP.Trivia_Year = nil -- 1968

-- HOLDTYPES
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "smg"
SWEP.HoldtypeCustomize = "slam"
SWEP.HoldtypeNPC = nil

-- MODEL

-- Has to be set to true to make c_hands work
SWEP.UseHands = true

SWEP.ViewModel = "" -- Viewmodel for the weapon
SWEP.WorldModel = "" -- Worldmodel

SWEP.MirrorVMWM = false -- If set to true, allows the viewmodel to be used as a worldmodel.
SWEP.MirrorWorldModel = nil -- Alternative model for MirrorVMWM. Must have the same bones as the viewmodel.
-- MirrorWorldModel could be a lower quality version of the viewmodel.
-- If MirrorVMWM is true, all worldmodel-affecting values are unused and only VM affecting ones will make a difference.

-- If set, WorldModelOffset allows the world model to be offset from its default position.
--[[
SWEP.WorldModelOffset = {
    pos        =    Vector(0, 0, 0),
    ang        =    Angle(0, 0, 0),
    bone    =    "ValveBiped.Bip01_R_Hand", -- optional
    scale   =   1
}]]

SWEP.PresetBase = nil -- Used for Presets. Make this weapon share saves with this one.

SWEP.KillIconAlias = nil -- set to other weapon class to share select and kill icons

SWEP.GuaranteeLaser = false -- GUARANTEE that the laser position will be accurate, so don't bother with sighted correction

-- Used to control default bodygroups, WM bodygroups, and skin.
SWEP.DefaultBodygroups = "00000000"
SWEP.DefaultWMBodygroups = "00000000"
SWEP.DefaultSkin = 0
SWEP.DefaultWMSkin = 0

SWEP.DefaultPoseParams = {} -- {["pose"] = 0.5}
SWEP.DefaultWMPoseParams = {}

-- If set to true, the left hand will not be hidden when customizing.
SWEP.NoHideLeftHandInCustomization = false

-- NPCs
SWEP.NotForNPCS = false
SWEP.NPCWeaponType = nil -- string or table, the NPC weapons for this gun to replace
-- if nil, this will be based on holdtype
SWEP.NPCWeight = 100 -- relative likeliness for an NPC to have this weapon
SWEP.TTTWeaponType = nil -- string or table, like NPCWeaponType but specifically for TTT weapons (takes precdence over NPCWeaponType)
SWEP.TTTWeight = 100 -- like NPCWeight but for TTT gamemode

-- STATS

SWEP.Damage = 26 -- damage done point-blank
SWEP.DamageMin = 10 -- damage done at maximum range
SWEP.DamageRand = 0 -- damage will vary randomly each shot by this fraction.
-- e.g. DamageRand of 0.5 and Damage of 100 = damage of 50-150
SWEP.RangeMin = 0 -- how far bullets will retain their maximum damage for
SWEP.Range = 200 -- range at which bullets will deal DamageMin.
-- In METRES.
SWEP.Penetration = 4 -- approx values for materials:
-- One unit of penetration = can penetrate one hammer unit of material
-- Concrete: 0.75
-- Metal: 2
-- Sand: 0.25
-- Tile: 0.5
-- Glass: 0.025
SWEP.DamageType = DMG_BULLET -- Damage type bullets do on impact.
-- Special effects for DMG_BLAST and DMG_BURN
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 400 -- projectile muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = false

SWEP.TriggerDelay = false -- Set to true to play the "trigger" animation before firing. Delay time is dependent on animation time.

-- PHYS BULLETS
SWEP.PhysBulletMuzzleVelocity = nil -- override phys bullet muzzle velocity
SWEP.PhysBulletDrag = 1
SWEP.PhysBulletGravity = 1
SWEP.PhysBulletDontInheritPlayerVelocity = true -- No "Browning Effect"
-- if false, bullets will have the player velocity added to them

-- some variables for meddling with physical bullets
SWEP.AlwaysPhysBullet = false
SWEP.NeverPhysBullet = false
SWEP.PhysTracerProfile = 0 -- color for phys tracer.
-- there are 8 options:
-- 0 = normal
-- 1 = red
-- 2 = green
-- 3 = blue
-- 4 = yellow
-- 5 = violet
-- 6 = cyan
-- 7 = black/invisible

-- TRACERS
SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "arccw_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)

-- AMMO
SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 25 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = nil -- Used for MagExtender and MagReducer.
SWEP.ReducedClipSize = nil -- If not set, they will do nothing.

-- Take over the default clip value to set the default clip only once.
SWEP.ForceDefaultClip = nil
SWEP.ForceDefaultAmmo = nil

SWEP.AmmoPerShot = 1 -- Ammo needed to shoot once
SWEP.InfiniteAmmo = false -- weapon can reload for free
SWEP.BottomlessClip = false -- weapon never has to reload

SWEP.DoNotEquipmentAmmo = false -- do not automatically give this weapon unique ammo when arccw_equipmentammo is used
-- Overrides SWEP.Throwable

SWEP.IsShotgun = false -- weapon receives shotgun ammo types

-- RELOAD
SWEP.ShotgunReload = false -- reloads like shotgun instead of magazines
SWEP.HybridReload = false -- reload normally when empty, reload like shotgun when part full

SWEP.ManualAction = false -- pump/bolt action
SWEP.NoLastCycle = false -- do not cycle on last shot

SWEP.RevolverReload = false -- cases all eject on reload

SWEP.ReloadInSights = false -- can sight in while reloading
SWEP.ReloadInSights_CloseIn = 0.25
SWEP.ReloadInSights_FOVMult = 0.875
SWEP.LockSightsInReload = false -- do not allow unscoping while reloading

SWEP.Disposable = false -- when all ammo is expended, the gun will remove itself when holstered

SWEP.AutoReload = false -- when weapon is drawn, the gun will reload itself.

-- RECOIL

SWEP.Recoil = 2 -- vertical recoil
SWEP.RecoilSide = 1 -- horizontal recoil
-- horizontal recoil is harder to control than vertical

-- visual recoil rise
SWEP.RecoilRise = 1

-- maximum amount of recoil blowback this gun can receive per shot
SWEP.MaxRecoilBlowback = -1

-- multiplier for visual recoil, which is usually automatically calculated
SWEP.VisualRecoilMult = 1.25

-- amount of "punch" to the view the gun receives
SWEP.RecoilPunch = 1.5

-- direction to apply vertical/horizontal recoil in.
-- horizontal recoil will also be applied to the sides.
SWEP.RecoilDirection = Angle(1, 0, 0)
SWEP.RecoilDirectionSide = Angle(0, 1, 0)

-- FIRE MODE
SWEP.Delay = 60 / 750 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemode = 1 -- 0: safe, 1: semi, 2: auto, negative: burst
SWEP.Firemodes = { -- table of firemodes
    -- {
    --     Mode = 1,
    --     CustomBars = "---_#!",
--[[ 
                Custom bar setup
        Colored variants        Classic
        'a' Filled              '-' Filled
        'b' Outline             '_' Outline
        'd' CLR w Outline       '!' Red w Outline        
                    '#' Empty
]]
    --     PrintName = "PUMP",
    --     RunAwayBurst = false,
    --     AutoBurst = false, -- hold fire to continue firing bursts
    --     PostBurstDelay = 0,
    --     ActivateElements = {}
    -- }
}

SWEP.ShotgunSpreadDispersion = false -- dispersion will cause pattern to increase instead of shifting
SWEP.ShotgunSpreadPattern = nil
SWEP.ShotgunSpreadPatternOverrun = nil
-- {Angle(1, 1, 0), Angle(1, 0, 0) ..}
-- list of how far each pellet should veer
-- if only one pellet then it'll use the first index
-- if two then the first two
-- in case of overrun pellets will start looping, preferably with the second one, so use that for the loopables
-- precision will still be applied

-- Multiply recoil on a per shot basis
SWEP.ShotRecoilTable = nil -- {[1] = 0.25, [2] = 2, ...}
SWEP.ShotModifierTable = nil -- {[1] = {["Mult_Sway" = 0.25]}, [2] = {["Mult_Sway" = 0.5, "Mult_Recoil" = 0.5]}, ...}

-- ACCURACY
SWEP.AccuracyMOA = 15 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air

-- IRON SIGHTS
SWEP.KeepBaseIrons = false -- do not override iron sights when scope installed

SWEP.IronSightStruct = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(0, 0, 0),
    Magnification = 1,
    SwitchToSound = "",
    SwitchFromSound = "",
    ScrollFunc = ArcCW.SCROLL_NONE,
    CrosshairInSights = false,
}

-- HANDLING
SWEP.SightTime = 0.33 -- Time it takes to enter iron sights
SWEP.SprintTime = nil -- If set, use this time to enter/exit sprint
SWEP.ShootWhileSprint = false -- This gun is able to shoot even while sprinting

SWEP.SpeedMult = 1 -- Speed multiplier for the player while holding this gun
SWEP.SightedSpeedMult = 0.75 -- Speed multiplier for the player while scoped in
SWEP.ShootSpeedMult = 1 -- Speed multiplier for the player while they're shooting

SWEP.Sway = 0 -- Amount that this gun sways

-- BIPOD
SWEP.Bipod_Integral = false -- Integral bipod (ie, weapon model has one)
SWEP.BipodDispersion = .1 -- Bipod dispersion for Integral bipods
SWEP.BipodRecoil = 0.25 -- Bipod recoil for Integral bipods

-- SOUNDS
SWEP.ShootVol = 125 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootPitchVariation = 0.05

SWEP.FirstShootSound = nil
SWEP.ShootSound = ""
SWEP.FirstShootSoundSilenced = nil
SWEP.ShootDrySound = nil -- Add an attachment hook for Hook_GetShootDrySound please!
SWEP.DistantShootSound = nil
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1-1.wav"
SWEP.FiremodeSound = "weapons/arccw/firemode.wav"
SWEP.MeleeSwingSound = "weapons/arccw/melee_lift.wav"
SWEP.MeleeMissSound = "weapons/arccw/melee_miss.wav"
SWEP.MeleeHitSound = "weapons/arccw/melee_hitworld.wav"
SWEP.MeleeHitNPCSound = "physics/body/body_medium_break2.wav"
SWEP.EnterBipodSound = "weapons/arccw/bipod_down.wav"
SWEP.ExitBipodSound = "weapons/arccw/bipod_up.wav"
SWEP.SelectUBGLSound =  "weapons/arccw/ubgl_select.wav"
SWEP.ExitUBGLSound = "weapons/arccw/ubgl_exit.wav"

-- EFFECTS
SWEP.NoFlash = nil -- disable light flash
SWEP.MuzzleEffect = nil
SWEP.FastMuzzleEffect = nil
SWEP.GMMuzzleEffect = false -- Use Gmod muzzle effects rather than particle effects
SWEP.ImpactEffect = nil
SWEP.ImpactDecal = nil

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellMaterial = nil
SWEP.ShellEffect = nil
SWEP.ShellEjectPosCorrection = nil
SWEP.ShellScale = 1
SWEP.ShellPhysScale = 1
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShellSoundsTable
SWEP.ShellRotate = 0
SWEP.ShellTime = 0.5
SWEP.ShellNoSmoke = false -- no smoke cloud when a shell ejects

-- EFFECT POINTS
SWEP.MuzzleEffectAttachment = 1 -- which .qc attachment point to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which .qc attachment point to put the case effect on
SWEP.ProceduralViewBobAttachment = nil -- attachment on which coolview is affected by, default is muzzleeffect
SWEP.CamAttachment = nil -- if set, this attachment will control camera movement

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}
SWEP.CaseBones = {}
-- Like bulletbones but for revolver reload shell cases
SWEP.StripperClipBones = {}
-- Like bulletbones but for stripper clip bullets being inserted

-- the same as the bone versions but works via bodygroups.
-- bodygroups work the same as in attachmentelements.
-- [0] = {ind = 0, bg = 1}
SWEP.BulletBGs = {}
SWEP.CaseBGs = {}
SWEP.StripperClipBGs = {}

-- JAMMING
SWEP.Jamming = false
SWEP.HeatCapacity = 200 -- rounds that can be fired non-stop before the gun jams, playing the "fix" animation
SWEP.HeatDissipation = 2 -- rounds' worth of heat lost per second
SWEP.HeatLockout = false -- overheating means you cannot fire until heat has been fully depleted
SWEP.HeatDelayTime = 0.5
SWEP.HeatFix = false -- when the "fix" animation is played, all heat is restored.

-- SHIELD
SWEP.ShieldProps = nil
-- {
--     {
--         Model = "",
--         Pos = Vector(0, 0, 0),
--         Ang = Angle(0, 0, 0),
--         Bone = "", -- leave blank for valvebiped right hand
--         Resistance = 5, -- one unit of this object counts for how much penetration amount
--     }
-- }

-- DRIVEBY
SWEP.AllowDriveby = false -- This weapon can be used in seats
SWEP.DrivebyModifierTable = nil -- {[1] = {["Mult_Sway" = 0.25]}, [2] = {["Mult_Sway" = 0.5, "Mult_Recoil" = 0.5]}, ...}

-- MELEE
SWEP.CanBash = true
SWEP.PrimaryBash = false -- primary attack triggers melee attack

SWEP.MeleeDamage = 25
SWEP.MeleeRange = 16
SWEP.MeleeDamageType = DMG_CLUB
SWEP.MeleeTime = 0.5
SWEP.MeleeGesture = nil
SWEP.MeleeAttackTime = 0.2

-- Right click is replaced with a melee attack
SWEP.Melee2 = false
SWEP.Melee2Damage = 25
SWEP.Melee2Range = 16
SWEP.Melee2Time = 0.5
SWEP.Melee2Gesture = nil
SWEP.Melee2AttackTime = 0.2

-- POSITIONS
SWEP.BashPreparePos = Vector(2.187, -4.117, -7.14)
SWEP.BashPrepareAng = Angle(32.182, -3.652, -19.039)

SWEP.BashPos = Vector(8.876, 0, 0)
SWEP.BashAng = Angle(-16.524, 70, -11.046)

SWEP.ActivePos = Vector(0, 0, 0) -- position for when the gun is normal
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.ReloadPos = nil -- position for the gun while it's reloading
SWEP.ReloadAng = nil

SWEP.CrouchPos = nil -- while crouching
SWEP.CrouchAng = nil

SWEP.HolsterPos = Vector(0.532, -6, 0) -- position to pull/holster gun to when deploying or holstering
SWEP.HolsterAng = Angle(-4.633, 36.881, 0)

SWEP.CustomizePos = Vector(9.824, 0, -4.897)
SWEP.CustomizeAng = Angle(12.149, 30.547, 0)

SWEP.InBipodPos = Vector(-8, 0, -4)
SWEP.InBipodMult = Vector(2, 1, 1)

-- When using custom sprint animations, set this to the same as ActivePos and ActiveAng
SWEP.SprintPos = nil
SWEP.SprintAng = nil

-- BARREL

-- Barrel Offset is a position offset for where bullets come out of the gun, so it doesn't shoot from your eyes.
SWEP.BarrelOffsetSighted = Vector(0, 0, 0)
SWEP.BarrelOffsetCrouch = nil
SWEP.BarrelOffsetHip = Vector(3, 0, -3)

SWEP.BarrelLength = 24

-- ATTACHMENT ELEMENTS

-- An attachment element defines a set of appearance tweaks to make to a specific weapon.
-- These should not be confused with attachments themselves.
-- This system is in place in order to help make appearance changes that are different between weapons, but linked to the same attachment, possible.
SWEP.DefaultElements = {} -- {"ele1", "ele2"}

-- As usual, WM related variables will not be used if MirrorVMWM is set to true, and can be safely ignored if you are using it.
SWEP.AttachmentElements = {
    -- ["name"] = {
    --     RequireFlags = {}, -- same as attachments
    --     ExcludeFlags = {},
    --     NamePriority = 0, -- higher = more likely to be chosen
    --     NameChange = "",
    --     TrueNameChange = "",
    --     AddPrefix = "",
    --     AddSuffix = "",
    --     VMPoseParams = {}, -- {["pose"] = 0.5}
    --     VMColor = Color(),
    --     VMMaterial = "",
    --     VMBodygroups = {{ind = 1, bg = 1}},
    --     VMElements = {
    --         {
    --             Model = "",
    --             Bone = "",
    --             Offset = {
    --                 pos = Vector(),
    --                 ang = Angle(),
    --             },
    --             ModelSkin = 0,
    --             ModelBodygroups = "",
    --             Scale = Vector(1, 1, 1),
    --             IsMuzzleDevice = false -- this element is a muzzle device, and the muzzle flash should come from here.
    --         }
    --     },
    --     VMOverride = "", -- change the view model to something else. Please make sure it's compatible with the last one.
    --     VMBoneMods = {
    --         ["bone"] = Vector(0, 0, 0)
    --     },
    --     WMPoseParams = {}, -- {["pose"] = 0.5}
    --     WMColor = Color(),
    --     WMMaterial = "",
    --     WMBodygroups = {},
    --     WMElements = {
    --         {
    --             Model = "",
    --             Offset = {
    --                 pos = Vector(),
    --                 ang = Angle(),
    --             },
    --             IsMuzzleDevice = false -- this element is a muzzle device, and the muzzle flash should come from here.
    --         }
    --     },
    --     WMOverride = "", -- change the world model to something else. Please make sure it's compatible with the last one.
    --     WMBoneMods = {
    --         ["bone"] = Vector(0, 0, 0)
    --     },
    --     AttPosMods = {
    --         [1] = {
    --             bone = "", -- optional
    --             vpos = Vector(0, 0, 0),
    --             vang = Angle(0, 0, 0),
    --             wpos = Vector(0, 0, 0),
    --             wang = Angle(0, 0, 0),
    --             SlideAmount = { -- only if base att has slideable
    --                 vmin = Vector(0, 0, 0),
    --                 vmax = Vector(0, 0, 0),
    --                 wmin = Vector(0, 0, 0),
    --                 wmax = Vector(0, 0, 0)
    --             }
    --         }
    --     }
    -- }
}

-- Reject specific attachments
SWEP.RejectAttachments = {
    -- ["optic_docter"] = true -- stop this attachment from being usable on this gun
}

-- Overwrite values on attachments to be what you specifically want
SWEP.AttachmentOverrides = {
    -- ["optic_docter"] = {} -- allows you to overwrite atttbl values
}

-- ATTACHMENTS

-- This table is what gives ArcCW the CW.
SWEP.Attachments = {}
-- [1] = {
--     PrintName = "Optic", -- print name
--     DefaultAttName = "Iron Sights", -- used to display the "no attachment" text
--     DefaultAttIcon = Material(),
--     Slot = "pic_sight", -- what kind of attachments can fit here
--     MergeSlots = {}, -- these other slots will be merged into this one.
--     Bone = "sight", -- relevant bone any attachments will be mostly referring to
--     WMBone = "ValveBiped.Bip01_L_Hand", -- set it to change parent bone of attachment WM
--     KeepBaseIrons = false,
--     ExtraSightDist = 0,
--     Offset = {
--         vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
--         vang = Angle(0, 0, 0),
--         wpos = Vector(0, 0, 0), -- same, for the worldmodels
--         wang = Angle(0, 0, 0)
--     },
--     RejectAttachments = {}, -- specific blacklist of attachments this slot cannot accept. Needs to be like {"optic_mrs" = true}
--     VMScale = Vector(1, 1, 1),
--     WMScale = Vector(1, 1, 1),
--     SlideAmount = { -- how far this attachment can slide in both directions.
--         -- overrides Offset.
--         vmin = Vector(0, 0, 0),
--         vmax = Vector(0, 0, 0),
--         wmin = Vector(0, 0, 0),
--         wmax = Vector(0, 0, 0),
--     },
--     CorrectiveAng = Vector(1, 1, 1), -- okay, I know I said sights were pain-free.
--     CorrectivePos = Vector(0, 0, 0), -- that won't always be the case. Use these to fix it. Issues mainly crop up in case of sights parented to bones that are not a root bone.
--     InstalledEles = {"toprail"}, -- activate these AttachmentElements if something is installed
--     DefaultEles = {""} -- activeate these AttachmentElements *unless* something is installed
--     Hidden = false, -- attachment cannot be seen in customize menu
--     Integral = false, -- attachment is assumed never to change
--     RandomChance = 1, -- multiplies chance this slot will get a random attachment
--     DoNotRandomize = false,
--     NoWM = false, -- do not make this show up on worldmodel
--     NoVM = false, -- what do *you* think this one does?
--     FreeSlot = false, -- slot does not count towards attachment capacity
--     -- ABOUT THE FLAG SYSTEM:
--     -- Attachments and slots can give flags
--     -- All attachments automatically give themselves as a flag, e.g. "optic_mrs"
--     -- If requirements are not satisfied, the slot or attachment will not be attachable
--     ExcludeFlags = {}, -- if the weapon has this flag, hide this slot
--     RequireFlags = {}, -- if the weapon does not have all these flags, hide this slot
--     GivesFlags = {} -- give these slots if something is installed here
--     HideIfBlocked = false, -- If flag requirements are not met, do not show the attachment at all
-- }

SWEP.TTT_DoNotAttachOnBuy = false -- don't give all attachments when bought

-- ANIMATIONS

-- There are several things that may be referred to as animations in ArcCW.
-- In order to reduce confusion, an entry in the SWEP.Animations table is an "Animation table entry" or "SWEP.Animations entry".
-- Animations that are referred to by the Source table are "Sequences".
-- ACT_ animations are not used by ArcCW.

-- ready: deploy first time
-- draw
-- holster
-- reload
-- fire
-- cycle (for bolt/pump actions)
-- bash
-- fix
-- enter_bipod
-- exit_bipod
-- enter_sight
-- exit_sight
-- a_to_b: switch from firemode a to firemode b. e.g.: 1_to_2
-- idle
-- idle_sights
-- idle_sprint
-- idle_bipod
-- enter_inspect
-- idle_inspect
-- exit_inspect
-- enter_ubgl
-- exit_ubgl
-- idle_ubgl

-- you can append suffixes for different states
-- append list:

-- _iron, _sights, or _sight    for sighted variation
-- _sprint                        for sprinting variation
-- _bipod                        for bipod variation
-- _empty                        for empty variation

-- this does not apply to reload animations.

-- !! they MUST be in the order of this list.
-- example: fire_iron_bipod_empty

-- The following hooks take two arguments, (swep, anim)
-- Anim is a SWEP.Animations table entry.
-- use Hook_TranslateAnimation, same as in attachment, to do even more behaviours
-- use Hook_SelectReloadAnimation to change the reload animation
-- use Hook_SelectInsertAnimation to change the shotgun reload insert animation
-- use Hook_SelectFireAnimation to change the fire animation
-- use Hook_SelectCycleAnimation to change the cycle/pump animation
-- use Hook_SelectBashAnimation to change the bash animation

-- Hooks can be used as part of an attachment, or as part of the SWEP table itself.
-- e.g. function SWEP:Hook_TranslateAnimation()

-- Disclaimer: LHIK is *actually* a type of forward kinematics.
-- If you prefer, LHIK can stand for "Left Hand Individual Kinematics" or some shit

SWEP.Animations = {
    -- ["idle"] = {
    --     Source = "idle",
    --     Time = 10
    -- },
    -- ["draw"] = {
    --     RestoreAmmo = 1, -- only used by shotgun empty insert reload
    --     Source = "deploy",
    --     RareSource = "", -- 1/RareSourceChance of playing this animation instead
    --     RareSourceChance = 100, -- Chance the rapper
    --     Time = 0.5, -- Overwrites the duration of the animation (changes speed). Don't set to use sequence length
    --     Mult = 1, -- Multiplies the rate of animation.
    --     TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2, -- third person animation to play when this animation is played
    --     TPAnimStartTime = 0, -- when to start it from
    --     Checkpoints = {}, -- time checkpoints. If weapon is unequipped, the animation will continue to play from these checkpoints when reequipped.
    --     ShellEjectAt = 0, -- animation includes a shell eject at these times
    --     LHIKIn = 0.25, -- In/Out controls how long it takes to switch to regular animation.
    --     LHIKOut = 0.25, -- (not actually inverse kinematics)
    --     LHIKEaseIn = 0.1, -- how long LHIK eases in.
    --     LHIKEaseOut = 0.1, -- if no value is specified then ease = lhikin
    --     LHIKTimeline = { -- allows arbitrary LHIK values to be interpolated between
    --         {
    --             t = 0.1,
    --             lhik = 0,
    --         },
    --         {
    --             t = 0.25,
    --             lhik = 1
    --         }
    --     },
    --     LHIK = true, -- basically disable foregrips on this anim
    --     SoundTable = {
    --         {
    --             s = "", -- sound; can be string or table
    --             p = 100, -- pitch
    --             v = 75, -- volume
    --             t = 1, -- time at which to play relative to Animations.Time
    --             c = CHAN_ITEM, -- channel to play the sound

    --             -- Can also play an effect at the same time
    --             e = "", -- effect name
    --             att = nil, -- attachment, defaults to shell attachment
    --             mag = 100, -- magnitude
    --             -- also capable of modifying bodygroups
    --             ind = 0,
    --             bg = 0,
    --             -- and poseparams
    --             pp = "pose",
    --             ppv = 0.25,
    --         }
    --     },
    --     ViewPunchTable = {
    --         {
    --             p = Vector(0, 0, 0),
    --             t = 1
    --         }
    --     },
    --     ProcDraw = false, -- for draw/deploy animations, always procedurally draw in addition to playing animation
    --     ProcHolster = false, -- procedural holster weapon, THEN play animation
    --     LastClip1OutTime = 0, -- when should the belt visually replenish on a belt fed
    --     MinProgress = 0, -- how much time in seconds must pass before the animation can be cancelled
    -- }
}