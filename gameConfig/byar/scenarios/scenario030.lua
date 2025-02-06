local scenariodata = {
	index			= 30, --  integer, sort order, MUST BE EQUAL TO FILENAME NUMBER
	scenarioid		= "Tutorial1", -- no spaces, lowercase, this will be used to save the score and can be used gadget side
    version         = "0.1", -- increment this to reset the score when changing a mission, as scores are keyed by (scenarioid,version,difficulty)
	title			= "Research to Ground", -- can be anything
	author			= "kroIya, Volshok, Zeteo, AidanNaut", -- your name here
	isnew = true,
	imagepath		= "scenario030.png", -- placed next to lua file, should be 3:1 ratio banner style
	imageflavor		= "Research Station Locations", -- This text will be drawn over image
    summary         = [[1. Find and restore all three research stations, and return their physical drives for decryption.
     
* RS-KP981
* RS-CH127
* RS-B298
   
2. Your commander must survive.]],
	briefing 		= [[[Gideon] Steady, Commander. We've arrived at Enborelde. The effects of interplanetary transit are disorienting, but you'll adjust momentarily.
 
[Blackout] Ah, you're awake. Congradulations on the Crimson Trial, Commander.  I am Air Command Captain 2nd Class, Marcus Tauros — callsign 'Blackout.' I’m on loan to the Bellum Order to help oversee and train Nebula System operations.  And this is my second in command:
 
[Pipes] Ophelia Falkrik, Starpilot 1st Class, reporting Commander.  Gideon replayed your command on Artturisir for us, impressive work. I'm glad to escort you out here, sir.
 
[Blackout] Commander, SP1C Falkrik and I are on assist detail while you're in the Nebula Systems. First beacon is from Keram's Horizon. GDN-314, if you would be so kind?
 
[Gideon] Commander, Enborelde is a remnant of the Terraforma Campaigns, one of the first altered after the Shatterstorm.  Keram's Horizon maintains active monitoring and research stations for the terraforming process. Multiple of these stations have gone offline in the past week. Horizon requests a Commander with access permissions to reboot the stations and recover a primary data drive.
 
[Blackout] We’ll start with the two research stations near the Southern Elessar Mountains, then head west to the Sea of Syphos. Should be a quick trip in a Skyhook"
 
[Pipes] Horizon also asked us to investigate any anomalies at the stations, Commander.
 
[Blackout] Repair and data reclamation isn't glamorous, but the Line Worlds aren't going anywhere sir, you'll easily secure a commission after you've cut your teeth out here.
 
[Pipes] We're ready to get those stations online when you are, Commander!
]],

	mapfilename		= "Altair Canyon", -- the name of the map to be displayed here, and which to play on, no .smf ending needed
	playerstartx	= "16%", -- X position of where player comm icon should be drawn, from top left of the map
	playerstarty	= "26%", -- Y position of where player comm icon should be drawn, from top left of the map
	partime 		= 1200, -- par time in seconds (time a mission is expected to take on average)
	parresources	= 0, -- par resource amount (amount of metal one is expected to spend on mission)
	difficulty		= 0.12, -- Percieved difficulty at 'normal' level: integer 1-10
    defaultdifficulty = "Normal", -- an entry of the difficulty table
    difficulties    = { -- Array for sortedness, Keys are text that appears in selector (as well as in scoring!), values are handicap levels
    -- handicap values range [-100 - +100], with 0 being regular resources
    -- Currently difficulty modifier only affects the resource bonuses
         {name = "Beginner", playerhandicap = 50, enemyhandicap=-20},
         {name = "Novice"  , playerhandicap = 25, enemyhandicap=-10},
         {name = "Normal"  , playerhandicap = 0, enemyhandicap=0},
         {name = "Hard"    , playerhandicap = -10,  enemyhandicap=25},
         {name = "Brutal" , playerhandicap = -20,  enemyhandicap=50},
    },
    allowedsides     = {"Cortex"}, --these are the permitted factions for this mission, choose from {"Armada", "Cortex", "Random"}
	victorycondition= "Victorycondition", -- This is plaintext, but should be reflected in startscript
	losscondition	= "Losscondition",  -- This is plaintext, but should be reflected in startscript
    unitlimits   = { -- table of unitdefname : maxnumberofthese units, 0 means disable it
        -- dont use the one in startscript, put the disabled stuff here so we can show it in scenario window!
	} ,

    scenariooptions = { -- this will get lua->json->base64 and passed to scenariooptions in game
		myoption = "dostuff", -- blank
        scenarioid = "Tutorial1", -- this MUST be present and identical to the one defined at start
		disablefactionpicker = false, -- this is needed to prevent faction picking outside of the allowedsides

        unitloadout = {
			-- You can specify units that you wish to spawn here, they only show up once game starts,
			-- You can create these lists easily using the feature/unit dumper by using dbg_feature_dumper.lua widget pinned to the #challenges channel on discord
			-- Set up a skirmish like your scenario, so the team ID's will be correct
			-- Then using /globallos and cheats, add as many units as you wish
			-- The type /luaui dumpunits
			-- Fish out the dumped units from your infolog.txt and add them here
			-- Note: If you have ANY units in loadout, then there will be no initial units spawned for anyone, so you have to take care of that
			-- so you must spawn the initial commanders then!
			{name = 'armfort', x = 100, y = 160, z = 100, rot = -16384 , team = 1, neutral = true},
			{name = 'armrad', x = 7200, y = 447, z = 2864, rot = 16384 , team = 2, neutral = false},
			{name = 'armjamt', x = 7104, y = 427, z = 2944, rot = 16384 , team = 2, neutral = false},
			{name = 'armjamt', x = 6560, y = 476, z = 3440, rot = 16384 , team = 2, neutral = false},
			{name = 'armjamt', x = 5504, y = 398, z = 2832, rot = 16384 , team = 2, neutral = false},
			{name = 'armrl', x = 4920, y = 415, z = 2200, rot = 16384 , team = 2, neutral = false},
			{name = 'armrl', x = 4744, y = 445, z = 2616, rot = 16384 , team = 2, neutral = false},
			{name = 'armjamt', x = 4816, y = 397, z = 2352, rot = 16384 , team = 2, neutral = false},
			{name = 'armjamt', x = 5056, y = 184, z = 1952, rot = 16384 , team = 2, neutral = false},
			{name = 'armrl', x = 5016, y = 178, z = 2015, rot = 16384 , team = 2, neutral = false},
			{name = 'armrl', x = 1816, y = 455, z = 1784, rot = 16384 , team = 2, neutral = false},
			{name = 'armrl', x = 4650, y = 443, z = 68, rot = 16384 , team = 2, neutral = false},
			{name = 'armrad', x = 1760, y = 462, z = 1696, rot = 16384 , team = 2, neutral = false},
			{name = 'armsolar', x = 408, y = 246, z = 1400, rot = 16384 , team = 2, neutral = false},
			{name = 'armwin', x = 328, y = 261, z = 1480, rot = 16384 , team = 2, neutral = false},
			{name = 'armwin', x = 376, y = 251, z = 1304, rot = 16384 , team = 2, neutral = false},
			{name = 'armwin', x = 504, y = 265, z = 1416, rot = 16384 , team = 2, neutral = false},
			{name = 'armwin', x = 600, y = 223, z = 1320, rot = 16384 , team = 2, neutral = false},
			{name = 'armwin', x = 408, y = 234, z = 1240, rot = 16384 , team = 2, neutral = false},
			{name = 'armwin', x = 424, y = 245, z = 1336, rot = 16384 , team = 2, neutral = false},
			{name = 'armwin', x = 264, y = 281, z = 1480, rot = 16384 , team = 2, neutral = false},
			{name = 'armwin', x = 616, y = 222, z = 1432, rot = 16384 , team = 2, neutral = false},
			{name = 'armwin', x = 632, y = 223, z = 1224, rot = 16384 , team = 2, neutral = false},
			{name = 'armllt', x = 1424, y = 101, z = 1344, rot = 16384 , team = 2, neutral = false},
			{name = 'armllt', x = 1136, y = 124, z = 1584, rot = 16384 , team = 2, neutral = false},
			{name = 'armllt', x = 1904, y = 170, z = 2384, rot = 16384 , team = 2, neutral = false},
			{name = 'armllt', x = 1808, y = 168, z = 2480, rot = 16384 , team = 2, neutral = false},
			{name = 'armdrag', x = 1808, y = 171, z = 2448, rot = 16384 , team = 2, neutral = true},
			{name = 'armdrag', x = 1776, y = 170, z = 2480, rot = 16384 , team = 2, neutral = true},
			{name = 'armdrag', x = 1808, y = 166, z = 2512, rot = 16384 , team = 2, neutral = true},
			{name = 'armdrag', x = 1872, y = 172, z = 2384, rot = 16384 , team = 2, neutral = true},
			{name = 'armdrag', x = 1904, y = 172, z = 2352, rot = 16384 , team = 2, neutral = true},
			{name = 'armdrag', x = 1936, y = 168, z = 2384, rot = 16384 , team = 2, neutral = true},
			{name = 'armllt', x = 1312, y = 193, z = 2800, rot = 16384 , team = 2, neutral = false},
			{name = 'armllt', x = 1760, y = 159, z = 2928, rot = 16384 , team = 2, neutral = false},
			{name = 'armdrag', x = 1728, y = 159, z = 2928, rot = 16384 , team = 2, neutral = true},
			{name = 'armdrag', x = 1792, y = 159, z = 2928, rot = 16384 , team = 2, neutral = true},
			{name = 'armllt', x = 2032, y = 160, z = 3152, rot = 16384 , team = 2, neutral = false},
			{name = 'armllt', x = 2208, y = 159, z = 2944, rot = 16384 , team = 2, neutral = false},
			{name = 'armllt', x = 1216, y = 214, z = 3696, rot = 16384 , team = 2, neutral = false},
			{name = 'armllt', x = 1472, y = 201, z = 3616, rot = 16384 , team = 2, neutral = false},
			{name = 'armhlt', x = 2704, y = 174, z = 3360, rot = 16384 , team = 2, neutral = false},
			{name = 'armsolar', x = 2632, y = 172, z = 3800, rot = 16384 , team = 2, neutral = false},
			{name = 'armsolar', x = 2712, y = 170, z = 3720, rot = 16384 , team = 2, neutral = false},
			{name = 'armrad', x = 3120, y = 211, z = 3888, rot = 16384 , team = 2, neutral = false},
			{name = 'armsolar', x = 1992, y = 163, z = 2520, rot = 16384 , team = 2, neutral = false},
			{name = 'armsolar', x = 1912, y = 160, z = 2584, rot = 16384 , team = 2, neutral = false},
			{name = 'armsolar', x = 1992, y = 161, z = 2600, rot = 16384 , team = 2, neutral = false},
			{name = 'armsolar', x = 1912, y = 159, z = 2680, rot = 16384 , team = 2, neutral = false},
			{name = 'armsolar', x = 2808, y = 165, z = 3480, rot = 16384 , team = 2, neutral = false},
			{name = 'armsolar', x = 2888, y = 170, z = 3560, rot = 16384 , team = 2, neutral = false},
			{name = 'armsolar', x = 2808, y = 166, z = 3560, rot = 16384 , team = 2, neutral = false},
			{name = 'armsolar', x = 1624, y = 189, z = 4056, rot = 16384 , team = 2, neutral = false},
			{name = 'armsolar', x = 1544, y = 197, z = 4056, rot = 16384 , team = 2, neutral = false},
			{name = 'armsolar', x = 1464, y = 201, z = 4056, rot = 16384 , team = 2, neutral = false},
			{name = 'armjamt', x = 8016, y = 427, z = 944, rot = 0 , team = 2, neutral = false},
			{name = 'armllt', x = 4479, y = 55, z = 1805, rot = 0 , team = 2, neutral = false},
			{name = 'armllt', x = 4591, y = 46, z = 1880, rot = 0 , team = 2, neutral = false},
			{name = 'cormakr', x = 5676, y = 421, z = 1345, rot = 0 , team = 2, neutral = false},
			{name = 'cormakr', x = 5708, y = 416, z = 1354, rot = 0 , team = 2, neutral = false},
			{name = 'cormakr', x = 5739, y = 415, z = 1345, rot = 0 , team = 2, neutral = false},
			{name = 'cormakr', x = 5734, y = 414, z = 1272, rot = 0 , team = 2, neutral = false},
			{name = 'cormakr', x = 5699, y = 417, z = 1267, rot = 0 , team = 2, neutral = false},
			{name = 'cormakr', x = 5753, y = 413, z = 1304, rot = 0 , team = 2, neutral = false},
			{name = 'cormakr', x = 5671, y = 430, z = 1301, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 1473, y = 160, z = 168, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 1378, y = 163, z = 351, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 107, y = 40, z = 540, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 274, y = 39, z = 604, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 237, y = 39, z = 731, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 1370, y = 62, z = 1145, rot = -16384 , team = 2, neutral = false},
			{name = 'armpw', x = 1589, y = 77, z = 1308, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 1112, y = 209, z = 3466, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 1221, y = 204, z = 3443, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 1318, y = 202, z = 3423, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 1166, y = 203, z = 3495, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 1234, y = 214, z = 3374, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 1261, y = 203, z = 3495, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 1205, y = 204, z = 3558, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 1316, y = 200, z = 3493, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 1394, y = 191, z = 3463, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 1378, y = 198, z = 3545, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 1281, y = 207, z = 3572, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 1105, y = 220, z = 3555, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 1147, y = 212, z = 3611, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 2449, y = 153, z = 104, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 2468, y = 133, z = 175, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 2527, y = 135, z = 196, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 2590, y = 143, z = 197, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 2641, y = 152, z = 165, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 2653, y = 159, z = 107, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 2622, y = 162, z = 46, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 2475, y = 161, z = 43, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 2692, y = 152, z = 165, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 2651, y = 142, z = 211, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 2582, y = 131, z = 263, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 4491, y = 50, z = 1704, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 4566, y = 46, z = 1779, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 4671, y = 41, z = 1831, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 7271, y = 35, z = 538, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 7585, y = 36, z = 658, rot = 32767 , team = 2, neutral = false},
			{name = 'armflea', x = 7361, y = 38, z = 857, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 1965, y = 38, z = 1071, rot = 16384 , team = 2, neutral = false},
			{name = 'armpw', x = 2288, y = 77, z = 754, rot = 16384 , team = 2, neutral = false},
			{name = 'armrock', x = 617, y = 249, z = 2040, rot = 32767 , team = 2, neutral = false},
			{name = 'armrock', x = 788, y = 208, z = 2169, rot = 16384 , team = 2, neutral = false},
			{name = 'armrock', x = 1248, y = 200, z = 2874, rot = -16384 , team = 2, neutral = false},
			{name = 'armrock', x = 2000, y = 160, z = 2712, rot = 32767 , team = 2, neutral = false},
			{name = 'armrock', x = 667, y = 215, z = 1593, rot = 0 , team = 2, neutral = false},
			{name = 'armrock', x = 1225, y = 124, z = 1685, rot = 32767 , team = 2, neutral = false},
			{name = 'armham', x = 662, y = 235, z = 2798, rot = 32767 , team = 2, neutral = false},
			{name = 'armham', x = 782, y = 205, z = 2872, rot = 32767 , team = 2, neutral = false},
			{name = 'armwar', x = 2379, y = 164, z = 3599, rot = 32767 , team = 2, neutral = false},
			{name = 'armwar', x = 2518, y = 160, z = 3432, rot = 32767 , team = 2, neutral = false},
			{name = 'armwar', x = 3559, y = 193, z = 3816, rot = 0 , team = 2, neutral = false},
			{name = 'armwar', x = 3524, y = 190, z = 3892, rot = 0 , team = 2, neutral = false},
			{name = 'armwar', x = 3513, y = 193, z = 3980, rot = 0 , team = 2, neutral = false},
			{name = 'armwar', x = 3571, y = 207, z = 4079, rot = 0 , team = 2, neutral = false},
			{name = 'armllt', x = 627, y = 234, z = 1522, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 566, y = 269, z = 2163, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 678, y = 236, z = 2154, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 708, y = 235, z = 2268, rot = 0 , team = 2, neutral = false},
			{name = 'armdrag', x = 3552, y = 192, z = 3744, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 3520, y = 191, z = 3776, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 3504, y = 191, z = 3808, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 3488, y = 191, z = 3840, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 3472, y = 191, z = 3872, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 3456, y = 191, z = 3984, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 3472, y = 193, z = 4016, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 3488, y = 196, z = 4048, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 3504, y = 199, z = 4080, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 3584, y = 195, z = 3728, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 3616, y = 203, z = 3728, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 3648, y = 224, z = 3728, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 3680, y = 261, z = 3712, rot = 0 , team = 2, neutral = true},
			{name = 'armllt', x = 5184, y = 43, z = 1216, rot = 0 , team = 2, neutral = false},
			{name = 'armllt', x = 5264, y = 42, z = 1296, rot = 0 , team = 2, neutral = false},
			{name = 'armdrag', x = 5264, y = 40, z = 1264, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 5296, y = 50, z = 1296, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 5216, y = 41, z = 1216, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 5184, y = 45, z = 1184, rot = 0 , team = 2, neutral = true},
			{name = 'armmex', x = 2016, y = 159, z = 2816, rot = 0 , team = 2, neutral = false},
			{name = 'armmex', x = 1936, y = 159, z = 2896, rot = 0 , team = 2, neutral = false},
			{name = 'armmex', x = 2048, y = 159, z = 2912, rot = 0 , team = 2, neutral = false},
			{name = 'armmex', x = 2496, y = 164, z = 3680, rot = 0 , team = 2, neutral = false},
			{name = 'armmex', x = 2416, y = 167, z = 3776, rot = 0 , team = 2, neutral = false},
			{name = 'armmex', x = 2544, y = 169, z = 3808, rot = 0 , team = 2, neutral = false},
			{name = 'cordrag', x = 3968, y = 74, z = 2432, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 85, z = 2432, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 74, z = 2432, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 51, z = 2400, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 61, z = 2400, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 53, z = 2400, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 45, z = 2368, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 47, z = 2368, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 45, z = 2368, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 43, z = 2336, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 43, z = 2336, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 43, z = 2336, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 41, z = 2304, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 42, z = 2304, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 42, z = 2304, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 40, z = 2272, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 40, z = 2272, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 40, z = 2272, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 39, z = 2240, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 39, z = 2240, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 39, z = 2240, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 38, z = 2208, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 38, z = 2208, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 38, z = 2208, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 37, z = 2176, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 38, z = 2176, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 38, z = 2176, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 39, z = 2144, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 38, z = 2144, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 38, z = 2144, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 39, z = 2112, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 40, z = 2112, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 43, z = 2112, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 48, z = 2080, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 45, z = 2080, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 42, z = 2080, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 48, z = 2048, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 53, z = 2048, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 56, z = 2048, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 67, z = 2016, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 61, z = 2016, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 55, z = 2016, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 68, z = 1984, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 75, z = 1984, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 80, z = 1984, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 93, z = 2464, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 114, z = 2464, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 87, z = 1952, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 110, z = 1952, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 102, z = 1952, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 116, z = 1920, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 122, z = 1920, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3904, y = 125, z = 1920, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3936, y = 146, z = 1888, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 3968, y = 151, z = 1888, rot = 0 , team = 2, neutral = true},
			{name = 'corllt', x = 1328, y = 150, z = 2000, rot = 0 , team = 2, neutral = false},
			{name = 'cordrag', x = 1360, y = 155, z = 2000, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 1328, y = 146, z = 1968, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 1296, y = 147, z = 2000, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 1168, y = 127, z = 1552, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 1136, y = 124, z = 1552, rot = 0 , team = 2, neutral = true},
			{name = 'cordrag', x = 1168, y = 124, z = 1584, rot = 0 , team = 2, neutral = true},
		},
		featureloadout = {
			{name = 'corstorm_dead', x = 1409, y = 205, z = 3868, rot = 0 , scale = 1.0, resurrectas = "corstorm"},
			{name = 'cornecro_dead', x = 57, y = 41, z = 516, rot = 0 , scale = 1.0, resurrectas = "cornecro"},
			{name = 'corthud_dead', x = 602, y = 267, z = 2934, rot = 0 , scale = 1.0, resurrectas = "corthud"},
			{name = 'cornecro_dead', x = 1497, y = 196, z = 3910, rot = 0 , scale = 1.0, resurrectas = "cornecro"},
			{name = 'corak_dead', x = 183, y = 39, z = 513, rot = 0 , scale = 1.0, resurrectas = "corak"},
			{name = 'armpw_dead', x = 1130, y = 171, z = 180, rot = 0 , scale = 1.0, resurrectas = "armpw"},
			{name = 'corak_dead', x = 142, y = 38, z = 620, rot = 0 , scale = 1.0, resurrectas = "corak"},
			{name = 'corak_dead', x = 176, y = 37, z = 761, rot = 0 , scale = 1.0, resurrectas = "corak"},
			{name = 'corthud_dead', x = 670, y = 281, z = 2999, rot = 0 , scale = 1.0, resurrectas = "corthud"},
			{name = 'corak_dead', x = 3481, y = 191, z = 719, rot = 0 , scale = 1.0, resurrectas = "corak"},
			{name = 'armsolar_dead', x = 1318, y = 161, z = 319, rot = 0 , scale = 1.0, resurrectas = "armsolar"},
			{name = 'corstorm_dead', x = 1507, y = 196, z = 3838, rot = 0 , scale = 1.0, resurrectas = "corstorm"},
			{name = 'corak_dead', x = 4130, y = 222, z = 88, rot = 0 , scale = 1.0, resurrectas = "corak"},
			{name = 'corthud_dead', x = 1068, y = 160, z = 236, rot = 0 , scale = 1.0, resurrectas = "corthud"},
			{name = 'corthud_dead', x = 2555, y = 160, z = 78, rot = 0 , scale = 1.0, resurrectas = "corthud"},
			{name = 'cornecro_dead', x = 1457, y = 198, z = 3972, rot = 0 , scale = 1.0, resurrectas = "cornecro"},
			{name = 'corthud_dead', x = 1051, y = 167, z = 146, rot = 0 , scale = 1.0, resurrectas = "corthud"},
			{name = 'cornecro_dead', x = 1546, y = 194, z = 3971, rot = 0 , scale = 1.0, resurrectas = "cornecro"},
			{name = 'cornecro_dead', x = 51, y = 40, z = 610, rot = 0 , scale = 1.0, resurrectas = "cornecro"},
			{name = 'corak_dead', x = 3709, y = 201, z = 139, rot = 0 , scale = 1.0, resurrectas = "corak"},
			{name = 'cornecro_dead', x = 1573, y = 192, z = 3908, rot = 0 , scale = 1.0, resurrectas = "cornecro"},
			{name = 'armpw_dead', x = 187, y = 37, z = 673, rot = 0 , scale = 1.0, resurrectas = "armpw"},
			{name = 'corthud_dead', x = 2034, y = 58, z = 592, rot = 0 , scale = 1.0, resurrectas = "corthud"},
			{name = 'corthud_dead', x = 2045, y = 40, z = 1080, rot = 0 , scale = 1.0, resurrectas = "corthud"},
			{name = 'cornecro_dead', x = 2492, y = 152, z = 121, rot = 0 , scale = 1.0, resurrectas = "cornecro"},

			-- Similarly to units, but these can also be resurrectable!
            -- You can /give corcom_dead with cheats when making your scenario, but it might not contain the 'resurrectas' tag, so be careful to add it if needed
			 -- {name = 'corcom_dead', x = 1125,y = 237, z = 734, rot = "0" , scale = 1.0, resurrectas = "corcom"}, -- there is no need for this dead comm here, just an example
			}
    },
    -- Full Documentation for start script here:
    -- https://github.com/spring/spring/blob/105.0/doc/StartScriptFormat.txt

    -- HOW TO MAKE THE START SCRIPT: Use Chobby's single player mode to set up your start script. When you launch a single player game, the start script is dumped into infolog.txt
    -- ModOptions: You can also set modoptions in chobby, and they will get dumped into the infolog's start script too, or just set then in chobby and copy paste them into the [modoptions] tag. as below
    -- The following keys MUST be present in startscript below
    --  scenariooptions = __SCENARIOOPTIONS__;
    -- Name = __PLAYERNAME__;
    -- myplayername = __PLAYERNAME__;
    -- gametype = __BARVERSION__;
    -- mapname =__MAPNAME__;

    -- Optional keys:
    -- __ENEMYHANDICAP__
    -- __PLAYERSIDE__
    -- __PLAYERHANDICAP__
    -- __NUMRESTRICTIONS__
    -- __RESTRICTEDUNITS__

	--[[TweakDefs:
	UnitDefs.corcom.buildoptions = {}
	UnitDefs["corcombroken"] = table.copy(UnitDefs["corcom"])
	UnitDefs.corcombroken.metalmake = 0
	UnitDefs.corcombroken.energymake = 0
	UnitDefs.armjamt.initCloaked = true
	UnitDefs.armflea.movestate = 1
	UnitDefs.corfink.losheight = 500
	UnitDefs.armsolar.onoffable = false --temporary crutch
	UnitDefs.armrad.category = "OBJECT"
	]]

	startscript		= [[[GAME]
	{
		[allyTeam0]
		{
			numallies = 0;
		}

		[ai1]
		{
			Host = 0;
			IsFromDemo = 0;
			Name = InactiveAI(4);
			ShortName = NullAI;
			Team = 2;
			Version = 0.1;
		}
	
		[team1]
		{
			Side = Cortex;
			Handicap = __ENEMYHANDICAP__;
			RgbColor = 0.99609375 0.546875 0;
			AllyTeam = 0;
			TeamLeader = 0;
			StartPosX = 4888;
			StartPosZ = 3712;
		}
	
		[allyTeam1]
		{
			numallies = 0;
		}
		
		[allyTeam2]
		{
			numallies = 0;
		}
	
		[team0]
		{
			Side = __PLAYERSIDE__;
			Handicap = __PLAYERHANDICAP__;
			RgbColor = 0.99609375 0.546875 0;
			AllyTeam = 0;
			TeamLeader = 0;
			StartPosX = 1176;
			StartPosZ = 1414;
		}
	
		[team2]
		{
			Side = Cortex;
			Handicap = __ENEMYHANDICAP__;
			RgbColor = 0.99609375 0.546875 0;
			AllyTeam = 2;
			TeamLeader = 0;
			StartPosX = 5164;
			StartPosZ = 615;
		}
	
		[modoptions]
		{
			tweakdefs = "VW5pdERlZnMuY29yY29tLmJ1aWxkb3B0aW9ucyA9IHt9ClVuaXREZWZzWyJjb3Jjb21icm9rZW4iXSA9IHRhYmxlLmNvcHkoVW5pdERlZnNbImNvcmNvbSJdKQpVbml0RGVmcy5jb3Jjb21icm9rZW4ubWV0YWxtYWtlID0gMApVbml0RGVmcy5jb3Jjb21icm9rZW4uZW5lcmd5bWFrZSA9IDAKVW5pdERlZnMuYXJtamFtdC5pbml0Q2xvYWtlZCA9IHRydWUKVW5pdERlZnMuYXJtZmxlYS5tb3Zlc3RhdGUgPSAxClVuaXREZWZzLmNvcmZpbmsubG9zaGVpZ2h0ID0gNTAwClVuaXREZWZzLmFybXNvbGFyLm9ub2ZmYWJsZSA9IGZhbHNlIC0tdGVtcG9yYXJ5IGNydXRjaApVbml0RGVmcy5hcm1yYWQuY2F0ZWdvcnkgPSAiT0JKRUNUIg";
			deathmode = none;
			maxunits = 2000;
			startenergy = 0;
			startmetal = 0;
			scenariooptions = __SCENARIOOPTIONS__;
		}
	
		[ai0]
		{
			Host = 0;
			IsFromDemo = 0;
			Name = InactiveAI(4);
			ShortName = NullAI;
			Team = 1;
			Version = 0.1;
		}
	
		[player0]
		{
			IsFromDemo = 0;
			Name = __PLAYERNAME__;
			Team = 0;
			rank = 0;
		}
	
		NumRestrictions=__NUMRESTRICTIONS__;
	
		[RESTRICT]
		{
			__RESTRICTEDUNITS__
		}
	
		hostip = 127.0.0.1;
		hostport = 0;
		numplayers = 1;
		startpostype = 3;  // 0 fixed, 1 random, 2 choose in game, 3 choose before game (see StartPosX)
		mapname = __MAPNAME__;
		ishost = 1;
		numusers = 4;
		gametype = __BARVERSION__;
		GameStartDelay = 7; // seconds before game starts after loading/placement
		myplayername = __PLAYERNAME__;
		nohelperais = 0;
	}
	]],

}

return scenariodata
