local scenariodata = {
	index			= 31, --  integer, sort order, MUST BE EQUAL TO FILENAME NUMBER
	scenarioid		= "Tutorial2", -- no spaces, lowercase, this will be used to save the score and can be used gadget side
    version         = "0.1", -- increment this to reset the score when changing a mission, as scores are keyed by (scenarioid,version,difficulty)
	title			= "Arduous Ascent", -- can be anything
	author			= "kroIya, Volshok, Zeteo, AidanNaut", -- your name here
	isnew = true,
	imagepath		= "scenario031.png", -- placed next to lua file, should be 3:1 ratio banner style
	imageflavor		= "The Elessar Mountains", -- This text will be drawn over image
    summary         = [[Ascend the mountain to secure RS-CH127.
     
* Establish a base within the foothills.
* Recover RS-CH127's Data Drive
* Your Commmander must survive.]],
	briefing 		= [[[Pipes] I don’t know how you made it out of the Canyon, Commander.  I’ve flown into the rough before, but that ambush should have been lethal.
 
[Blackout] Luckily the actual ambush was poorly executed, their forces felt almost distracted. More importantly, we've had no reports of Armada incursions in this sector, and I can't establish contact with the Primaris Systems.
 
[Gideon] The commander's sensors can confirm a massive jamming field enveloping this region, contact with nearby Cortex forces is impossible, let alone Lex Primus.
 
[Pipes] So, we’re on our own. No reinforcements. No fallback. Just us.
 
[Blackout] Yes, and our only lead is the research stations. We need to find them and have GDN-314 recover what he can. CH127 is closest, nestled atop the Elessar Mountains.
 
[Pipes] So we drop the Commander at the base of the mountains, and then run interference?
 
[Blackout] Sounds like a plan. The best thing we can do is distract the pursuers while he climbs.
 
[Gideon] There is an additional complication. The crash caused severe corruption to the Commander's construction schematics. I can only restore a limited subset of blueprints.
 
[Blackout] From what I've seen in the Trial and the Canyon, that shouldn't slow down the Commander. The Armada forces will get a firsthand lesson on Cortex retribution.
 
[Gideon] My data archives show limited resources and a winding path to ascend. You'll need to secure a base before advancing, Commander.
 
[Pipes] If you can walk away from that ambush, you can handle some scraplings on a hill, sir. We’re ready to drop you off whenever you’re set, Commander. Say the word.]],

	mapfilename		= "Elessar Mountains", -- the name of the map to be displayed here, and which to play on, no .smf ending needed
	playerstartx	= "16%", -- X position of where player comm icon should be drawn, from top left of the map
	playerstarty	= "26%", -- Y position of where player comm icon should be drawn, from top left of the map
	partime 		= 1200, -- par time in seconds (time a mission is expected to take on average)
	parresources	= 0, -- par resource amount (amount of metal one is expected to spend on mission)
	difficulty		= 1, -- Percieved difficulty at 'normal' level: integer 1-10
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
        scenarioid = "Tutorial2", -- this MUST be present and identical to the one defined at start
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
			{name = 'armfort', x = 100, y = 3346, z = 100, rot = -16384 , team = 2, neutral = true},
			{name = 'armflea', x = 3948, y = 1666, z = 5368, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 4030, y = 1678, z = 5376, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 4062, y = 1674, z = 5452, rot = 16384 , team = 2, neutral = false},
			{name = 'armflea', x = 3819, y = 1638, z = 5467, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 3940, y = 1643, z = 5495, rot = -16384 , team = 2, neutral = false},
			{name = 'armflea', x = 3886, y = 1638, z = 5539, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 3865, y = 1648, z = 5398, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 4028, y = 1649, z = 5522, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 3868, y = 1644, z = 5462, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 3824, y = 1621, z = 5552, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 3942, y = 1650, z = 5433, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 3954, y = 1636, z = 5553, rot = 0 , team = 2, neutral = false},
			{name = 'armfort', x = 232, y = 3403, z = 118, rot = 0 , team = 1, neutral = true},
			{name = 'armflea', x = 1933, y = 922, z = 7932, rot = -16384 , team = 2, neutral = false},
			{name = 'armflea', x = 2145, y = 929, z = 7793, rot = -16384 , team = 2, neutral = false},
			{name = 'armflea', x = 1990, y = 923, z = 7834, rot = -16384 , team = 2, neutral = false},
			{name = 'armflea', x = 2195, y = 925, z = 7712, rot = -16384 , team = 2, neutral = false},
			{name = 'armflea', x = 3387, y = 910, z = 7989, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 2499, y = 1257, z = 6542, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 2544, y = 1244, z = 6462, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 2165, y = 1346, z = 6504, rot = 0 , team = 2, neutral = false},
			{name = 'armflea', x = 2109, y = 1326, z = 6593, rot = 0 , team = 2, neutral = false},
			{name = 'armrock', x = 2207, y = 1355, z = 6437, rot = 0 , team = 2, neutral = false},
			{name = 'armrock', x = 729, y = 1331, z = 5030, rot = 0 , team = 2, neutral = false},
			{name = 'armrock', x = 812, y = 1362, z = 5044, rot = 0 , team = 2, neutral = false},
			{name = 'armwar', x = 773, y = 1336, z = 5082, rot = 0 , team = 2, neutral = false},
			{name = 'armwar', x = 3940, y = 901, z = 7532, rot = 0 , team = 2, neutral = false},
			{name = 'armmex', x = 4021, y = 924, z = 7366, rot = 0 , team = 2, neutral = false},
			{name = 'armrl', x = 3900, y = 969, z = 7224, rot = 0 , team = 2, neutral = false},
			{name = 'armrl', x = 4024, y = 974, z = 7207, rot = 0 , team = 2, neutral = false},
			{name = 'armllt', x = 4041, y = 906, z = 7463, rot = 0 , team = 2, neutral = false},
			{name = 'armllt', x = 3851, y = 928, z = 7378, rot = 0 , team = 2, neutral = false},
			{name = 'armllt', x = 2800, y = 1037, z = 6968, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 2003, y = 920, z = 7899, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 2219, y = 928, z = 7773, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 3315, y = 1558, z = 5601, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 3298, y = 1534, z = 5716, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 1254, y = 1322, z = 5840, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 3385, y = 911, z = 7918, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 3926, y = 912, z = 7438, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 2666, y = 967, z = 7398, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 2920, y = 990, z = 7430, rot = 0 , team = 2, neutral = false},
			{name = 'armrad', x = 2801, y = 980, z = 7418, rot = 0 , team = 2, neutral = false},
			{name = 'armrad', x = 2714, y = 1568, z = 5718, rot = 0 , team = 2, neutral = false},
			{name = 'armflash', x = 2043, y = 1356, z = 5756, rot = 0 , team = 2, neutral = false},
			{name = 'armflash', x = 2088, y = 1340, z = 5831, rot = 0 , team = 2, neutral = false},
			{name = 'armflash', x = 2003, y = 1335, z = 5837, rot = 0 , team = 2, neutral = false},
			{name = 'armpw', x = 1274, y = 1327, z = 6118, rot = 0 , team = 2, neutral = false},
			{name = 'armham', x = 697, y = 1324, z = 5093, rot = 0 , team = 2, neutral = false},
			{name = 'armham', x = 831, y = 1348, z = 5118, rot = 0 , team = 2, neutral = false},
			{name = 'armmex', x = 103, y = 1549, z = 4414, rot = 0 , team = 2, neutral = false},
			{name = 'armrl', x = 555, y = 1758, z = 4267, rot = 0 , team = 2, neutral = false},
			{name = 'armrl', x = 2532, y = 1944, z = 4446, rot = 0 , team = 2, neutral = false},
			{name = 'armrl', x = 2896, y = 1910, z = 4436, rot = 0 , team = 2, neutral = false},
			{name = 'armrl', x = 3259, y = 1985, z = 4433, rot = 0 , team = 2, neutral = false},
			{name = 'armrl', x = 3609, y = 1965, z = 4382, rot = 0 , team = 2, neutral = false},
			{name = 'armmex', x = 3977, y = 1885, z = 3750, rot = 0 , team = 2, neutral = false},
			{name = 'armllt', x = 38, y = 1509, z = 4612, rot = 0 , team = 2, neutral = false},
			{name = 'armllt', x = 605, y = 1562, z = 3967, rot = 0 , team = 2, neutral = false},
			{name = 'armllt', x = 789, y = 1563, z = 3771, rot = 0 , team = 2, neutral = false},
			{name = 'armestor', x = 24, y = 1562, z = 3816, rot = 0 , team = 2, neutral = false},
			{name = 'armadvsol', x = 96, y = 1562, z = 3728, rot = 0 , team = 2, neutral = false},
			{name = 'armadvsol', x = 208, y = 1567, z = 3696, rot = 0 , team = 2, neutral = false},
			{name = 'armmex', x = 1584, y = 1712, z = 3792, rot = 0 , team = 2, neutral = false},
			{name = 'armllt', x = 3120, y = 1938, z = 3888, rot = 0 , team = 2, neutral = false},
			{name = 'armllt', x = 2992, y = 1927, z = 4224, rot = 0 , team = 2, neutral = false},
			{name = 'armdrag', x = 2992, y = 1925, z = 4192, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 2960, y = 1925, z = 4224, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 2992, y = 1932, z = 4256, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 3088, y = 1938, z = 3888, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 3120, y = 1935, z = 3856, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 3120, y = 1941, z = 3920, rot = 0 , team = 2, neutral = true},
			{name = 'armstump', x = 2505, y = 1931, z = 4128, rot = -17508 , team = 2, neutral = false},
			{name = 'armstump', x = 2504, y = 1935, z = 4043, rot = -14754 , team = 2, neutral = false},
			{name = 'armstump', x = 2519, y = 1912, z = 3981, rot = -16452 , team = 2, neutral = false},
			{name = 'armstump', x = 2521, y = 1925, z = 4202, rot = -9736 , team = 2, neutral = false},
			{name = 'armrad', x = 3152, y = 2473, z = 3344, rot = 0 , team = 2, neutral = false},
			{name = 'armrl', x = 3768, y = 2700, z = 1816, rot = 0 , team = 2, neutral = false},
			{name = 'armrl', x = 3752, y = 2721, z = 1448, rot = 0 , team = 2, neutral = false},
			{name = 'armrl', x = 3752, y = 2737, z = 1096, rot = 0 , team = 2, neutral = false},
			{name = 'armrl', x = 3768, y = 2714, z = 760, rot = 0 , team = 2, neutral = false},
			{name = 'armdrag', x = 2112, y = 2295, z = 2512, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 2112, y = 2283, z = 2544, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 2112, y = 2277, z = 2576, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 2112, y = 2268, z = 2608, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 2112, y = 2261, z = 2640, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 2112, y = 2251, z = 2672, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 2112, y = 2247, z = 2704, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 2112, y = 2244, z = 2736, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 2112, y = 2243, z = 2768, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 2112, y = 2242, z = 2800, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 2096, y = 2242, z = 2832, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 2064, y = 2252, z = 2864, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 2032, y = 2264, z = 2896, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 2000, y = 2271, z = 2928, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1984, y = 2271, z = 2960, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1952, y = 2271, z = 2992, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1920, y = 2280, z = 3024, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1888, y = 2313, z = 3056, rot = 0 , team = 2, neutral = true},
			{name = 'armllt', x = 1808, y = 2221, z = 2880, rot = 0 , team = 2, neutral = false},
			{name = 'armllt', x = 1904, y = 2252, z = 2672, rot = 0 , team = 2, neutral = false},
			{name = 'armllt', x = 1920, y = 2280, z = 2496, rot = 0 , team = 2, neutral = false},
			{name = 'armdrag', x = 1920, y = 2283, z = 2464, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1888, y = 2278, z = 2496, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1920, y = 2277, z = 2528, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1904, y = 2257, z = 2640, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1872, y = 2253, z = 2672, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1904, y = 2245, z = 2704, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1808, y = 2222, z = 2848, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1776, y = 2219, z = 2880, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1808, y = 2231, z = 2912, rot = 0 , team = 2, neutral = true},
			{name = 'armmex', x = 1520, y = 2228, z = 2576, rot = 0 , team = 2, neutral = false},
			{name = 'armmex', x = 1040, y = 2246, z = 2432, rot = 0 , team = 2, neutral = false},
			{name = 'armllt', x = 816, y = 2304, z = 2256, rot = 0 , team = 2, neutral = false},
			{name = 'armdrag', x = 848, y = 2296, z = 2256, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 832, y = 2314, z = 2224, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 800, y = 2315, z = 2224, rot = 0 , team = 2, neutral = true},
			{name = 'armllt', x = 1312, y = 2273, z = 2272, rot = 0 , team = 2, neutral = false},
			{name = 'armcir', x = 400, y = 2241, z = 2352, rot = 0 , team = 2, neutral = false},
			{name = 'armllt', x = 1168, y = 2250, z = 2576, rot = 0 , team = 2, neutral = false},
			{name = 'armdrag', x = 720, y = 2630, z = 1040, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2625, z = 1072, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2622, z = 1104, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2618, z = 1136, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2616, z = 1168, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2618, z = 1200, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2623, z = 1232, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2619, z = 1264, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2606, z = 1296, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2600, z = 1328, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2593, z = 1360, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2598, z = 1392, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2596, z = 1424, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2593, z = 1456, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2586, z = 1488, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2572, z = 1520, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2557, z = 1552, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2547, z = 1584, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2533, z = 1616, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 752, y = 2543, z = 1616, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 784, y = 2563, z = 1616, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 816, y = 2574, z = 1616, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 848, y = 2578, z = 1616, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 880, y = 2578, z = 1616, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 912, y = 2581, z = 1616, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1264, y = 2599, z = 1616, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1296, y = 2598, z = 1616, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1328, y = 2599, z = 1616, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1360, y = 2601, z = 1616, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1392, y = 2599, z = 1616, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1424, y = 2599, z = 1616, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2589, z = 1616, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2599, z = 1584, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2606, z = 1552, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2610, z = 1520, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2609, z = 1488, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2601, z = 1456, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2602, z = 1424, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2600, z = 1392, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2593, z = 1360, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2592, z = 1328, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2592, z = 1296, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2592, z = 1264, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2593, z = 1232, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2596, z = 1200, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2599, z = 1168, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2602, z = 1136, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2601, z = 1104, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2600, z = 1072, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2602, z = 1040, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1456, y = 2603, z = 1008, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1008, y = 2609, z = 1008, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 976, y = 2609, z = 1008, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 944, y = 2609, z = 1008, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 912, y = 2611, z = 1008, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 880, y = 2614, z = 1008, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 848, y = 2617, z = 1008, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 816, y = 2621, z = 1008, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 784, y = 2628, z = 1008, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 752, y = 2635, z = 1008, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 720, y = 2647, z = 1008, rot = 0 , team = 2, neutral = true},
			{name = 'mission_command_tower', x = 1056, y = 2602, z = 1255, rot = 0 , team = 2, neutral = false},
			{name = 'armmex', x = 2992, y = 2246, z = 2032, rot = 0 , team = 3, neutral = false},
			{name = 'armmex', x = 3216, y = 2232, z = 2256, rot = 0 , team = 3, neutral = false},
			{name = 'armclaw', x = 2672, y = 2309, z = 2368, rot = 0 , team = 3, neutral = true},
			{name = 'armhlt', x = 3008, y = 2249, z = 2608, rot = 0 , team = 3, neutral = false},
			{name = 'armdrag', x = 2704, y = 2304, z = 2368, rot = 0 , team = 3, neutral = true},
			{name = 'armdrag', x = 2672, y = 2309, z = 2400, rot = 0 , team = 3, neutral = true},
			{name = 'armdrag', x = 2640, y = 2319, z = 2368, rot = 0 , team = 3, neutral = true},
			{name = 'armdrag', x = 3040, y = 2244, z = 2608, rot = 0 , team = 3, neutral = true},
			{name = 'armdrag', x = 3008, y = 2244, z = 2640, rot = 0 , team = 3, neutral = true},
			{name = 'armdrag', x = 2976, y = 2251, z = 2608, rot = 0 , team = 3, neutral = true},
			{name = 'armadvsol', x = 2848, y = 2256, z = 1792, rot = 0 , team = 3, neutral = false},
			{name = 'armadvsol', x = 2912, y = 2250, z = 1792, rot = 0 , team = 3, neutral = false},
			{name = 'armadvsol', x = 2864, y = 2253, z = 1856, rot = 0 , team = 3, neutral = false},
			{name = 'armmstor', x = 2832, y = 2255, z = 1584, rot = 0 , team = 3, neutral = false},
			{name = 'armestor', x = 2808, y = 2254, z = 1528, rot = 0 , team = 3, neutral = false},
			{name = 'armwin', x = 2792, y = 2221, z = 1016, rot = 0 , team = 3, neutral = false},
			{name = 'armwin', x = 2856, y = 2179, z = 888, rot = 0 , team = 3, neutral = false},
			{name = 'armwin', x = 2952, y = 2171, z = 808, rot = 0 , team = 3, neutral = false},
			{name = 'armwin', x = 3032, y = 2190, z = 760, rot = 0 , team = 3, neutral = false},
			{name = 'armmakr', x = 3432, y = 2258, z = 1128, rot = 0 , team = 3, neutral = false},
			{name = 'armmakr', x = 3432, y = 2257, z = 1176, rot = 0 , team = 3, neutral = false},
			{name = 'armmakr', x = 3432, y = 2259, z = 1224, rot = 0 , team = 3, neutral = false},
			{name = 'armmakr', x = 3432, y = 2255, z = 1272, rot = 0 , team = 3, neutral = false},
			{name = 'armmakr', x = 3432, y = 2256, z = 1320, rot = 0 , team = 3, neutral = false},
			{name = 'armmakr', x = 3432, y = 2261, z = 1368, rot = 0 , team = 3, neutral = false},
			{name = 'armmakr', x = 3432, y = 2268, z = 1416, rot = 0 , team = 3, neutral = false},
			{name = 'armsolar', x = 3368, y = 2260, z = 1400, rot = 0 , team = 3, neutral = false},
			{name = 'armsolar', x = 3368, y = 2264, z = 1320, rot = 0 , team = 3, neutral = false},
			{name = 'armsolar', x = 3368, y = 2263, z = 1240, rot = 0 , team = 3, neutral = false},
			{name = 'armsolar', x = 3368, y = 2264, z = 1160, rot = 0 , team = 3, neutral = false},
			{name = 'armmakr', x = 3304, y = 2261, z = 1128, rot = 0 , team = 3, neutral = false},
			{name = 'armmakr', x = 3304, y = 2265, z = 1176, rot = 0 , team = 3, neutral = false},
			{name = 'armmakr', x = 3304, y = 2264, z = 1224, rot = 0 , team = 3, neutral = false},
			{name = 'armmakr', x = 3304, y = 2262, z = 1272, rot = 0 , team = 3, neutral = false},
			{name = 'armmakr', x = 3304, y = 2256, z = 1368, rot = 0 , team = 3, neutral = false},
			{name = 'armmakr', x = 3304, y = 2253, z = 1416, rot = 0 , team = 3, neutral = false},
			{name = 'armllt', x = 3296, y = 2259, z = 1328, rot = 0 , team = 3, neutral = false},
			{name = 'armmex', x = 3312, y = 2239, z = 1968, rot = 0 , team = 3, neutral = false},
			{name = 'armllt', x = 3392, y = 2268, z = 1456, rot = 0 , team = 3, neutral = false},
			{name = 'armllt', x = 3328, y = 2256, z = 1456, rot = 0 , team = 3, neutral = false},
			{name = 'armnanotc', x = 2984, y = 2233, z = 1512, rot = 0 , team = 3, neutral = false},
			{name = 'armdrag', x = 1083, y = 2270, z = 2298, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1114, y = 2275, z = 2276, rot = 0 , team = 2, neutral = true},
			{name = 'armdrag', x = 1145, y = 2269, z = 2298, rot = 0 , team = 2, neutral = true},
		},
		featureloadout = {
			{name = 'armpw_dead', x = 719, y = 2240, z = 2431, rot = 0 , scale = 1.0, resurrectas = "armpw"},
			{name = 'armwar_dead', x = 1044, y = 2594, z = 1478, rot = 0 , scale = 1.0, resurrectas = "armwar"},
			{name = 'armpw_dead', x = 2739, y = 1076, z = 8119, rot = 0 , scale = 1.0, resurrectas = "armpw"},
			{name = 'armwar_dead', x = 814, y = 2234, z = 2551, rot = 0 , scale = 1.0, resurrectas = "armwar"},
			{name = 'armhlt_dead', x = 913, y = 2261, z = 2325, rot = 0 , scale = 1.0, resurrectas = "armhlt"},
			{name = 'armpw_dead', x = 1106, y = 2465, z = 1878, rot = 0 , scale = 1.0, resurrectas = "armpw"},
			{name = 'armllt_dead', x = 1115, y = 2267, z = 2305, rot = 0 , scale = 1.0, resurrectas = "armllt"},
			{name = 'armrl_dead', x = 405, y = 2297, z = 2696, rot = 0 , scale = 1.0, resurrectas = "armrl"},
			{name = 'armpw_dead', x = 965, y = 2601, z = 1513, rot = 0 , scale = 1.0, resurrectas = "armpw"},
			{name = 'armrock_dead', x = 361, y = 2259, z = 2571, rot = 0 , scale = 1.0, resurrectas = "armrock"},
			{name = 'armstump_dead', x = 799, y = 2250, z = 2369, rot = 0 , scale = 1.0, resurrectas = "armstump"},
			{name = 'armpw_dead', x = 803, y = 2395, z = 2055, rot = 0 , scale = 1.0, resurrectas = "armpw"},
			{name = 'armwar_dead', x = 1526, y = 2613, z = 1508, rot = 0 , scale = 1.0, resurrectas = "armwar"},
			{name = 'armwar_dead', x = 1141, y = 2502, z = 1769, rot = 0 , scale = 1.0, resurrectas = "armwar"},
			{name = 'armstump_dead', x = 1316, y = 2242, z = 2529, rot = 0 , scale = 1.0, resurrectas = "armstump"},
			{name = 'armrl_dead', x = 947, y = 2236, z = 2733, rot = 0 , scale = 1.0, resurrectas = "armrl"},
			{name = 'armham_dead', x = 1126, y = 2257, z = 2397, rot = 0 , scale = 1.0, resurrectas = "armham"},
			{name = 'armwar_dead', x = 874, y = 2591, z = 1455, rot = 0 , scale = 1.0, resurrectas = "armwar"},
			{name = 'armhlt_dead', x = 512, y = 2244, z = 2490, rot = 0 , scale = 1.0, resurrectas = "armhlt"},
			{name = 'armflash_dead', x = 608, y = 2241, z = 2559, rot = 0 , scale = 1.0, resurrectas = "armflash"},
			{name = 'armwar_dead', x = 1515, y = 2597, z = 1387, rot = 0 , scale = 1.0, resurrectas = "armwar"},
			{name = 'armpw_dead', x = 1231, y = 2242, z = 2647, rot = 0 , scale = 1.0, resurrectas = "armpw"},
			{name = 'armcir_dead', x = 659, y = 2244, z = 2659, rot = 0 , scale = 1.0, resurrectas = "armcir"},
			{name = 'armwar_dead', x = 1221, y = 2253, z = 2420, rot = 0 , scale = 1.0, resurrectas = "armwar"},
			{name = 'armham_dead', x = 562, y = 2270, z = 2327, rot = 0 , scale = 1.0, resurrectas = "armham"},
			{name = 'armham_dead', x = 804, y = 2510, z = 1776, rot = 0 , scale = 1.0, resurrectas = "armham"},
			{name = 'armwar_dead', x = 892, y = 2322, z = 2147, rot = 0 , scale = 1.0, resurrectas = "armwar"},
			{name = 'armrock_dead', x = 961, y = 2476, z = 1843, rot = 0 , scale = 1.0, resurrectas = "armrock"},
			{name = 'armpw_dead', x = 804, y = 2429, z = 1970, rot = 0 , scale = 1.0, resurrectas = "armpw"},
			{name = 'armpw_dead', x = 1288, y = 2596, z = 1362, rot = 0 , scale = 1.0, resurrectas = "armpw"},
			{name = 'armpw_dead', x = 2646, y = 1080, z = 8112, rot = 0 , scale = 1.0, resurrectas = "armpw"},
			{name = 'armham_dead', x = 952, y = 2436, z = 1971, rot = 0 , scale = 1.0, resurrectas = "armham"},
			{name = 'heap', x = 979, y = 2593, z = 1610, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1097, y = 2598, z = 1617, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1026, y = 2593, z = 1615, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 950, y = 2586, z = 1611, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1216, y = 2604, z = 1006, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1361, y = 2598, z = 1008, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1188, y = 2608, z = 1007, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1334, y = 2598, z = 1008, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1073, y = 2596, z = 1613, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1253, y = 2601, z = 1005, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1101, y = 2607, z = 1003, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1159, y = 2610, z = 1008, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1433, y = 2601, z = 1009, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1404, y = 2599, z = 1009, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1423, y = 2600, z = 1009, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1042, y = 2593, z = 1611, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1311, y = 2599, z = 1008, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1291, y = 2599, z = 1007, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1382, y = 2598, z = 1008, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1042, y = 2608, z = 1003, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1203, y = 2590, z = 1619, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1072, y = 2608, z = 1003, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1122, y = 2599, z = 1617, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1003, y = 2596, z = 1613, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1172, y = 2588, z = 1617, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1129, y = 2608, z = 1003, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1226, y = 2594, z = 1619, rot = 0 , scale = 1.0, resurrectas = ""},
			{name = 'heap', x = 1147, y = 2596, z = 1617, rot = 0 , scale = 1.0, resurrectas = ""},
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
	UnitDefs.armflea.movestate = 1
	UnitDefs.armck.maxthisunit = 0
	UnitDefs.armrectr.maxthisunit = 0
	UnitDefs.corck.buildoptions = {
			[1] = "corsolar",
			[7] = "cormex",
			[9] = "cormakr",
			[11] = "corlab",
			[16] = "coreyes",
			[17] = "corrad",
			[18] = "cordrag",
			[20] = "corllt",
			[24] = "corrl",
		}
	UnitDefs.corcom.buildoptions = {
			[1] = "corsolar",
			[7] = "cormex",
			[9] = "cormakr",
			[11] = "corlab",
			[16] = "coreyes",
			[17] = "corrad",
			[18] = "cordrag",
			[20] = "corllt",
			[24] = "corrl",
		}
	]]

	--[[[ai2]
		{
			[options]
			{
				profile = easy;
				comm_merge = false;
				cheating = false;
				ally_base = true;
				disabledunits = ;
				game_config = true;
			}
			Host = 0;
			IsFromDemo = 0;
			Name = BARbstable(1);
			ShortName = BARb;
			Team = 3;
			Version = stable;
		}]]

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

		[ai2]
		{
			[options]
			{
				profile = hard_aggressive;
				comm_merge = false;
				cheating = false;
				ally_base = true;
				disabledunits = ;
				game_config = true;
			}
			Host = 0;
			IsFromDemo = 0;
			Name = BARbstable(1);
			ShortName = BARb;
			Team = 3;
			Version = stable;
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
			Side = Armada;
			Handicap = __ENEMYHANDICAP__;
			RgbColor = 0.99609375 0.546875 0;
			AllyTeam = 2;
			TeamLeader = 0;
			StartPosX = 5164;
			StartPosZ = 615;
		}
		
		[team3]
		{
			Side = Armada;
			Handicap = __ENEMYHANDICAP__;
			RgbColor = 0.99609375 0.546875 0;
			AllyTeam = 2;
			TeamLeader = 0;
			StartPosX = 5164;
			StartPosZ = 615;
		}
	
		[modoptions]
		{
			tweakdefs = "CVVuaXREZWZzLmFybWZsZWEubW92ZXN0YXRlID0gMQoJVW5pdERlZnMuYXJtY2subWF4dGhpc3VuaXQgPSAwCglVbml0RGVmcy5hcm1yZWN0ci5tYXh0aGlzdW5pdCA9IDAKCVVuaXREZWZzLmNvcmNrLmJ1aWxkb3B0aW9ucyA9IHsKCQkJWzFdID0gImNvcnNvbGFyIiwKCQkJWzddID0gImNvcm1leCIsCgkJCVs5XSA9ICJjb3JtYWtyIiwKCQkJWzExXSA9ICJjb3JsYWIiLAoJCQlbMTZdID0gImNvcmV5ZXMiLAoJCQlbMTddID0gImNvcnJhZCIsCgkJCVsxOF0gPSAiY29yZHJhZyIsCgkJCVsyMF0gPSAiY29ybGx0IiwKCQkJWzI0XSA9ICJjb3JybCIsCgkJfQoJVW5pdERlZnMuY29yY29tLmJ1aWxkb3B0aW9ucyA9IHsKCQkJWzFdID0gImNvcnNvbGFyIiwKCQkJWzddID0gImNvcm1leCIsCgkJCVs5XSA9ICJjb3JtYWtyIiwKCQkJWzExXSA9ICJjb3JsYWIiLAoJCQlbMTZdID0gImNvcmV5ZXMiLAoJCQlbMTddID0gImNvcnJhZCIsCgkJCVsxOF0gPSAiY29yZHJhZyIsCgkJCVsyMF0gPSAiY29ybGx0IiwKCQkJWzI0XSA9ICJjb3JybCIsCgkJfQ";
			deathmode = none;
			maxunits = 2000;
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
