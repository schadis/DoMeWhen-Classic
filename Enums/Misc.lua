DMW.Enums.MeleeSpell = {
    WARRIOR = 5308,
    ROGUE = 1752
}

DMW.Enums.CreatureType = {
    [1] = "Beast",
    [2] = "Dragonkin",
    [3] = "Demon",
    [4] = "Elemental",
    [5] = "Giant",
    [6] = "Undead",
    [7] = "Humanoid",
    [8] = "Critter",
    [9] = "Mechanical",
    [10] = "Not specified",
    [11] = "Totem"
}

DMW.Enums.ClassColor = {
    DRUID = {r = 255, g = 125, b = 10},
    HUNTER = {r = 171, g = 212, b = 115},
    MAGE = {r = 64, g = 199, b = 235},
    PALADIN = {r = 245, g = 140, b = 186},
    PRIEST = {r = 255, g = 255, b = 255},
    ROGUE = {r = 255, g = 245, b = 105},
    SHAMAN = {r = 0, g = 112, b = 222},
    WARLOCK = {r = 135, g = 135, b = 237},
    WARRIOR = {r = 199, g = 156, b = 110}
}

DMW.Enums.UnitFlags = {
    --From trinity
    NotClientControlled = 0x1,
    PlayerCannotAttack = 0x2,
    RemoveClientControl = 0x4,
    PlayerControlled = 0x8,
    Preparation = 0x20,
    NoAttack = 0x80,
    NotAttackbleByPlayerControlled = 0x100,
    OnlyAttackableByPlayerControlled = 0x200,
    Looting = 0x400,
    PetIsAttackingTarget = 0x800,
    PVP = 0x1000,
    Silenced = 0x2000,
    CannotSwim = 0x4000,
    OnlySwim = 0x8000,
    NoAttack2 = 0x10000,
    Pacified = 0x20000,
    Stunned = 0x40000,
    AffectingCombat = 0x80000,
    OnTaxi = 0x100000,
    MainHandDisarmed = 0x200000,
    Confused = 0x400000,
    Feared = 0x800000,
    PossessedByPlayer = 0x1000000,
    NotSelectable = 0x2000000,
    Skinnable = 0x4000000,
    Mount = 0x8000000,
    PreventKneelingWhenLooting = 0x10000000,
    PreventEmotes = 0x20000000,
    Sheath = 0x40000000
}

DMW.Enums.NpcFlags = {
    Innkeeper = 0x00010000,
    Repair = 0x0000001000,
    PoisonVendor = 0x0000000400,
    FlightMaster = 0x0000002000,
    ReagentVendor = 0x0000000800,
    Trainer = 0x0000000010,
    ClassTrainer = 0x0000000020,
    ProfessionTrainer = 0x0000000040,
    AmmoVendor = 0x0000000100,
    FoodVendor = 0x0000000200,
    BlackMarket = 0x0080000000,
    TradeskillNpc = 0x4000000000,
    Vendor = 0x0000000080
}

DMW.Enums.MovementFlags = {
    None = 0x00000000,
    Forward = 0x00000001,
    Backward = 0x00000002,
    StrafeLeft = 0x00000004,
    StrafeRight = 0x00000008,
    Left = 0x00000010,
    Right = 0x00000020,
    PitchUp = 0x00000040,
    PitchDown = 0x00000080,
    Walking = 0x00000100,
    DisableGravity = 0x00000200,
    Root = 0x00000400,
    Falling = 0x00000800,
    FallingFar = 0x00001000,
    PendingStop = 0x00002000,
    PendingStrafeStop = 0x00004000,
    PendingForward = 0x00008000,
    PendingBackward = 0x00010000,
    PendingStrafeLeft = 0x00020000,
    PendingStrafeRight = 0x00040000,
    PendingRoot = 0x00080000,
    Swimming = 0x00100000,
    Ascending = 0x00200000,
    Descending = 0x00400000,
    CanFly = 0x00800000,
    Flying = 0x01000000,
    SplineElevation = 0x02000000,
    WaterWalking = 0x04000000,
    FallingSlow = 0x08000000,
    Hover = 0x10000000,
    DisableCollision = 0x20000000,
}

DMW.Enums.MovementFlags.Moving = bit.bor(DMW.Enums.MovementFlags.Forward, DMW.Enums.MovementFlags.Backward, DMW.Enums.MovementFlags.StrafeLeft, DMW.Enums.MovementFlags.StrafeRight, DMW.Enums.MovementFlags.Falling, DMW.Enums.MovementFlags.Ascending, DMW.Enums.MovementFlags.Descending)

DMW.Enums.DispelTypes = {}
DMW.Enums.DispelTypes.Magic = {
    [11] = true,
    [16] = true,
    [17] = true,
    [65] = true,
    [67] = true,
    [89] = true,
    [91] = true,
    [113] = true,
    [116] = true,
    [118] = true,
    [120] = true,
    [122] = true,
    [128] = true,
    [130] = true,
    [131] = true,
    [132] = true,
    [134] = true,
    [139] = true,
    [168] = true,
    [172] = true,
    [184] = true,
    [205] = true,
    [228] = true,
    [246] = true,
    [302] = true,
    [324] = true,
    [325] = true,
    [339] = true,
    [348] = true,
    [379] = true,
    [409] = true,
    [410] = true,
    [411] = true,
    [457] = true,
    [467] = true,
    [474] = true,
    [507] = true,
    [509] = true,
    [512] = true,
    [527] = true,
    [528] = true,
    [543] = true,
    [546] = true,
    [550] = true,
    [552] = true,
    [553] = true,
    [586] = true,
    [588] = true,
    [589] = true,
    [592] = true,
    [594] = true,
    [595] = true,
    [600] = true,
    [602] = true,
    [604] = true,
    [605] = true,
    [606] = true,
    [687] = true,
    [689] = true,
    [696] = true,
    [699] = true,
    [700] = true,
    [706] = true,
    [707] = true,
    [709] = true,
    [710] = true,
    [770] = true,
    [774] = true,
    [776] = true,
    [778] = true,
    [782] = true,
    [806] = true,
    [835] = true,
    [837] = true,
    [839] = true,
    [849] = true,
    [851] = true,
    [853] = true,
    [855] = true,
    [863] = true,
    [865] = true,
    [867] = true,
    [877] = true,
    [905] = true,
    [945] = true,
    [970] = true,
    [976] = true,
    [992] = true,
    [994] = true,
    [1006] = true,
    [1008] = true,
    [1022] = true,
    [1038] = true,
    [1044] = true,
    [1050] = true,
    [1058] = true,
    [1062] = true,
    [1075] = true,
    [1086] = true,
    [1090] = true,
    [1094] = true,
    [1112] = true,
    [1116] = true,
    [1126] = true,
    [1130] = true,
    [1138] = true,
    [1139] = true,
    [1243] = true,
    [1244] = true,
    [1245] = true,
    [1430] = true,
    [1449] = true,
    [1450] = true,
    [1451] = true,
    [1452] = true,
    [1453] = true,
    [1459] = true,
    [1460] = true,
    [1461] = true,
    [1463] = true,
    [1513] = true,
    [1663] = true,
    [1664] = true,
    [1665] = true,
    [1706] = true,
    [2090] = true,
    [2091] = true,
    [2140] = true,
    [2351] = true,
    [2353] = true,
    [2354] = true,
    [2379] = true,
    [2380] = true,
    [2381] = true,
    [2537] = true,
    [2601] = true,
    [2602] = true,
    [2637] = true,
    [2645] = true,
    [2647] = true,
    [2651] = true,
    [2652] = true,
    [2767] = true,
    [2791] = true,
    [2855] = true,
    [2871] = true,
    [2893] = true,
    [2941] = true,
    [2947] = true,
    [2970] = true,
    [3019] = true,
    [3045] = true,
    [3109] = true,
    [3130] = true,
    [3132] = true,
    [3136] = true,
    [3143] = true,
    [3145] = true,
    [3169] = true,
    [3204] = true,
    [3229] = true,
    [3233] = true,
    [3246] = true,
    [3247] = true,
    [3258] = true,
    [3261] = true,
    [3263] = true,
    [3264] = true,
    [3269] = true,
    [3355] = true,
    [3356] = true,
    [3369] = true,
    [3389] = true,
    [3416] = true,
    [3442] = true,
    [3443] = true,
    [3477] = true,
    [3485] = true,
    [3542] = true,
    [3574] = true,
    [3600] = true,
    [3602] = true,
    [3627] = true,
    [3631] = true,
    [3635] = true,
    [3636] = true,
    [3651] = true,
    [3742] = true,
    [3747] = true,
    [3825] = true,
    [3826] = true,
    [4057] = true,
    [4063] = true,
    [4077] = true,
    [4318] = true,
    [4320] = true,
    [4979] = true,
    [4980] = true,
    [5106] = true,
    [5115] = true,
    [5116] = true,
    [5138] = true,
    [5142] = true,
    [5195] = true,
    [5196] = true,
    [5202] = true,
    [5232] = true,
    [5234] = true,
    [5254] = true,
    [5262] = true,
    [5276] = true,
    [5320] = true,
    [5321] = true,
    [5322] = true,
    [5323] = true,
    [5324] = true,
    [5325] = true,
    [5337] = true,
    [5403] = true,
    [5484] = true,
    [5514] = true,
    [5515] = true,
    [5567] = true,
    [5570] = true,
    [5588] = true,
    [5589] = true,
    [5599] = true,
    [5628] = true,
    [5665] = true,
    [5679] = true,
    [5697] = true,
    [5782] = true,
    [5862] = true,
    [5917] = true,
    [6065] = true,
    [6066] = true,
    [6074] = true,
    [6075] = true,
    [6076] = true,
    [6077] = true,
    [6078] = true,
    [6117] = true,
    [6131] = true,
    [6136] = true,
    [6143] = true,
    [6146] = true,
    [6213] = true,
    [6215] = true,
    [6222] = true,
    [6223] = true,
    [6226] = true,
    [6229] = true,
    [6346] = true,
    [6358] = true,
    [6431] = true,
    [6469] = true,
    [6528] = true,
    [6605] = true,
    [6606] = true,
    [6615] = true,
    [6726] = true,
    [6728] = true,
    [6742] = true,
    [6756] = true,
    [6789] = true,
    [6820] = true,
    [6821] = true,
    [6822] = true,
    [6823] = true,
    [6844] = true,
    [6864] = true,
    [6866] = true,
    [6867] = true,
    [6870] = true,
    [6871] = true,
    [6873] = true,
    [6894] = true,
    [6940] = true,
    [6942] = true,
    [6949] = true,
    [6950] = true,
    [6957] = true,
    [6960] = true,
    [6984] = true,
    [6985] = true,
    [7001] = true,
    [7020] = true,
    [7074] = true,
    [7093] = true,
    [7127] = true,
    [7128] = true,
    [7140] = true,
    [7230] = true,
    [7231] = true,
    [7232] = true,
    [7233] = true,
    [7234] = true,
    [7235] = true,
    [7236] = true,
    [7237] = true,
    [7238] = true,
    [7239] = true,
    [7240] = true,
    [7241] = true,
    [7242] = true,
    [7243] = true,
    [7244] = true,
    [7245] = true,
    [7246] = true,
    [7247] = true,
    [7248] = true,
    [7249] = true,
    [7250] = true,
    [7251] = true,
    [7252] = true,
    [7253] = true,
    [7254] = true,
    [7272] = true,
    [7273] = true,
    [7288] = true,
    [7290] = true,
    [7293] = true,
    [7295] = true,
    [7300] = true,
    [7301] = true,
    [7302] = true,
    [7320] = true,
    [7321] = true,
    [7322] = true,
    [7383] = true,
    [7396] = true,
    [7399] = true,
    [7645] = true,
    [7648] = true,
    [7651] = true,
    [7656] = true,
    [7739] = true,
    [7761] = true,
    [7764] = true,
    [7812] = true,
    [7840] = true,
    [7891] = true,
    [7948] = true,
    [7964] = true,
    [7967] = true,
    [7997] = true,
    [7998] = true,
    [8040] = true,
    [8050] = true,
    [8052] = true,
    [8053] = true,
    [8056] = true,
    [8058] = true,
    [8064] = true,
    [8067] = true,
    [8068] = true,
    [8070] = true,
    [8078] = true,
    [8091] = true,
    [8094] = true,
    [8095] = true,
    [8096] = true,
    [8097] = true,
    [8098] = true,
    [8099] = true,
    [8100] = true,
    [8101] = true,
    [8112] = true,
    [8113] = true,
    [8114] = true,
    [8115] = true,
    [8116] = true,
    [8117] = true,
    [8118] = true,
    [8119] = true,
    [8120] = true,
    [8134] = true,
    [8140] = true,
    [8142] = true,
    [8147] = true,
    [8150] = true,
    [8191] = true,
    [8202] = true,
    [8224] = true,
    [8225] = true,
    [8245] = true,
    [8272] = true,
    [8281] = true,
    [8312] = true,
    [8314] = true,
    [8316] = true,
    [8317] = true,
    [8348] = true,
    [8362] = true,
    [8365] = true,
    [8383] = true,
    [8384] = true,
    [8385] = true,
    [8398] = true,
    [8399] = true,
    [8406] = true,
    [8407] = true,
    [8408] = true,
    [8437] = true,
    [8438] = true,
    [8439] = true,
    [8450] = true,
    [8451] = true,
    [8455] = true,
    [8457] = true,
    [8458] = true,
    [8461] = true,
    [8462] = true,
    [8492] = true,
    [8494] = true,
    [8495] = true,
    [8552] = true,
    [8602] = true,
    [8699] = true,
    [8788] = true,
    [8823] = true,
    [8824] = true,
    [8833] = true,
    [8834] = true,
    [8898] = true,
    [8899] = true,
    [8900] = true,
    [8907] = true,
    [8910] = true,
    [8914] = true,
    [8921] = true,
    [8924] = true,
    [8925] = true,
    [8926] = true,
    [8927] = true,
    [8928] = true,
    [8929] = true,
    [8936] = true,
    [8938] = true,
    [8939] = true,
    [8940] = true,
    [8941] = true,
    [8988] = true,
    [8994] = true,
    [9034] = true,
    [9159] = true,
    [9176] = true,
    [9233] = true,
    [9234] = true,
    [9275] = true,
    [9373] = true,
    [9433] = true,
    [9459] = true,
    [9462] = true,
    [9482] = true,
    [9484] = true,
    [9485] = true,
    [9552] = true,
    [9574] = true,
    [9578] = true,
    [9579] = true,
    [9592] = true,
    [9612] = true,
    [9614] = true,
    [9616] = true,
    [9657] = true,
    [9658] = true,
    [9672] = true,
    [9735] = true,
    [9749] = true,
    [9750] = true,
    [9756] = true,
    [9800] = true,
    [9806] = true,
    [9833] = true,
    [9834] = true,
    [9835] = true,
    [9839] = true,
    [9840] = true,
    [9841] = true,
    [9852] = true,
    [9853] = true,
    [9856] = true,
    [9857] = true,
    [9858] = true,
    [9884] = true,
    [9885] = true,
    [9906] = true,
    [9907] = true,
    [9910] = true,
    [9915] = true,
    [9930] = true,
    [10017] = true,
    [10018] = true,
    [10060] = true,
    [10156] = true,
    [10157] = true,
    [10159] = true,
    [10160] = true,
    [10161] = true,
    [10169] = true,
    [10170] = true,
    [10173] = true,
    [10174] = true,
    [10177] = true,
    [10179] = true,
    [10180] = true,
    [10181] = true,
    [10191] = true,
    [10192] = true,
    [10193] = true,
    [10201] = true,
    [10202] = true,
    [10219] = true,
    [10220] = true,
    [10223] = true,
    [10225] = true,
    [10230] = true,
    [10253] = true,
    [10263] = true,
    [10278] = true,
    [10308] = true,
    [10336] = true,
    [10337] = true,
    [10368] = true,
    [10390] = true,
    [10431] = true,
    [10432] = true,
    [10447] = true,
    [10448] = true,
    [10452] = true,
    [10472] = true,
    [10473] = true,
    [10618] = true,
    [10730] = true,
    [10831] = true,
    [10855] = true,
    [10892] = true,
    [10893] = true,
    [10894] = true,
    [10898] = true,
    [10899] = true,
    [10900] = true,
    [10901] = true,
    [10911] = true,
    [10912] = true,
    [10927] = true,
    [10928] = true,
    [10929] = true,
    [10937] = true,
    [10938] = true,
    [10941] = true,
    [10942] = true,
    [10951] = true,
    [10952] = true,
    [10955] = true,
    [10957] = true,
    [10958] = true,
    [10987] = true,
    [11014] = true,
    [11020] = true,
    [11087] = true,
    [11088] = true,
    [11129] = true,
    [11264] = true,
    [11350] = true,
    [11359] = true,
    [11363] = true,
    [11364] = true,
    [11371] = true,
    [11426] = true,
    [11436] = true,
    [11443] = true,
    [11444] = true,
    [11445] = true,
    [11538] = true,
    [11639] = true,
    [11640] = true,
    [11641] = true,
    [11657] = true,
    [11665] = true,
    [11667] = true,
    [11668] = true,
    [11671] = true,
    [11672] = true,
    [11699] = true,
    [11700] = true,
    [11703] = true,
    [11704] = true,
    [11733] = true,
    [11734] = true,
    [11735] = true,
    [11739] = true,
    [11740] = true,
    [11743] = true,
    [11770] = true,
    [11771] = true,
    [11831] = true,
    [11835] = true,
    [11836] = true,
    [11841] = true,
    [11922] = true,
    [11962] = true,
    [11966] = true,
    [11974] = true,
    [11975] = true,
    [11983] = true,
    [11984] = true,
    [12022] = true,
    [12040] = true,
    [12042] = true,
    [12043] = true,
    [12096] = true,
    [12098] = true,
    [12160] = true,
    [12174] = true,
    [12175] = true,
    [12176] = true,
    [12177] = true,
    [12178] = true,
    [12179] = true,
    [12248] = true,
    [12494] = true,
    [12528] = true,
    [12529] = true,
    [12530] = true,
    [12531] = true,
    [12536] = true,
    [12542] = true,
    [12544] = true,
    [12545] = true,
    [12548] = true,
    [12550] = true,
    [12551] = true,
    [12557] = true,
    [12561] = true,
    [12579] = true,
    [12611] = true,
    [12654] = true,
    [12674] = true,
    [12675] = true,
    [12685] = true,
    [12731] = true,
    [12737] = true,
    [12738] = true,
    [12742] = true,
    [12743] = true,
    [12747] = true,
    [12748] = true,
    [12824] = true,
    [12825] = true,
    [12826] = true,
    [12843] = true,
    [12888] = true,
    [12890] = true,
    [13005] = true,
    [13031] = true,
    [13032] = true,
    [13033] = true,
    [13181] = true,
    [13235] = true,
    [13322] = true,
    [13323] = true,
    [13326] = true,
    [13327] = true,
    [13377] = true,
    [13424] = true,
    [13439] = true,
    [13530] = true,
    [13578] = true,
    [13585] = true,
    [13586] = true,
    [13729] = true,
    [13745] = true,
    [13747] = true,
    [13752] = true,
    [13787] = true,
    [13797] = true,
    [13810] = true,
    [13812] = true,
    [13864] = true,
    [13896] = true,
    [13903] = true,
    [13907] = true,
    [14032] = true,
    [14207] = true,
    [14253] = true,
    [14298] = true,
    [14299] = true,
    [14300] = true,
    [14301] = true,
    [14308] = true,
    [14309] = true,
    [14314] = true,
    [14315] = true,
    [14323] = true,
    [14324] = true,
    [14325] = true,
    [14326] = true,
    [14327] = true,
    [14515] = true,
    [14517] = true,
    [14518] = true,
    [14533] = true,
    [14621] = true,
    [14743] = true,
    [14751] = true,
    [14752] = true,
    [14818] = true,
    [14819] = true,
    [14893] = true,
    [14907] = true,
    [14914] = true,
    [14915] = true,
    [15039] = true,
    [15041] = true,
    [15043] = true,
    [15044] = true,
    [15063] = true,
    [15089] = true,
    [15090] = true,
    [15096] = true,
    [15123] = true,
    [15128] = true,
    [15229] = true,
    [15231] = true,
    [15233] = true,
    [15244] = true,
    [15253] = true,
    [15258] = true,
    [15261] = true,
    [15262] = true,
    [15263] = true,
    [15264] = true,
    [15265] = true,
    [15266] = true,
    [15267] = true,
    [15269] = true,
    [15271] = true,
    [15277] = true,
    [15279] = true,
    [15288] = true,
    [15346] = true,
    [15357] = true,
    [15359] = true,
    [15366] = true,
    [15453] = true,
    [15487] = true,
    [15497] = true,
    [15499] = true,
    [15505] = true,
    [15506] = true,
    [15507] = true,
    [15530] = true,
    [15531] = true,
    [15532] = true,
    [15534] = true,
    [15535] = true,
    [15548] = true,
    [15570] = true,
    [15573] = true,
    [15588] = true,
    [15599] = true,
    [15604] = true,
    [15616] = true,
    [15646] = true,
    [15654] = true,
    [15661] = true,
    [15709] = true,
    [15732] = true,
    [15733] = true,
    [15784] = true,
    [15798] = true,
    [15822] = true,
    [15850] = true,
    [15859] = true,
    [15876] = true,
    [15970] = true,
    [15981] = true,
    [16050] = true,
    [16093] = true,
    [16097] = true,
    [16104] = true,
    [16166] = true,
    [16168] = true,
    [16170] = true,
    [16177] = true,
    [16188] = true,
    [16236] = true,
    [16237] = true,
    [16246] = true,
    [16249] = true,
    [16322] = true,
    [16323] = true,
    [16325] = true,
    [16326] = true,
    [16327] = true,
    [16329] = true,
    [16333] = true,
    [16337] = true,
    [16350] = true,
    [16366] = true,
    [16402] = true,
    [16430] = true,
    [16431] = true,
    [16451] = true,
    [16470] = true,
    [16498] = true,
    [16536] = true,
    [16555] = true,
    [16561] = true,
    [16576] = true,
    [16587] = true,
    [16591] = true,
    [16593] = true,
    [16595] = true,
    [16598] = true,
    [16599] = true,
    [16601] = true,
    [16603] = true,
    [16608] = true,
    [16617] = true,
    [16689] = true,
    [16707] = true,
    [16708] = true,
    [16709] = true,
    [16711] = true,
    [16798] = true,
    [16799] = true,
    [16803] = true,
    [16804] = true,
    [16810] = true,
    [16811] = true,
    [16812] = true,
    [16813] = true,
    [16838] = true,
    [16843] = true,
    [16857] = true,
    [16864] = true,
    [16870] = true,
    [16873] = true,
    [16874] = true,
    [16875] = true,
    [16876] = true,
    [16877] = true,
    [16878] = true,
    [16881] = true,
    [16882] = true,
    [16883] = true,
    [16884] = true,
    [16885] = true,
    [16886] = true,
    [16888] = true,
    [16889] = true,
    [16891] = true,
    [16892] = true,
    [16893] = true,
    [16894] = true,
    [16895] = true,
    [16898] = true,
    [16916] = true,
    [16927] = true,
    [16939] = true,
    [17008] = true,
    [17038] = true,
    [17116] = true,
    [17139] = true,
    [17140] = true,
    [17141] = true,
    [17142] = true,
    [17146] = true,
    [17150] = true,
    [17151] = true,
    [17152] = true,
    [17154] = true,
    [17172] = true,
    [17173] = true,
    [17174] = true,
    [17175] = true,
    [17177] = true,
    [17201] = true,
    [17205] = true,
    [17238] = true,
    [17243] = true,
    [17281] = true,
    [17286] = true,
    [17293] = true,
    [17329] = true,
    [17331] = true,
    [17332] = true,
    [17333] = true,
    [17364] = true,
    [17390] = true,
    [17391] = true,
    [17392] = true,
    [17503] = true,
    [17506] = true,
    [17510] = true,
    [17528] = true,
    [17543] = true,
    [17544] = true,
    [17545] = true,
    [17546] = true,
    [17548] = true,
    [17549] = true,
    [17620] = true,
    [17633] = true,
    [17682] = true,
    [17716] = true,
    [17729] = true,
    [17730] = true,
    [17734] = true,
    [17740] = true,
    [17741] = true,
    [17794] = true,
    [17797] = true,
    [17798] = true,
    [17799] = true,
    [17800] = true,
    [17883] = true,
    [17925] = true,
    [17926] = true,
    [17928] = true,
    [17941] = true,
    [17961] = true,
    [18088] = true,
    [18099] = true,
    [18100] = true,
    [18101] = true,
    [18118] = true,
    [18137] = true,
    [18146] = true,
    [18165] = true,
    [18186] = true,
    [18264] = true,
    [18265] = true,
    [18268] = true,
    [18278] = true,
    [18288] = true,
    [18327] = true,
    [18371] = true,
    [18376] = true,
    [18425] = true,
    [18469] = true,
    [18498] = true,
    [18503] = true,
    [18520] = true,
    [18542] = true,
    [18543] = true,
    [18557] = true,
    [18647] = true,
    [18652] = true,
    [18656] = true,
    [18657] = true,
    [18658] = true,
    [18708] = true,
    [18763] = true,
    [18787] = true,
    [18798] = true,
    [18802] = true,
    [18820] = true,
    [18828] = true,
    [18879] = true,
    [18880] = true,
    [18881] = true,
    [18942] = true,
    [18956] = true,
    [18957] = true,
    [18958] = true,
    [18968] = true,
    [18972] = true,
    [18977] = true,
    [18979] = true,
    [19028] = true,
    [19108] = true,
    [19133] = true,
    [19137] = true,
    [19185] = true,
    [19261] = true,
    [19262] = true,
    [19264] = true,
    [19265] = true,
    [19266] = true,
    [19271] = true,
    [19273] = true,
    [19274] = true,
    [19275] = true,
    [19289] = true,
    [19291] = true,
    [19292] = true,
    [19293] = true,
    [19308] = true,
    [19309] = true,
    [19310] = true,
    [19311] = true,
    [19312] = true,
    [19362] = true,
    [19365] = true,
    [19366] = true,
    [19367] = true,
    [19369] = true,
    [19393] = true,
    [19408] = true,
    [19438] = true,
    [19440] = true,
    [19441] = true,
    [19442] = true,
    [19443] = true,
    [19476] = true,
    [19478] = true,
    [19479] = true,
    [19496] = true,
    [19514] = true,
    [19626] = true,
    [19634] = true,
    [19635] = true,
    [19638] = true,
    [19652] = true,
    [19653] = true,
    [19654] = true,
    [19655] = true,
    [19656] = true,
    [19659] = true,
    [19660] = true,
    [19690] = true,
    [19702] = true,
    [19712] = true,
    [19714] = true,
    [19740] = true,
    [19742] = true,
    [19776] = true,
    [19821] = true,
    [19834] = true,
    [19835] = true,
    [19836] = true,
    [19837] = true,
    [19838] = true,
    [19850] = true,
    [19852] = true,
    [19853] = true,
    [19854] = true,
    [19937] = true,
    [19970] = true,
    [19971] = true,
    [19972] = true,
    [19973] = true,
    [19974] = true,
    [19975] = true,
    [19977] = true,
    [19978] = true,
    [19979] = true,
    [20006] = true,
    [20007] = true,
    [20050] = true,
    [20052] = true,
    [20053] = true,
    [20054] = true,
    [20055] = true,
    [20066] = true,
    [20154] = true,
    [20162] = true,
    [20164] = true,
    [20165] = true,
    [20166] = true,
    [20184] = true,
    [20185] = true,
    [20186] = true,
    [20188] = true,
    [20216] = true,
    [20217] = true,
    [20223] = true,
    [20233] = true,
    [20236] = true,
    [20287] = true,
    [20288] = true,
    [20289] = true,
    [20290] = true,
    [20291] = true,
    [20292] = true,
    [20293] = true,
    [20294] = true,
    [20297] = true,
    [20300] = true,
    [20301] = true,
    [20302] = true,
    [20303] = true,
    [20305] = true,
    [20306] = true,
    [20307] = true,
    [20308] = true,
    [20344] = true,
    [20345] = true,
    [20346] = true,
    [20347] = true,
    [20348] = true,
    [20349] = true,
    [20354] = true,
    [20355] = true,
    [20356] = true,
    [20357] = true,
    [20375] = true,
    [20425] = true,
    [20545] = true,
    [20604] = true,
    [20631] = true,
    [20654] = true,
    [20655] = true,
    [20656] = true,
    [20663] = true,
    [20664] = true,
    [20665] = true,
    [20669] = true,
    [20683] = true,
    [20694] = true,
    [20697] = true,
    [20699] = true,
    [20701] = true,
    [20706] = true,
    [20729] = true,
    [20740] = true,
    [20743] = true,
    [20787] = true,
    [20792] = true,
    [20798] = true,
    [20800] = true,
    [20806] = true,
    [20812] = true,
    [20819] = true,
    [20822] = true,
    [20826] = true,
    [20828] = true,
    [20911] = true,
    [20912] = true,
    [20913] = true,
    [20914] = true,
    [20915] = true,
    [20918] = true,
    [20919] = true,
    [20920] = true,
    [20925] = true,
    [20927] = true,
    [20928] = true,
    [20961] = true,
    [20962] = true,
    [20967] = true,
    [20968] = true,
    [20989] = true,
    [21030] = true,
    [21049] = true,
    [21063] = true,
    [21064] = true,
    [21068] = true,
    [21073] = true,
    [21082] = true,
    [21084] = true,
    [21098] = true,
    [21134] = true,
    [21183] = true,
    [21331] = true,
    [21335] = true,
    [21337] = true,
    [21369] = true,
    [21401] = true,
    [21562] = true,
    [21564] = true,
    [21670] = true,
    [21790] = true,
    [21849] = true,
    [21850] = true,
    [21857] = true,
    [21898] = true,
    [21956] = true,
    [21970] = true,
    [21976] = true,
    [21992] = true,
    [22009] = true,
    [22067] = true,
    [22127] = true,
    [22128] = true,
    [22168] = true,
    [22187] = true,
    [22206] = true,
    [22271] = true,
    [22274] = true,
    [22356] = true,
    [22357] = true,
    [22373] = true,
    [22415] = true,
    [22417] = true,
    [22418] = true,
    [22419] = true,
    [22420] = true,
    [22423] = true,
    [22433] = true,
    [22438] = true,
    [22460] = true,
    [22478] = true,
    [22519] = true,
    [22559] = true,
    [22561] = true,
    [22566] = true,
    [22582] = true,
    [22642] = true,
    [22643] = true,
    [22645] = true,
    [22648] = true,
    [22666] = true,
    [22678] = true,
    [22692] = true,
    [22693] = true,
    [22695] = true,
    [22696] = true,
    [22710] = true,
    [22713] = true,
    [22715] = true,
    [22716] = true,
    [22744] = true,
    [22746] = true,
    [22782] = true,
    [22783] = true,
    [22800] = true,
    [22812] = true,
    [22817] = true,
    [22818] = true,
    [22820] = true,
    [22850] = true,
    [22914] = true,
    [22924] = true,
    [22938] = true,
    [22959] = true,
    [23028] = true,
    [23038] = true,
    [23102] = true,
    [23103] = true,
    [23115] = true,
    [23126] = true,
    [23153] = true,
    [23207] = true,
    [23245] = true,
    [23268] = true,
    [23298] = true,
    [23380] = true,
    [23396] = true,
    [23417] = true,
    [23506] = true,
    [23552] = true,
    [23577] = true,
    [23603] = true,
    [23618] = true,
    [23775] = true,
    [23858] = true,
    [23859] = true,
    [23860] = true,
    [23895] = true,
    [23918] = true,
    [23931] = true,
    [23947] = true,
    [23948] = true,
    [23951] = true,
    [23952] = true,
    [23991] = true,
    [24022] = true,
    [24053] = true,
    [24109] = true,
    [24152] = true,
    [24185] = true,
    [24212] = true,
    [24300] = true,
    [24354] = true,
    [24360] = true,
    [24364] = true,
    [24389] = true,
    [24415] = true,
    [24427] = true,
    [24435] = true,
    [24615] = true,
    [24618] = true,
    [24648] = true,
    [24672] = true,
    [24687] = true,
    [24752] = true,
    [24884] = true,
    [24924] = true,
    [24925] = true,
    [24926] = true,
    [24927] = true,
    [24942] = true,
    [24957] = true,
    [24974] = true,
    [24975] = true,
    [24976] = true,
    [24977] = true,
    [24995] = true,
    [25020] = true,
    [25022] = true,
    [25023] = true,
    [25050] = true,
    [25058] = true,
    [25164] = true,
    [25228] = true,
    [25290] = true,
    [25291] = true,
    [25299] = true,
    [25304] = true,
    [25309] = true,
    [25311] = true,
    [25315] = true,
    [25462] = true,
    [25651] = true,
    [25668] = true,
    [25679] = true,
    [25746] = true,
    [25747] = true,
    [25750] = true,
    [25751] = true,
    [25774] = true,
    [25780] = true,
    [25782] = true,
    [25808] = true,
    [25890] = true,
    [25894] = true,
    [25895] = true,
    [25898] = true,
    [25899] = true,
    [25916] = true,
    [25918] = true,
    [26017] = true,
    [26018] = true,
    [26069] = true,
    [26070] = true,
    [26071] = true,
    [26072] = true,
    [26108] = true,
    [26121] = true,
    [26129] = true,
    [26130] = true,
    [26131] = true,
    [26132] = true,
    [26135] = true,
    [26192] = true,
    [26331] = true,
    [26378] = true,
    [26386] = true,
    [26387] = true,
    [26400] = true,
    [26470] = true,
    [26580] = true,
    [26641] = true,
    [26643] = true,
    [27204] = true,
    [27499] = true,
    [27532] = true,
    [27533] = true,
    [27534] = true,
    [27535] = true,
    [27536] = true,
    [27538] = true,
    [27540] = true,
    [27559] = true,
    [27564] = true,
    [27565] = true,
    [27605] = true,
    [27606] = true,
    [27607] = true,
    [27634] = true,
    [27637] = true,
    [27641] = true,
    [27648] = true,
    [27681] = true,
    [27683] = true,
    [27688] = true,
    [27689] = true,
    [27737] = true,
    [27760] = true,
    [27775] = true,
    [27777] = true,
    [27779] = true,
    [27782] = true,
    [27783] = true,
    [27784] = true,
    [27786] = true,
    [27788] = true,
    [27798] = true,
    [27813] = true,
    [27817] = true,
    [27818] = true,
    [27828] = true,
    [27841] = true,
    [27868] = true,
    [27873] = true,
    [27874] = true,
    [27989] = true,
    [27990] = true,
    [27994] = true,
    [27995] = true,
    [28133] = true,
    [28270] = true,
    [28271] = true,
    [28272] = true,
    [28315] = true,
    [28406] = true,
    [28450] = true,
    [28478] = true,
    [28479] = true,
    [28609] = true,
    [28610] = true,
    [28682] = true,
    [28722] = true,
    [28723] = true,
    [28724] = true,
    [28732] = true,
    [28753] = true,
    [28754] = true,
    [28762] = true,
    [28765] = true,
    [28766] = true,
    [28768] = true,
    [28769] = true,
    [28770] = true,
    [28772] = true,
    [28780] = true,
    [28810] = true,
    [28813] = true,
    [28846] = true,
    [28848] = true,
    [28850] = true,
    [28862] = true,
    [28866] = true,
    [29063] = true,
    [29077] = true,
    [29163] = true,
    [29164] = true,
    [29166] = true,
    [29168] = true,
    [29203] = true,
    [29212] = true,
    [29228] = true,
    [29432] = true,
    [29848] = true,
    [29849] = true,
    [30001] = true,
    [30002] = true,
    [30094] = true,
    [30095] = true,
    [30096] = true,
    [31365] = true,
    [31817] = true
}
