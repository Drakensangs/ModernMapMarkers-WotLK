-- Modern Map Markers - WotLK 3.3.5a Version
-- Marker data: { continent, zoneID, x, y, name, type, info, Atlas ID }

-- Standard defaultPoints (used when WDM is not detected)
local defaultPoints = {
    -- Kalimdor Dungeons
    {1, 1, 0.123, 0.128, "Blackfathom Deeps", "dungeon", "24-32", 3},
    {1, 11, 0.648, 0.303, "Dire Maul - East", "dungeon", "55-58", 10},
    {1, 11, 0.771, 0.369, "Dire Maul - East\n|cFF808080(The Hidden Reach)|r", "dungeon", "55-58", 10},
    {1, 11, 0.671, 0.34, "Dire Maul - East\n|cFF808080(Side Entrance)|r", "dungeon", "55-58", 10},
    {1, 11, 0.624, 0.249, "Dire Maul - North", "dungeon", "57-60", 12},
    {1, 11, 0.604, 0.311, "Dire Maul - West", "dungeon", "57-60", 13},
    {1, 7, 0.29, 0.629, "Maraudon", "dungeon", "46-55", 14},
    {1, 14, 0.53, 0.486, "Ragefire Chasm", "dungeon", "13-18", 17},
    {1, 19, 0.508, 0.94, "Razorfen Downs", "dungeon", "37-46", 18},
    {1, 19, 0.423, 0.9, "Razorfen Kraul", "dungeon", "29-38", 19},
    {1, 19, 0.462, 0.357, "Wailing Caverns", "dungeon", "17-24", 20},
    {1, 17, 0.389, 0.184, "Zul'Farrak", "dungeon", "44-54", 22},
	{1, 17, 0.650, 0.458, "Old Hillsbrad Foothills", "dungeon", "66-70", 7},
	{1, 17, 0.685, 0.48, "The Black Morass", "dungeon", "68-70", 8},
	{1, 17, 0.678, 0.512, "The Culling of Stratholme", "dungeon", "75-80", 9},
	-- Kalimdor Raids
	{1, 9, 0.529, 0.777, "Onyxia's Lair", "raid", "60", 16},
	{1, 15, 0.305, 0.987, "Ruins of Ahn'Qiraj", "raid", "60", 1},
	{1, 15, 0.269, 0.987, "Temple of Ahn'Qiraj", "raid", "60", 2},
	{1, 17, 0.67, 0.45, "Hyjal Summit", "raid", "70", 6},
	-- Kalimdor World Bosses
	{1, 2, 0.535, 0.816, "Azuregos", "worldboss", "60", nil},
	{1, 1, 0.937, 0.355, "Emerald Dragon - Spawn Point 1 of 4", "worldboss", "60", nil},
	{1, 11, 0.512, 0.108, "Emerald Dragon - Spawn Point 2 of 4", "worldboss", "60", nil},
    -- Kalimdor Transport
    {1, 8, 0.512, 0.135, "Zeppelins to Tirisfal Glades & Grom'Gol", "zepp", "Horde", nil},
    {1, 8, 0.415, 0.183, "Zeppelins to Thunder Bluff & Warsong Hold", "zepp", "Horde", nil},
    {1, 22, 0.137, 0.257, "Zeppelin to Durotar", "zepp", "Horde", nil},
    {1, 19, 0.636, 0.389, "Boat to Booty Bay", "boat", "Neutral", nil},
	{1, 5, 0.333, 0.399, "Boat to Rut'Theran Village", "boat", "Alliance", nil},
	{1, 5, 0.308, 0.410, "Boat to Azuremyst Isle", "boat", "Alliance", nil},
	{1, 5, 0.325, 0.436, "Boat to Stormwind Harbor", "boat", "Alliance", nil},
	{1, 9, 0.718, 0.566, "Boat to Menethil Harbor", "boat", "Alliance", nil},
	{1, 11, 0.311, 0.395, "Boat to Forgotten Coast", "boat", "Alliance", nil},
	{1, 11, 0.431, 0.428, "Boat to Sardor Isle", "boat", "Alliance", nil},
	{1, 18, 0.552, 0.949, "Boat to Auberdine", "boat", "Alliance", nil},
	{1, 3, 0.200, 0.542, "Boat to Auberdine", "boat", "Alliance", nil},
	-- Kalimdor Portals
	{1, 6, 0.405, 0.817, "Portal to Blasted Lands", "portal", "Alliance", nil},
	{1, 20, 0.463, 0.608, "Portal to Blasted Lands", "portal", "Alliance", nil},
	{1, 14, 0.381, 0.857, "Portal to Blasted Lands", "portal", "Horde", nil},
	{1, 22, 0.232, 0.135, "Portal to Blasted Lands\n|cFF808080(Inside The Pools of Vision)|r", "portal", "Horde", nil},
    -- Eastern Kingdoms Dungeons
    {2, 18, 0.387, 0.833, "Blackrock Depths", "dungeon", "52-60", 2},
	{2, 5, 0.328, 0.365, "Blackrock Depths", "dungeon", "52-60", 2},
    {2, 28, 0.423, 0.726, "The Deadmines", "dungeon", "17-24", 7},
    {2, 7, 0.178, 0.392, "Gnomeregan", "dungeon", "29-38", 9},
    {2, 7, 0.216, 0.30, "Gnomeregan\n|cFF808080(Workshop Entrance)|r", "dungeon", "29-38", 9},
    {2, 5, 0.32, 0.39, "Lower Blackrock Spire", "dungeon", "55-60", 3},
	{2, 18, 0.379, 0.863, "Lower Blackrock Spire", "dungeon", "55-60", 3},
    {2, 25, 0.87, 0.325, "Scarlet Monastery - Armory", "dungeon", "32-42", 16}, 
    {2, 25, 0.862, 0.295, "Scarlet Monastery - Cathedral", "dungeon", "35-45", 17}, 
    {2, 25, 0.839, 0.283, "Scarlet Monastery - Graveyard", "dungeon", "26-36", 18},
    {2, 25, 0.85, 0.335, "Scarlet Monastery - Library", "dungeon", "29-39", 19},
    {2, 27, 0.69, 0.729, "Scholomance", "dungeon", "58-60", 20},
    {2, 20, 0.448, 0.678, "Shadowfang Keep", "dungeon", "22-30", 21},
    {2, 21, 0.508, 0.67, "The Stockade", "dungeon", "24-31", 22},
    {2, 9, 0.273, 0.122, "Stratholme", "dungeon", "58-60", 23},
    {2, 9, 0.437, 0.175, "Stratholme\n|cFF808080(Back Gate)|r", "dungeon", "58-60", 23},
    {2, 23, 0.703, 0.55, "The Sunken Temple", "dungeon", "50-60", 24},
    {2, 3, 0.429, 0.13, "Uldaman", "dungeon", "41-51", 27},
    {2, 3, 0.657, 0.438, "Uldaman\n|cFF808080(Back Entrance)|r", "dungeon", "41-51", 27},
    {2, 5, 0.312, 0.365, "Upper Blackrock Spire", "dungeon", "55-60", 4},
	{2, 18, 0.371, 0.833, "Upper Blackrock Spire", "dungeon", "55-60", 4},
	{2, 15, 0.612, 0.309, "Magisters' Terrace", "dungeon", "70", 14},
	-- Eastern Kingdoms Raids
	{2, 18, 0.332, 0.833, "Blackwing Lair", "raid", "60", 5},
	{2, 5, 0.273, 0.363, "Blackwing Lair", "raid", "60", 5},
	{2, 18, 0.332, 0.86, "Molten Core", "raid", "60", 6},
	{2, 5, 0.273, 0.39, "Molten Core", "raid", "60", 6},
	{2, 22, 0.53, 0.172, "Zul'Gurub", "raid", "60", 30},
	{2, 12, 0.78, 0.64, "Zul'Aman", "raid", "70", 29},
	{2, 15, 0.443, 0.456, "Sunwell Plateau", "raid", "70", 26},
	{2, 6, 0.469, 0.747, "Karazhan", "raid", "70", 12},
	{2, 6, 0.467, 0.708, "Karazhan\n|cFF808080(Side Entrance)|r", "raid", "70", 12},
	-- Eastern Kingdoms World Bosses
	{2, 8, 0.465, 0.357, "Emerald Dragon - Spawn Point 3 of 4", "worldboss", "60", nil},
	{2, 24, 0.632, 0.217, "Emerald Dragon - Spawn Point 4 of 4", "worldboss", "60", nil},
	-- Eastern Kingdoms Transport
	{2, 21, 0.677, 0.325, "Tram to Ironforge", "tram", "Alliance", nil},
	{2, 14, 0.762, 0.511, "Tram to Stormwind", "tram", "Alliance", nil},
	{2, 29, 0.051, 0.634, "Boat to Theramore Isle", "boat", "Alliance", nil},
	{2, 29, 0.046, 0.572, "Boat to Valgarde", "boat", "Alliance", nil},
	{2, 22, 0.257, 0.73, "Boat to Ratchet", "boat", "Neutral", nil},
	{2, 25, 0.606, 0.583, "Zeppelins to Durotar, Grom'Gol & Vengeance Landing", "zepp", "Horde", nil},
	{2, 22, 0.312, 0.298, "Zeppelins to Tirisfal Glades & Durotar", "zepp", "Horde", nil},
	{2, 21, 0.216, 0.562, "Boat to Rut'Theran Village", "boat", "Alliance", nil},
	{2, 21, 0.172, 0.251, "Boat to Valiance Keep", "boat", "Alliance", nil},
	-- Eastern Kingdoms Portals
	{2, 19, 0.495, 0.148, "Silvermoon to Ruins of Lordaeron\n|cFF808080(Orb of Translocation)|r", "portal", "Horde", nil},
	{2, 19, 0.583, 0.21, "Portal to Blasted Lands", "portal", "Horde", nil},
	{2, 26, 0.595, 0.111, "Ruins of Lordaeron to Silvermoon\n|cFF808080(Orb of Translocation)|r", "portal", "Horde", nil},
	{2, 26, 0.852, 0.17, "Portal to Blasted Lands", "portal", "Horde", nil},
	{2, 21, 0.490, 0.873, "Portal to Blasted Lands", "portal", "Alliance", nil},
	{2, 14, 0.272, 0.07, "Portal to Blasted Lands", "portal", "Alliance", nil},
	-- Outland Dungeons
    {3, 2, 0.48, 0.535, "Hellfire Ramparts", "dungeon", "60-62", 16},
    {3, 2, 0.46, 0.51, "The Blood Furnance", "dungeon", "60-62", 18},
    {3, 2, 0.48, 0.51, "Shattered Halls", "dungeon", "69-70", 19},
    {3, 4, 0.745, 0.577, "The Arcatraz", "dungeon", "70", 20},
    {3, 4, 0.717, 0.55, "The Botanica", "dungeon", "70", 21},
    {3, 4, 0.706, 0.698, "The Mechanar", "dungeon", "70", 23},
    {3, 7, 0.396, 0.602, "Mana-Tombs", "dungeon", "64-66", 3},
    {3, 7, 0.361, 0.656, "Auchenai Crypts", "dungeon", "65-67", 2},
    {3, 7, 0.432, 0.656, "Sethekk Halls", "dungeon", "67-69", 4},
    {3, 7, 0.396, 0.71, "Shadow Labyrinth", "dungeon", "69-70", 5},
    {3, 8, 0.523, 0.386, "The Underbog", "dungeon", "62-64", 13},
    {3, 8, 0.475, 0.41, "The Slave Pens", "dungeon", "63-65", 11},
    {3, 8, 0.483, 0.386, "The Steamvault", "dungeon", "64-66", 12},
	-- Outland Raids
    {3, 1, 0.693, 0.237, "Gruul's Lair", "raid", "70", 14},
    {3, 2, 0.46, 0.535, "Magtheridon's Lair", "raid", "70", 17},
    {3, 4, 0.737, 0.637, "The Eye", "raid", "70", 22},
    {3, 5, 0.711, 0.464, "Black Temple", "raid", "70", 6},
    {3, 8, 0.503, 0.386, "Serpentshrine Cavern", "raid", "70", 10},
	-- Outland World Bosses
	{3, 2, 0.633, 0.156, "Doom Lord Kazzak", "worldboss", "70", nil},
    {3, 5, 0.729, 0.44, "Doomwalker", "worldboss", "70", nil},
	-- Outland Portals
	{3, 6, 0.597, 0.466, "Portal to Exodar", "portal", "Alliance", nil},
	{3, 6, 0.591, 0.483, "Portal to Silvermoon", "portal", "Horde", nil},
	{3, 6, 0.558, 0.367, "Portals to Darnassus, Stormwind & Ironforge", "portal", "Alliance", nil},
	{3, 6, 0.522, 0.529, "Portals to Thunder Bluff, Orgrimmar & Undercity", "portal", "Horde", nil},
	{3, 6, 0.486, 0.42, "Portal to Isle of Quel'Danas", "portal", "Neutral", nil},
	{3, 2, 0.886, 0.528, "Portal to Stormwind", "portal", "Alliance", nil},
	{3, 2, 0.886, 0.477, "Portal to Orgrimmar", "portal", "Horde", nil},
	-- Northrend Dungeons
    {4, 6, 0.587, 0.502, "Utgarde Keep", "dungeon", "70-72", 26},
    {4, 6, 0.573, 0.467, "Utgarde Pinnacle", "dungeon", "80", 27},
    {4, 5, 0.177, 0.266, "Drak'Tharon Keep", "dungeon", "74-76", 7},
    {4, 12, 0.270, 0.87, "Drak'Tharon Keep", "dungeon", "74-76", 7},
    {4, 12, 0.761, 0.21, "Gundrak\n|cFF808080(Cave of Mam'toth)|r", "dungeon", "76-78", 11},
    {4, 12, 0.813, 0.291, "Gundrak\n|cFF808080(Den of Sseratus)|r", "dungeon", "76-78", 11},
    {4, 10, 0.395, 0.269, "Halls of Stone", "dungeon", "77-79", 25},
    {4, 10, 0.454, 0.213, "Halls of Lightning", "dungeon", "80", 24},
    {4, 4, 0.288, 0.531, "Ahn'Kahet: The Old Kingdom\n|cFF808080(Inside The Pit of Narjun)|r", "dungeon", "73-75", 1},
    {4, 4, 0.252, 0.531, "Azjol-Nerub\n|cFF808080(Inside The Pit of Narjun)|r", "dungeon", "72-74", 2},
    {4, 1, 0.296, 0.267, "The Oculus", "dungeon", "80", 18},
    {4, 1, 0.254, 0.267, "The Nexus", "dungeon", "71-73", 17},
    {4, 3, 0.7, 0.725, "The Violet Hold", "dungeon", "75-77", 29, 1},
    {4, 8, 0.742, 0.203, "Trial of the Champion", "dungeon", "75-80", 5},
    {4, 8, 0.564, 0.873, "The Forge of Souls", "dungeon", "80", 10},
    {4, 8, 0.559, 0.945, "Pit of Saron", "dungeon", "80", 9},
    {4, 8, 0.586, 0.906, "Halls of Reflection", "dungeon", "80", 8},
	-- Northrend Raids
    {4, 11, 0.5, 0.116, "Vault of Archavon", "raid", "80", 28},
    {4, 4, 0.600, 0.57, "The Obsidian Sanctum", "raid", "80", 3},
    {4, 1, 0.275, 0.267, "The Eye of Eternity", "raid", "80", 16},
    {4, 4, 0.885, 0.447, "Naxxramas", "raid", "80", 15},
    {4, 10, 0.416, 0.177, "Ulduar", "raid", "80", 19},
    {4, 8, 0.752, 0.218, "Trial of the Crusader", "raid", "80", 6},
    {4, 8, 0.538, 0.87, "Icecrown Citadel", "raid", "80", 12},
    {4, 4, 0.622, 0.563, "The Ruby Sanctum", "raid", "80", 4},
	-- Northrend Transport
	{4, 1, 0.605, 0.715, "Boat to Stormwind Harbor", "boat", "Alliance", nil},
	{4, 1, 0.417, 0.551, "Zeppelin to Durotar", "zepp", "Horde", nil},
	{4, 6, 0.616, 0.627, "Boat to Menethil Harbor", "boat", "Alliance", nil},
	{4, 6, 0.781, 0.3, "Zeppelin to Tirisfal Glades", "zepp", "Horde", nil},
	{4, 6, 0.228, 0.583, "Boat to Moa'ki Harbor", "boat", "Neutral", nil},
	{4, 4, 0.501, 0.797, "Boat to Kamagua", "boat", "Neutral", nil},
	{4, 4, 0.476, 0.797, "Boat to Unu'pe", "boat", "Neutral", nil},
	{4, 1, 0.790, 0.541, "Boat to Moa'ki Harbor", "boat", "Neutral", nil},
	-- Northrend Portals
	{4, 11, 0.488, 0.154, "Portal to The Violet Citadel", "portal", "Neutral", nil},
	{4, 3, 0.395, 0.64, "Portals to Stormwind, Ironforge,\nDarnassus, Exodar & Shattrath", "portal", "Alliance", nil, 1},
	{4, 3, 0.331, 0.695, "Portal Wintergrasp", "portal", "Alliance", nil, 1},
	{4, 3, 0.582, 0.226, "Portal Wintergrasp", "portal", "Horde", nil, 1},
	{4, 3, 0.585, 0.292, "Portals to Orgrimmar, Undercity,\nShattrath, Thunder Bluff & Silvermoon", "portal", "Horde", nil, 1},
	{4, 3, 0.262, 0.437, "Portal to The Purple Parlor", "portal", "Neutral", nil, 1},
	{4, 3, 0.222, 0.392, "Portal to The Violet Citadel", "portal", "Neutral", nil, 1},
}

-- WDM-specific defaultPoints (used when WDM addon is detected)
local wdmPoints = {
    -- Kalimdor Dungeons
    {1, 2, 0.123, 0.128, "Blackfathom Deeps", "dungeon", "24-32", 3},
    {1, 20, 0.648, 0.303, "Dire Maul - East", "dungeon", "55-58", 10},
    {1, 20, 0.771, 0.369, "Dire Maul - East\n|cFF808080(The Hidden Reach)|r", "dungeon", "55-58", 10},
    {1, 20, 0.671, 0.34, "Dire Maul - East\n|cFF808080(Side Entrance)|r", "dungeon", "55-58", 10},
    {1, 20, 0.624, 0.249, "Dire Maul - North", "dungeon", "57-60", 12},
    {1, 20, 0.604, 0.311, "Dire Maul - West", "dungeon", "57-60", 13},
    {1, 14, 0.29, 0.629, "Maraudon", "dungeon", "46-55", 14},
    {1, 23, 0.581, 0.324, "Maraudon\n|cFF808080(The Wicked Grotto)|r", "dungeon", "46-55", 14},
    {1, 24, 0.788, 0.63, "Maraudon\n|cFF808080(Foulspore Cavern)|r", "dungeon", "46-55", 14},
    {1, 28, 0.53, 0.486, "Ragefire Chasm", "dungeon", "13-18", 17},
    {1, 27, 0.703, 0.492, "Ragefire Chasm", "dungeon", "13-18", 17},
    {1, 38, 0.508, 0.94, "Razorfen Downs", "dungeon", "37-46", 18},
    {1, 38, 0.423, 0.9, "Razorfen Kraul", "dungeon", "29-38", 19},
    {1, 38, 0.462, 0.357, "Wailing Caverns", "dungeon", "17-24", 20},
    {1, 52, 0.549, 0.669, "Wailing Caverns", "dungeon", "17-24", 20},
    {1, 36, 0.387, 0.2, "Zul'Farrak", "dungeon", "44-54", 22},
	{1, 36, 0.65, 0.458, "Old Hillsbrad Foothills", "dungeon", "66-70", 7},
	{1, 36, 0.685, 0.48, "The Black Morass", "dungeon", "68-70", 8},
	{1, 36, 0.678, 0.512, "The Culling of Stratholme", "dungeon", "75-80", 9},
	{1, 11, 0.264, 0.328, "Old Hillsbrad Foothills", "dungeon", "66-70", 7},
	{1, 11, 0.344, 0.85, "The Black Morass", "dungeon", "68-70", 8},
	{1, 11, 0.604, 0.828, "The Culling of Stratholme", "dungeon", "75-80", 9},
	-- Kalimdor Raids
	{1, 16, 0.529, 0.777, "Onyxia's Lair", "raid", "60", 16},
	{1, 32, 0.305, 0.987, "Ruins of Ahn'Qiraj", "raid", "60", 1},
	{1, 32, 0.269, 0.987, "Temple of Ahn'Qiraj", "raid", "60", 2},
	{1, 36, 0.67, 0.45, "Hyjal Summit", "raid", "70", 6},
	{1, 11, 0.396, 0.169, "Hyjal Summit", "raid", "70", 6},
	-- Kalimdor World Bosses
	{1, 3, 0.535, 0.816, "Azuregos", "worldboss", "60", nil},
	{1, 2, 0.937, 0.355, "Emerald Dragon - Spawn Point 1 of 4", "worldboss", "60", nil},
	{1, 20, 0.512, 0.108, "Emerald Dragon - Spawn Point 2 of 4", "worldboss", "60", nil},
    -- Kalimdor Transport
    {1, 15, 0.512, 0.135, "Zeppelins to Tirisfal Glades & Grom'Gol", "zepp", "Horde", nil},
    {1, 15, 0.415, 0.183, "Zeppelins to Thunder Bluff & Warsong Hold", "zepp", "Horde", nil},
    {1, 45, 0.137, 0.257, "Zeppelin to Durotar", "zepp", "Horde", nil},
    {1, 38, 0.636, 0.389, "Boat to Booty Bay", "boat", "Neutral", nil},
	{1, 12, 0.333, 0.399, "Boat to Rut'Theran Village", "boat", "Alliance", nil},
	{1, 12, 0.308, 0.41, "Boat to Azuremyst Isle", "boat", "Alliance", nil},
	{1, 12, 0.325, 0.436, "Boat to Stormwind Harbor", "boat", "Alliance", nil},
	{1, 16, 0.718, 0.566, "Boat to Menethil Harbor", "boat", "Alliance", nil},
	{1, 20, 0.311, 0.395, "Boat to Forgotten Coast", "boat", "Alliance", nil},
	{1, 20, 0.431, 0.428, "Boat to Sardor Isle", "boat", "Alliance", nil},
	{1, 37, 0.552, 0.949, "Boat to Auberdine", "boat", "Alliance", nil},
	{1, 4, 0.2, 0.542, "Boat to Auberdine", "boat", "Alliance", nil},
	-- Kalimdor Portals
	{1, 13, 0.405, 0.817, "Portal to Blasted Lands", "portal", "Alliance", nil},
	{1, 39, 0.463, 0.608, "Portal to Blasted Lands", "portal", "Alliance", nil},
	{1, 28, 0.381, 0.857, "Portal to Blasted Lands", "portal", "Horde", nil},
	{1, 45, 0.232, 0.135, "Portal to Blasted Lands\n|cFF808080(Inside The Pools of Vision)|r", "portal", "Horde", nil},
    -- Eastern Kingdoms Dungeons
    {2, 38, 0.387, 0.833, "Blackrock Depths", "dungeon", "52-60", 2},
	{2, 9, 0.328, 0.365, "Blackrock Depths", "dungeon", "52-60", 2},
	{2, 7, 0.393, 0.181, "Blackrock Depths", "dungeon", "52-60", 2},
    {2, 52, 0.423, 0.726, "The Deadmines", "dungeon", "17-24", 7},
    {2, 45, 0.251, 0.51, "The Deadmines", "dungeon", "17-24", 7},
    {2, 14, 0.178, 0.392, "Gnomeregan", "dungeon", "29-38", 9},
    {2, 14, 0.216, 0.3, "Gnomeregan\n|cFF808080(Workshop Entrance)|r", "dungeon", "29-38", 9},
    {2, 25, 0.191, 0.856, "Gnomeregan", "dungeon", "29-38", 9},
    {2, 25, 0.405, 0.207, "Gnomeregan\n|cFF808080(Workshop Entrance)|r", "dungeon", "29-38", 9},
    {2, 9, 0.32, 0.39, "Lower Blackrock Spire", "dungeon", "55-60", 3},
	{2, 38, 0.379, 0.863, "Lower Blackrock Spire", "dungeon", "55-60", 3},
	{2, 6, 0.817, 0.436, "Lower Blackrock Spire", "dungeon", "55-60", 3},
    {2, 48, 0.87, 0.325, "Scarlet Monastery - Armory", "dungeon", "32-42", 16}, 
    {2, 48, 0.862, 0.295, "Scarlet Monastery - Cathedral", "dungeon", "35-45", 17}, 
    {2, 48, 0.839, 0.283, "Scarlet Monastery - Graveyard", "dungeon", "26-36", 18},
    {2, 48, 0.85, 0.335, "Scarlet Monastery - Library", "dungeon", "29-39", 19},
    {2, 37, 0.848, 0.437, "Scarlet Monastery - Armory", "dungeon", "32-42", 16}, 
    {2, 37, 0.803, 0.271, "Scarlet Monastery - Cathedral", "dungeon", "35-45", 17}, 
    {2, 37, 0.683, 0.211, "Scarlet Monastery - Graveyard", "dungeon", "26-36", 18},
    {2, 37, 0.793, 0.603, "Scarlet Monastery - Library", "dungeon", "29-39", 19},
    {2, 51, 0.69, 0.729, "Scholomance", "dungeon", "58-60", 20},
    {2, 40, 0.448, 0.678, "Shadowfang Keep", "dungeon", "22-30", 21},
    {2, 41, 0.508, 0.67, "The Stockade", "dungeon", "24-31", 22},
    {2, 16, 0.273, 0.122, "Stratholme", "dungeon", "58-60", 23},
    {2, 16, 0.437, 0.175, "Stratholme\n|cFF808080(Back Gate)|r", "dungeon", "58-60", 23},
    {2, 44, 0.703, 0.55, "The Sunken Temple", "dungeon", "50-60", 24},
    {2, 4, 0.429, 0.13, "Uldaman", "dungeon", "41-51", 27},
    {2, 4, 0.657, 0.438, "Uldaman\n|cFF808080(Back Entrance)|r", "dungeon", "41-51", 27},
    {2, 49, 0.368, 0.283, "Uldaman", "dungeon", "41-51", 27},
    {2, 9, 0.312, 0.365, "Upper Blackrock Spire", "dungeon", "55-60", 4},
	{2, 38, 0.371, 0.833, "Upper Blackrock Spire", "dungeon", "55-60", 4},
	{2, 6, 0.79, 0.334, "Upper Blackrock Spire", "dungeon", "55-60", 4},
	{2, 30, 0.612, 0.309, "Magisters' Terrace", "dungeon", "70", 14},
	-- Eastern Kingdoms Raids
	{2, 38, 0.332, 0.833, "Blackwing Lair", "raid", "60", 5},
	{2, 9, 0.273, 0.363, "Blackwing Lair", "raid", "60", 5},
	{2, 6, 0.64, 0.715, "Blackwing Lair", "raid", "60", 5},
	{2, 38, 0.332, 0.86, "Molten Core", "raid", "60", 6},
	{2, 9, 0.273, 0.39, "Molten Core", "raid", "60", 6},
	{2, 7, 0.538, 0.814, "Molten Core", "raid", "60", 6},
	{2, 42, 0.53, 0.172, "Zul'Gurub", "raid", "60", 30},
	{2, 24, 0.78, 0.64, "Zul'Aman", "raid", "70", 29},
	{2, 30, 0.443, 0.456, "Sunwell Plateau", "raid", "70", 26},
	{2, 12, 0.469, 0.747, "Karazhan", "raid", "70", 12},
	{2, 12, 0.467, 0.708, "Karazhan\n|cFF808080(Side Entrance)|r", "raid", "70", 12},
	-- Eastern Kingdoms World Bosses
	{2, 15, 0.465, 0.357, "Emerald Dragon - Spawn Point 3 of 4", "worldboss", "60", nil},
	{2, 47, 0.632, 0.217, "Emerald Dragon - Spawn Point 4 of 4", "worldboss", "60", nil},
	-- Eastern Kingdoms Transport
	{2, 41, 0.677, 0.325, "Tram to Ironforge", "tram", "Alliance", nil},
	{2, 29, 0.762, 0.511, "Tram to Stormwind", "tram", "Alliance", nil},
	{2, 53, 0.051, 0.634, "Boat to Theramore Isle", "boat", "Alliance", nil},
	{2, 53, 0.046, 0.572, "Boat to Valgarde", "boat", "Alliance", nil},
	{2, 42, 0.257, 0.73, "Boat to Ratchet", "boat", "Neutral", nil},
	{2, 48, 0.606, 0.583, "Zeppelins to Durotar, Grom'Gol & Vengeance Landing", "zepp", "Horde", nil},
	{2, 42, 0.312, 0.298, "Zeppelins to Tirisfal Glades & Durotar", "zepp", "Horde", nil},
	{2, 41, 0.216, 0.562, "Boat to Rut'Theran Village", "boat", "Alliance", nil},
	{2, 41, 0.172, 0.251, "Boat to Valiance Keep", "boat", "Alliance", nil},
	-- Eastern Kingdoms Portals
	{2, 39, 0.495, 0.148, "Silvermoon to Ruins of Lordaeron\n|cFF808080(Orb of Translocation)|r", "portal", "Horde", nil},
	{2, 39, 0.583, 0.21, "Portal to Blasted Lands", "portal", "Horde", nil},
	{2, 50, 0.595, 0.111, "Ruins of Lordaeron to Silvermoon\n|cFF808080(Orb of Translocation)|r", "portal", "Horde", nil},
	{2, 50, 0.852, 0.17, "Portal to Blasted Lands", "portal", "Horde", nil},
	{2, 41, 0.49, 0.873, "Portal to Blasted Lands", "portal", "Alliance", nil},
	{2, 29, 0.272, 0.07, "Portal to Blasted Lands", "portal", "Alliance", nil},
	-- Outland Dungeons
    {3, 2, 0.48, 0.535, "Hellfire Ramparts", "dungeon", "60-62", 16},
    {3, 2, 0.46, 0.51, "The Blood Furnance", "dungeon", "60-62", 18},
    {3, 2, 0.48, 0.51, "Shattered Halls", "dungeon", "69-70", 19},
    {3, 4, 0.745, 0.577, "The Arcatraz", "dungeon", "70", 20},
    {3, 4, 0.717, 0.55, "The Botanica", "dungeon", "70", 21},
    {3, 4, 0.706, 0.698, "The Mechanar", "dungeon", "70", 23},
    {3, 7, 0.396, 0.602, "Mana-Tombs", "dungeon", "64-66", 3},
    {3, 7, 0.361, 0.656, "Auchenai Crypts", "dungeon", "65-67", 2},
    {3, 7, 0.432, 0.656, "Sethekk Halls", "dungeon", "67-69", 4},
    {3, 7, 0.396, 0.71, "Shadow Labyrinth", "dungeon", "69-70", 5},
    {3, 8, 0.525, 0.386, "The Underbog", "dungeon", "62-64", 13},
    {3, 8, 0.475, 0.41, "The Slave Pens", "dungeon", "63-65", 11},
    {3, 8, 0.483, 0.386, "The Steamvault", "dungeon", "64-66", 12},
	-- Outland Raids
    {3, 1, 0.693, 0.237, "Gruul's Lair", "raid", "70", 14},
    {3, 2, 0.46, 0.535, "Magtheridon's Lair", "raid", "70", 17},
    {3, 4, 0.737, 0.637, "The Eye", "raid", "70", 22},
    {3, 5, 0.711, 0.464, "Black Temple", "raid", "70", 6},
    {3, 8, 0.503, 0.386, "Serpentshrine Cavern", "raid", "70", 10},
	-- Outland World Bosses
	{3, 2, 0.633, 0.156, "Doom Lord Kazzak", "worldboss", "70", nil},
    {3, 5, 0.729, 0.44, "Doomwalker", "worldboss", "70", nil},
	-- Outland Portals
	{3, 6, 0.597, 0.466, "Portal to Exodar", "portal", "Alliance", nil},
	{3, 6, 0.591, 0.483, "Portal to Silvermoon", "portal", "Horde", nil},
	{3, 6, 0.558, 0.367, "Portals to Darnassus, Stormwind & Ironforge", "portal", "Alliance", nil},
	{3, 6, 0.522, 0.529, "Portals to Thunder Bluff, Orgrimmar & Undercity", "portal", "Horde", nil},
	{3, 6, 0.486, 0.42, "Portal to Isle of Quel'Danas", "portal", "Neutral", nil},
	{3, 2, 0.886, 0.528, "Portal to Stormwind", "portal", "Alliance", nil},
	{3, 2, 0.886, 0.477, "Portal to Orgrimmar", "portal", "Horde", nil},
	-- Northrend Dungeons
    {4, 6, 0.587, 0.502, "Utgarde Keep", "dungeon", "70-72", 26},
    {4, 6, 0.573, 0.467, "Utgarde Pinnacle", "dungeon", "80", 27},
    {4, 5, 0.177, 0.266, "Drak'Tharon Keep", "dungeon", "74-76", 7},
    {4, 12, 0.27, 0.87, "Drak'Tharon Keep", "dungeon", "74-76", 7},
    {4, 12, 0.761, 0.21, "Gundrak\n|cFF808080(Cave of Mam'toth)|r", "dungeon", "76-78", 11},
    {4, 12, 0.813, 0.291, "Gundrak\n|cFF808080(Den of Sseratus)|r", "dungeon", "76-78", 11},
    {4, 10, 0.395, 0.269, "Halls of Stone", "dungeon", "77-79", 25},
    {4, 10, 0.454, 0.213, "Halls of Lightning", "dungeon", "80", 24},
    {4, 4, 0.288, 0.531, "Ahn'Kahet: The Old Kingdom\n|cFF808080(Inside The Pit of Narjun)|r", "dungeon", "73-75", 1},
    {4, 4, 0.252, 0.531, "Azjol-Nerub\n|cFF808080(Inside The Pit of Narjun)|r", "dungeon", "72-74", 2},
    {4, 1, 0.296, 0.267, "The Oculus", "dungeon", "80", 18},
    {4, 1, 0.254, 0.267, "The Nexus", "dungeon", "71-73", 17},
    {4, 3, 0.7, 0.725, "The Violet Hold", "dungeon", "75-77", 29, 1, 2},
    {4, 8, 0.742, 0.203, "Trial of the Champion", "dungeon", "75-80", 5},
    {4, 8, 0.564, 0.873, "The Forge of Souls", "dungeon", "80", 10},
    {4, 8, 0.559, 0.945, "Pit of Saron", "dungeon", "80", 9},
    {4, 8, 0.586, 0.906, "Halls of Reflection", "dungeon", "80", 8},
	-- Northrend Raids
    {4, 11, 0.5, 0.116, "Vault of Archavon", "raid", "80", 28},
    {4, 4, 0.6, 0.57, "The Obsidian Sanctum", "raid", "80", 3},
    {4, 1, 0.275, 0.267, "The Eye of Eternity", "raid", "80", 16},
    {4, 4, 0.885, 0.447, "Naxxramas", "raid", "80", 15},
    {4, 10, 0.416, 0.177, "Ulduar", "raid", "80", 19},
    {4, 8, 0.752, 0.218, "Trial of the Crusader", "raid", "80", 6},
    {4, 8, 0.538, 0.87, "Icecrown Citadel", "raid", "80", 12},
    {4, 4, 0.622, 0.563, "The Ruby Sanctum", "raid", "80", 4},
	-- Northrend Transport
	{4, 1, 0.605, 0.715, "Boat to Stormwind Harbor", "boat", "Alliance", nil},
	{4, 1, 0.417, 0.551, "Zeppelin to Durotar", "zepp", "Horde", nil},
	{4, 6, 0.616, 0.627, "Boat to Menethil Harbor", "boat", "Alliance", nil},
	{4, 6, 0.781, 0.3, "Zeppelin to Tirisfal Glades", "zepp", "Horde", nil},
	{4, 6, 0.228, 0.583, "Boat to Moa'ki Harbor", "boat", "Neutral", nil},
	{4, 4, 0.501, 0.797, "Boat to Kamagua", "boat", "Neutral", nil},
	{4, 4, 0.476, 0.797, "Boat to Unu'pe", "boat", "Neutral", nil},
	{4, 1, 0.790, 0.541, "Boat to Moa'ki Harbor", "boat", "Neutral", nil},
	-- Northrend Portals
	{4, 11, 0.488, 0.154, "Portal to The Violet Citadel", "portal", "Neutral", nil},
	{4, 3, 0.395, 0.64, "Portals to Stormwind, Ironforge,\nDarnassus, Exodar & Shattrath", "portal", "Alliance", nil, 1},
	{4, 3, 0.331, 0.695, "Portal Wintergrasp", "portal", "Alliance", nil, 1},
	{4, 3, 0.582, 0.226, "Portal Wintergrasp", "portal", "Horde", nil, 1},
	{4, 3, 0.585, 0.292, "Portals to Orgrimmar, Undercity,\nShattrath, Thunder Bluff & Silvermoon", "portal", "Horde", nil, 1},
	{4, 3, 0.262, 0.437, "Portal to The Purple Parlor", "portal", "Neutral", nil, 1},
	{4, 3, 0.222, 0.392, "Portal to The Violet Citadel", "portal", "Neutral", nil, 1},
}

-- Track which point set is active
local usingWDM = false

-- After initialization, clear defaultPoints to free memory (data is now in pointsByMap)
local function FreeDefaultPoints()
    defaultPoints = nil
    wdmPoints = nil
end

-- Constants
local HOVER_SIZE_MULTIPLIER = 1.15
local HOVER_ALPHA = 0.5
local MARKER_SIZE_LARGE = 32
local MARKER_SIZE_SMALL = 24
local UPDATE_THROTTLE = 0.1
local MAX_POOL_SIZE = 50
local INVALID_ZONE = 0

-- Pre-calculated multiplier for map key generation
local CONTINENT_MULTIPLIER = 100

-- Texture paths (pre-built strings)
local TEXTURES = {
    dungeon = "Interface\\Addons\\ModernMapMarkers\\Textures\\dungeon.tga",
    raid = "Interface\\Addons\\ModernMapMarkers\\Textures\\raid.tga",
    worldboss = "Interface\\Addons\\ModernMapMarkers\\Textures\\worldboss.tga",
    zepp = "Interface\\Addons\\ModernMapMarkers\\Textures\\zepp.tga",
    boat = "Interface\\Addons\\ModernMapMarkers\\Textures\\boat.tga",
    tram = "Interface\\Addons\\ModernMapMarkers\\Textures\\tram.tga",
    portal = "Interface\\Addons\\ModernMapMarkers\\Textures\\portal.tga",
}

-- Tooltip faction colors (reused strings for memory efficiency)
local FACTION_ALLIANCE = "Alliance"
local FACTION_HORDE = "Horde"
local FACTION_COLORS = {
    [FACTION_ALLIANCE] = {0.15, 0.59, 0.75},
    [FACTION_HORDE] = {0.89, 0.16, 0.10},
    Neutral = {1, 1, 0}
}

-- World boss data (constant tables)
local WORLD_BOSS_MAP = {
    ["Azuregos"] = "WorldBossesClassic",
    ["Doom Lord Kazzak"] = "WorldBossesBC",
    ["Doomwalker"] = "WorldBossesBC",
}

local ATLAS_OUTDOOR_INDEX = {
    ["Azuregos"] = 1,
    ["Doom Lord Kazzak"] = 2,
    ["Doomwalker"] = 3,
    ["Emerald Dragon - Spawn Point 1 of 4"] = 4,
    ["Emerald Dragon - Spawn Point 2 of 4"] = 4,
    ["Emerald Dragon - Spawn Point 3 of 4"] = 4,
    ["Emerald Dragon - Spawn Point 4 of 4"] = 4,
}

local NIGHTMARE_DRAGONS = {
    {id = "DLethon", name = "Lethon"},
    {id = "DEmeriss", name = "Emeriss"},
    {id = "DTaerar", name = "Taerar"},
    {id = "DYsondre", name = "Ysondre"},
}

-- Config UI backdrop (constant)
local CONFIG_BACKDROP = {
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
    edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
    tile = true,
    tileSize = 32,
    edgeSize = 32,
    insets = {left = 11, right = 11, top = 11, bottom = 11}
}

-- Atlas continent mapping
local ATLAS_CONTINENT_MAP = {2, 1, 3, 4}

-- Cache frequently used functions and constants
local pairs = pairs
local unpack = unpack
local GetTime = GetTime
local UnitFactionGroup = UnitFactionGroup
local tinsert = table.insert
local tremove = table.remove
local math_random = math.random
local string_find = string.find
local pcall = pcall
local GetCurrentMapContinent = GetCurrentMapContinent
local GetCurrentMapZone = GetCurrentMapZone
local GetCurrentMapDungeonLevel = GetCurrentMapDungeonLevel
local CreateFrame = CreateFrame
local UIParent = UIParent

-- Indexed point lookup by continent and zone
local pointsByMap = {}

-- State tracking
local markerPool = {}
local activeMarkers = {}
local activeMarkersCount = 0
local initialized = false
local firstLoad = true
local lastContinent = 0
local lastZone = 0
local lastUpdateTime = 0
local playerFaction
local worldMapFrameLevel

-- UI Elements
local config
local optionsPanel
local masterToggle
local dungeonRaidsToggle
local transportToggle
local transportFactionToggle
local worldBossToggle
local portalToggle
local portalFactionToggle
local markerLabel

-- Event frame
local frame = CreateFrame("Frame")
local updateEnabled = false

-- Build indexed lookup table
local function BuildPointIndex()
    -- Determine which point set to use
    local pointsToUse = defaultPoints
    if IsAddOnLoaded("WDM") then
        pointsToUse = wdmPoints
        usingWDM = true
    end
    
    local pointCount = #pointsToUse
    for i = 1, pointCount do
        local data = pointsToUse[i]
        local key = data[1] * CONTINENT_MULTIPLIER + data[2]
        
        local bucket = pointsByMap[key]
        if not bucket then
            bucket = {}
            pointsByMap[key] = bucket
        end
        
        tinsert(bucket, data)
    end
end

-- Create custom marker label (Blizzard-style)
local function CreateMarkerLabel()
    -- WotLK uses WorldMapDetailFrame for the map canvas
    markerLabel = CreateFrame("Frame", "MMMMarkerLabelFrame", WorldMapDetailFrame)
    markerLabel:SetFrameStrata("TOOLTIP")
    markerLabel:SetFrameLevel(WorldMapDetailFrame:GetFrameLevel() + 10)
    markerLabel:SetWidth(400)
    markerLabel:SetHeight(60)
    
    -- Position it exactly where WorldMapFrameAreaLabel is
    if WorldMapFrameAreaLabel then
        markerLabel:SetPoint("TOP", WorldMapFrameAreaLabel, "TOP", 0, 0)
    else
        markerLabel:SetPoint("TOP", WorldMapDetailFrame, "TOP", 0, -10)
    end
    
    -- Main text - use the exact same font object as WorldMapFrameAreaLabel
    markerLabel.name = markerLabel:CreateFontString(nil, "OVERLAY")
    markerLabel.name:SetPoint("TOP", markerLabel, "TOP", 0, 0)
    markerLabel.name:SetJustifyH("CENTER")
    
    -- Copy the font settings from WorldMapFrameAreaLabel
    if WorldMapFrameAreaLabel then
        local fontName, fontSize, fontFlags = WorldMapFrameAreaLabel:GetFont()
        markerLabel.name:SetFont(fontName, fontSize, fontFlags)
        -- Copy the shadow settings
        local r, g, b, a = WorldMapFrameAreaLabel:GetShadowColor()
        local x, y = WorldMapFrameAreaLabel:GetShadowOffset()
        markerLabel.name:SetShadowColor(r, g, b, a)
        markerLabel.name:SetShadowOffset(x, y)
        -- Copy the exact text color
        local tr, tg, tb, ta = WorldMapFrameAreaLabel:GetTextColor()
        markerLabel.name:SetTextColor(tr, tg, tb, ta)
    else
        -- Fallback if we can't read the label
        markerLabel.name:SetFont("Fonts\\FRIZQT__.TTF", 18, "OUTLINE, THICKOUTLINE")
        markerLabel.name:SetShadowColor(0, 0, 0, 1)
        markerLabel.name:SetShadowOffset(1, -1)
        markerLabel.name:SetTextColor(1, 0.82, 0)
    end
    
    -- Info text with same outline style
    markerLabel.info = markerLabel:CreateFontString(nil, "OVERLAY")
    markerLabel.info:SetPoint("TOP", markerLabel.name, "BOTTOM", 0, -2)
    markerLabel.info:SetJustifyH("CENTER")
    markerLabel.info:SetFont("Fonts\\FRIZQT__.TTF", 13, "OUTLINE")
    markerLabel.info:SetShadowColor(0, 0, 0, 1)
    markerLabel.info:SetShadowOffset(1, -1)
    
    markerLabel:Hide()
end

-- Show marker info
local function ShowMarkerInfo(name, info)
    if not markerLabel then
        CreateMarkerLabel()
    end
    
    -- Hide Blizzard's default area label
    local areaLabel = WorldMapFrameAreaLabel
    if areaLabel then
        areaLabel:Hide()
    end
    
    -- Set the marker name (white like normal Blizzard UI)
    markerLabel.name:SetText(name)
    
    -- Set the info text with appropriate color
    if info and info ~= "" then
        local color = FACTION_COLORS[info]
        if color then
            -- Faction colored text
            local infoText = markerLabel.info
            infoText:SetTextColor(color[1], color[2], color[3])
            infoText:SetText("(" .. info .. ")")
            infoText:Show()
        else
            -- Level info in yellow
            local infoText = markerLabel.info
            infoText:SetTextColor(1, 0.82, 0)
            infoText:SetText("(Level " .. info .. ")")
            infoText:Show()
        end
    else
        markerLabel.info:Hide()
    end
    
    markerLabel:Show()
end

-- Hide marker info
local function HideMarkerInfo()
    if markerLabel then
        markerLabel:Hide()
    end
    
    -- Restore Blizzard's default area label
    local areaLabel = WorldMapFrameAreaLabel
    if areaLabel then
        areaLabel:Show()
    end
end

-- Get or create a marker from pool
local function GetMarkerFromPool()
    local marker = tremove(markerPool)
    if marker then
        return marker
    end
    
    -- WotLK uses WorldMapDetailFrame for the map canvas
    marker = CreateFrame("Button", nil, WorldMapDetailFrame)
    marker.texture = marker:CreateTexture(nil, "OVERLAY")
    marker.highlight = marker:CreateTexture(nil, "HIGHLIGHT")
    marker.highlight:SetBlendMode("ADD")
    return marker
end

-- Return marker to pool
local function ReturnMarkerToPool(marker)
    marker:Hide()
    marker:ClearAllPoints()
    marker:SetScript("OnEnter", nil)
    marker:SetScript("OnLeave", nil)
    marker:SetScript("OnClick", nil)
    
    -- Clear marker data
    marker.markerName = nil
    marker.markerInfo = nil
    marker.markerKind = nil
    marker.atlasID = nil
    marker.isEmeraldDragon = nil
    marker.originalSize = nil
    
    -- Cap pool size to prevent unbounded growth
    if #markerPool < MAX_POOL_SIZE then
        tinsert(markerPool, marker)
    else
        marker:SetParent(nil)
    end
end

-- Random Nightmare Dragon selector
local function GetRandomNightmareDragon()
    local idx = math_random(1, #NIGHTMARE_DRAGONS)
    return NIGHTMARE_DRAGONS[idx].id, NIGHTMARE_DRAGONS[idx].name
end

-- Check if world map is in fullscreen mode
local function IsWorldMapFullscreen()
    -- In WotLK 3.3.5a, check if BlackoutWorld (fullscreen overlay) is visible
    if BlackoutWorld and BlackoutWorld:IsVisible() then
        return true
    end
    
    -- Fallback: check if map takes up most of the screen
    local mapWidth = WorldMapFrame:GetWidth()
    local mapHeight = WorldMapFrame:GetHeight()
    local screenWidth = GetScreenWidth()
    local screenHeight = GetScreenHeight()
    
    -- Consider it fullscreen if it takes up more than 90% of screen space
    return (mapWidth / screenWidth > 0.9 and mapHeight / screenHeight > 0.9)
end

-- World boss click handler
local function OnWorldBossClick(self)
    if not AtlasLoot_ShowBossLoot or not AtlasFrame or not Atlas_Refresh then
        DEFAULT_CHAT_FRAME:AddMessage("|cFFFF0000AtlasLoot not loaded.|r")
        return
    end
    
    local bossName = self.markerName
    local dataID = WORLD_BOSS_MAP[bossName]
    local atlasIndex = ATLAS_OUTDOOR_INDEX[bossName]
    local displayName = bossName
    
    -- Handle Emerald Dragons (pre-flagged, no string search needed)
    if self.isEmeraldDragon then
        dataID, displayName = GetRandomNightmareDragon()
        atlasIndex = 4
    end
    
    if dataID and atlasIndex then
        -- Hide world map only if it's in fullscreen mode
        if WorldMapFrame:IsVisible() and IsWorldMapFullscreen() then
            HideUIPanel(WorldMapFrame)
        end
        
        if AtlasFrame and AtlasOptions then
            AtlasOptions.AtlasType = 7
            AtlasOptions.AtlasZone = atlasIndex
            Atlas_Refresh()
            AtlasFrame:SetFrameStrata("FULLSCREEN")
            AtlasFrame:Show()
        end
        
        -- Small delay to ensure Atlas is fully shown before calling AtlasLoot
        local delayFrame = CreateFrame("Frame")
        delayFrame.timer = 0
        delayFrame:SetScript("OnUpdate", function(self, elapsed)
            self.timer = self.timer + elapsed
            if self.timer >= 0.1 then
                self:SetScript("OnUpdate", nil)
                -- Protected call in case AtlasLoot has issues
                local success = pcall(AtlasLoot_ShowBossLoot, dataID, displayName, AtlasFrame)
                if not success then
                    DEFAULT_CHAT_FRAME:AddMessage("|cFFFF0000Error loading AtlasLoot data.|r")
                end
            end
        end)
    else
        DEFAULT_CHAT_FRAME:AddMessage("|cFFFF0000No Atlas data found for world boss \"" .. bossName .. "\".|r")
    end
end

-- Atlas click handler
local function OnAtlasClick(self)
    if self.atlasID and AtlasFrame and AtlasOptions then
        -- Hide world map only if it's in fullscreen mode
        if WorldMapFrame:IsVisible() and IsWorldMapFullscreen() then
            HideUIPanel(WorldMapFrame)
        end
        
        local continent = GetCurrentMapContinent()
        AtlasOptions.AtlasType = ATLAS_CONTINENT_MAP[continent]
        AtlasOptions.AtlasZone = self.atlasID
        Atlas_Refresh()
        AtlasFrame:SetFrameStrata("FULLSCREEN")
        AtlasFrame:Show()
        if AtlasQuestFrame then
            AtlasQuestFrame:Show()
        end
    end
end

-- Create map pin
local function CreateMapPin(x, y, size, texture, tooltipText, tooltipInfo, atlasID, kind)
    local pin = GetMarkerFromPool()
    
    pin:SetWidth(size)
    pin:SetHeight(size)
    -- WotLK uses WorldMapDetailFrame for the map canvas
    pin:SetPoint("CENTER", WorldMapDetailFrame, "TOPLEFT", x, -y)
    pin.texture:SetAllPoints()
    pin.texture:SetTexture(texture)
    pin:SetFrameLevel(worldMapFrameLevel)
    pin.highlight:SetAllPoints()
    pin.highlight:SetTexture(texture)
    pin.highlight:SetAlpha(0)
    
    pin.originalSize = size
    pin.markerName = tooltipText
    pin.markerInfo = tooltipInfo
    pin.markerKind = kind
    pin.atlasID = atlasID
    
    -- Pre-flag Emerald Dragons to avoid string search on click
    pin.isEmeraldDragon = (kind == "worldboss" and tooltipInfo == "60" and not WORLD_BOSS_MAP[tooltipText]) or nil

    pin:SetScript("OnEnter", function(self)
        ShowMarkerInfo(self.markerName, self.markerInfo)
        
        local newSize = self.originalSize * HOVER_SIZE_MULTIPLIER
        self:SetWidth(newSize)
        self:SetHeight(newSize)
        self.highlight:SetAlpha(HOVER_ALPHA)
    end)

    pin:SetScript("OnLeave", function(self)
        HideMarkerInfo()
        
        self:SetWidth(self.originalSize)
        self:SetHeight(self.originalSize)
        self.highlight:SetAlpha(0)
    end)

    pin:SetScript("OnClick", function(self)
        if self.markerKind == "worldboss" then
            OnWorldBossClick(self)
        elseif self.atlasID then
            OnAtlasClick(self)
        end
    end)
    
    pin:Show()
    return pin
end

-- Clear all active markers
local function ClearMarkers()
    local count = activeMarkersCount
    for i = 1, count do
        ReturnMarkerToPool(activeMarkers[i])
        activeMarkers[i] = nil
    end
    activeMarkersCount = 0
    HideMarkerInfo()
end

-- Update markers on map
local function UpdateMarkers()
    if firstLoad or not initialized then
        firstLoad = false
        return
    end

    if not ModernMapMarkersDB.showMarkers or not WorldMapFrame:IsVisible() then
        return
    end
    
    local currentContinent = GetCurrentMapContinent()
    local currentZone = GetCurrentMapZone()
    local currentLevel = GetCurrentMapDungeonLevel()
    
    -- Only show markers on the top level (level 1)
    if currentLevel > 1 then
        if activeMarkersCount > 0 then
            ClearMarkers()
        end
        return
    end
    
    -- Clear markers if we're in an invalid zone (dungeons, instances, etc)
    if currentContinent == INVALID_ZONE or currentZone == INVALID_ZONE then
        if activeMarkersCount > 0 then
            ClearMarkers()
            lastContinent = INVALID_ZONE
            lastZone = INVALID_ZONE
        end
        return
    end
    
    -- Cache check BEFORE throttle check
    if currentContinent == lastContinent and currentZone == lastZone then
        return
    end
    
    -- Throttle updates
    local now = GetTime()
    if now - lastUpdateTime < UPDATE_THROTTLE then
        return
    end
    lastUpdateTime = now
    
    lastContinent = currentContinent
    lastZone = currentZone

    ClearMarkers()

    -- WotLK uses WorldMapDetailFrame for the map canvas
    local worldMap = WorldMapDetailFrame
    local mapWidth = worldMap:GetWidth()
    local mapHeight = worldMap:GetHeight()
    
    if mapWidth == 0 or mapHeight == 0 then
        return
    end

    -- Use indexed lookup
    local key = currentContinent * CONTINENT_MULTIPLIER + currentZone
    local relevantPoints = pointsByMap[key]
    
    if not relevantPoints then
        return
    end

    -- Cache settings once
    local db = ModernMapMarkersDB
    local showDungeonRaids = db.showDungeonRaids
    local showTransport = db.showTransport
    local hideOtherFactionTransport = db.hideOtherFactionTransport
    local showWorldBosses = db.showWorldBosses
    local showPortals = db.showPortals
    local hideOtherFactionPortals = db.hideOtherFactionPortals
    local factionAlliance = FACTION_ALLIANCE
    local factionHorde = FACTION_HORDE
    local isHorde = (playerFaction == factionHorde)
    local isAlliance = (playerFaction == factionAlliance)
    
    -- Pre-cache texture references
    local texDungeon = TEXTURES.dungeon
    local texRaid = TEXTURES.raid
    local texWorldBoss = TEXTURES.worldboss
    local texZepp = TEXTURES.zepp
    local texBoat = TEXTURES.boat
    local texTram = TEXTURES.tram
    local texPortal = TEXTURES.portal

    local pointCount = #relevantPoints
    for i = 1, pointCount do
        local data = relevantPoints[i]
        local x = data[3]
        local y = data[4]
        local label = data[5]
        local kind = data[6]
        local info = data[7]
        local atlasID = data[8]
        local shouldDisplay = false

        -- Category toggles with optimized faction checks
        if kind == "dungeon" or kind == "raid" then
            shouldDisplay = showDungeonRaids
        elseif kind == "worldboss" then
            shouldDisplay = showWorldBosses
        elseif kind == "boat" or kind == "zepp" or kind == "tram" then
            shouldDisplay = showTransport
            if shouldDisplay and hideOtherFactionTransport then
                shouldDisplay = not ((info == factionAlliance and isHorde) or (info == factionHorde and isAlliance))
            end
        elseif kind == "portal" then
            shouldDisplay = showPortals
            if shouldDisplay and hideOtherFactionPortals then
                shouldDisplay = not ((info == factionAlliance and isHorde) or (info == factionHorde and isAlliance))
            end
        end

        if shouldDisplay then
            -- Direct texture lookup
            local texture
            if kind == "dungeon" then
                texture = texDungeon
            elseif kind == "raid" then
                texture = texRaid
            elseif kind == "worldboss" then
                texture = texWorldBoss
            elseif kind == "zepp" then
                texture = texZepp
            elseif kind == "boat" then
                texture = texBoat
            elseif kind == "tram" then
                texture = texTram
            elseif kind == "portal" then
                texture = texPortal
            else
                texture = texDungeon
            end
            
            local size = (kind == "zepp" or kind == "boat" or kind == "tram" or kind == "portal") and MARKER_SIZE_SMALL or MARKER_SIZE_LARGE
            local px = x * mapWidth
            local py = y * mapHeight
            
            local pin = CreateMapPin(px, py, size, texture, label, info, atlasID, kind)
            activeMarkersCount = activeMarkersCount + 1
            activeMarkers[activeMarkersCount] = pin
        end
    end
end

-- Sync checkboxes with saved variables (works for both UIs)
local function SyncCheckboxes()
    if masterToggle then
        masterToggle:SetChecked(ModernMapMarkersDB.showMarkers)
    end
    if dungeonRaidsToggle then
        dungeonRaidsToggle:SetChecked(ModernMapMarkersDB.showDungeonRaids)
    end
    if transportToggle then
        transportToggle:SetChecked(ModernMapMarkersDB.showTransport)
    end
    if transportFactionToggle then
        transportFactionToggle:SetChecked(ModernMapMarkersDB.hideOtherFactionTransport)
    end
    if worldBossToggle then
        worldBossToggle:SetChecked(ModernMapMarkersDB.showWorldBosses)
    end
    if portalToggle then
        portalToggle:SetChecked(ModernMapMarkersDB.showPortals)
    end
    if portalFactionToggle then
        portalFactionToggle:SetChecked(ModernMapMarkersDB.hideOtherFactionPortals)
    end
    
    -- Sync Interface Options panel if it exists
    if optionsPanel then
        if optionsPanel.masterToggle then
            optionsPanel.masterToggle:SetChecked(ModernMapMarkersDB.showMarkers)
        end
        if optionsPanel.dungeonRaidsToggle then
            optionsPanel.dungeonRaidsToggle:SetChecked(ModernMapMarkersDB.showDungeonRaids)
        end
        if optionsPanel.transportToggle then
            optionsPanel.transportToggle:SetChecked(ModernMapMarkersDB.showTransport)
        end
        if optionsPanel.transportFactionToggle then
            optionsPanel.transportFactionToggle:SetChecked(ModernMapMarkersDB.hideOtherFactionTransport)
        end
        if optionsPanel.worldBossToggle then
            optionsPanel.worldBossToggle:SetChecked(ModernMapMarkersDB.showWorldBosses)
        end
        if optionsPanel.portalToggle then
            optionsPanel.portalToggle:SetChecked(ModernMapMarkersDB.showPortals)
        end
        if optionsPanel.portalFactionToggle then
            optionsPanel.portalFactionToggle:SetChecked(ModernMapMarkersDB.hideOtherFactionPortals)
        end
    end
end

-- Toggle checkbox creation helper
local function CreateToggleCheckbox(parent, x, y, text, optionKey)
    local checkbox = CreateFrame("CheckButton", nil, parent, "UICheckButtonTemplate")
    checkbox:SetPoint("TOPLEFT", x, y)
    checkbox:SetWidth(24)
    checkbox:SetHeight(24)
    
    local label = checkbox:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    label:SetPoint("LEFT", checkbox, "RIGHT", 5, 0)
    label:SetText(text)
    checkbox.label = label
    
    checkbox:SetScript("OnClick", function(self)
        local isChecked = self:GetChecked()
        ModernMapMarkersDB[optionKey] = isChecked and true or false
        
        if optionKey == "showMarkers" then
            if not isChecked then
                ClearMarkers()
                if updateEnabled then
                    frame:UnregisterEvent("WORLD_MAP_UPDATE")
                    updateEnabled = false
                end
            else
                if not updateEnabled then
                    frame:RegisterEvent("WORLD_MAP_UPDATE")
                    updateEnabled = true
                end
            end
        end
        
        lastContinent = 0
        lastZone = 0
        UpdateMarkers()
        
        -- Sync both UIs
        SyncCheckboxes()
    end)
    
    return checkbox
end

-- Create Interface Options panel
local function CreateInterfaceOptionsPanel()
    optionsPanel = CreateFrame("Frame", "MMMOptionsPanel", UIParent)
    optionsPanel.name = "Modern Map Markers"
    if usingWDM then
        optionsPanel.name = "Modern Map Markers (WDM)"
    end
    
    local title = optionsPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    if usingWDM then
        title:SetText("Modern Map Markers |cFF00FF00(WDM)|r")
    else
        title:SetText("Modern Map Markers")
    end
    
    local subtitle = optionsPanel:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    subtitle:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -8)
    subtitle:SetText("Configure map marker display settings")
    
    -- Create checkboxes for Interface Options panel
    optionsPanel.masterToggle = CreateToggleCheckbox(optionsPanel, 16, -60, "Enable Map Markers", "showMarkers")
    optionsPanel.dungeonRaidsToggle = CreateToggleCheckbox(optionsPanel, 16, -90, "Show Dungeons & Raids", "showDungeonRaids")
    optionsPanel.transportToggle = CreateToggleCheckbox(optionsPanel, 16, -120, "Show Transports (Boats, Zeppelins, Trams)", "showTransport")
    optionsPanel.transportFactionToggle = CreateToggleCheckbox(optionsPanel, 16, -150, "Hide Opposing Faction Transports", "hideOtherFactionTransport")
    optionsPanel.worldBossToggle = CreateToggleCheckbox(optionsPanel, 16, -180, "Show World Bosses", "showWorldBosses")
    optionsPanel.portalToggle = CreateToggleCheckbox(optionsPanel, 16, -210, "Show Portals", "showPortals")
    optionsPanel.portalFactionToggle = CreateToggleCheckbox(optionsPanel, 16, -240, "Hide Opposing Faction Portals", "hideOtherFactionPortals")
    
	-- Add note about /mmm command
    local cmdNote = optionsPanel:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    cmdNote:SetPoint("BOTTOMLEFT", 16, 16)
    cmdNote:SetText("You can also type |cFFFFFF00/mmm|r to open a movable config window")
	
    -- Add to Blizzard Interface Options
    InterfaceOptions_AddCategory(optionsPanel)
end

-- Create standalone config UI (for /mmm command)
local function CreateConfigUI()
    config = CreateFrame("Frame", "MMMConfigFrame", UIParent)
    config.name = "Modern Map Markers"
    config:SetWidth(320)
    config:SetHeight(300)
    config:SetPoint("CENTER", UIParent, "CENTER")
    
    tinsert(UISpecialFrames, "MMMConfigFrame")
    
    config:SetBackdrop(CONFIG_BACKDROP)
    config:SetBackdropBorderColor(0.4, 0.4, 0.4)
    config:SetBackdropColor(0, 0, 0, 0.5)
    config:SetMovable(true)
    config:EnableMouse(true)
    config:RegisterForDrag("LeftButton")
    config:SetScript("OnDragStart", function(self)
        self:StartMoving()
    end)
    config:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
    end)
    
    local title = config:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    title:SetPoint("TOP", 0, -15)
    
    -- Show which marker set is active
    if usingWDM then
        title:SetText("Modern Map Markers |cFF00FF00(WDM)|r")
    else
        title:SetText("Modern Map Markers")
    end

    local masterLabel = config:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    masterLabel:SetPoint("TOPLEFT", 20, -45)
    masterLabel:SetText("Enable Map Markers:")

    masterToggle = CreateFrame("CheckButton", nil, config, "UICheckButtonTemplate")
    masterToggle:SetPoint("LEFT", masterLabel, "RIGHT", 5, 0)
    masterToggle:SetWidth(24)
    masterToggle:SetHeight(24)

    masterToggle:SetScript("OnClick", function(self)
        local isChecked = self:GetChecked()
        ModernMapMarkersDB.showMarkers = isChecked and true or false
        
        if not isChecked then
            ClearMarkers()
            if updateEnabled then
                frame:UnregisterEvent("WORLD_MAP_UPDATE")
                updateEnabled = false
            end
        else
            if not updateEnabled then
                frame:RegisterEvent("WORLD_MAP_UPDATE")
                updateEnabled = true
            end
        end
        
        lastContinent = 0
        lastZone = 0
        UpdateMarkers()
        
        -- Sync both UIs
        SyncCheckboxes()
    end)

    dungeonRaidsToggle = CreateToggleCheckbox(config, 20, -75, "Show Dungeons & Raids", "showDungeonRaids")
    transportToggle = CreateToggleCheckbox(config, 20, -100, "Show Transports (Boats, Zeppelins, Trams)", "showTransport")
    transportFactionToggle = CreateToggleCheckbox(config, 20, -125, "Hide Opposing Faction Transports", "hideOtherFactionTransport")
    worldBossToggle = CreateToggleCheckbox(config, 20, -150, "Show World Bosses", "showWorldBosses")
    portalToggle = CreateToggleCheckbox(config, 20, -175, "Show Portals", "showPortals")
    portalFactionToggle = CreateToggleCheckbox(config, 20, -200, "Hide Opposing Faction Portals", "hideOtherFactionPortals")

    local closeButton = CreateFrame("Button", nil, config, "UIPanelButtonTemplate")
    closeButton:SetWidth(80)
    closeButton:SetHeight(25)
    closeButton:SetPoint("BOTTOM", 0, 12)
    closeButton:SetText("Close")
    closeButton:SetScript("OnClick", function()
        config:Hide()
    end)

    config:Hide()
end

-- Initialize saved variables
local function InitializeSavedVariables()
    if not ModernMapMarkersDB then
        ModernMapMarkersDB = {
            showMarkers = true,
            showDungeonRaids = true,
            showTransport = true,
            hideOtherFactionTransport = false,
            showWorldBosses = true,
            showPortals = false,
            hideOtherFactionPortals = false,
        }
    else
        if ModernMapMarkersDB.showMarkers == nil then
            ModernMapMarkersDB.showMarkers = true
        end
        if ModernMapMarkersDB.showDungeonRaids == nil then
            ModernMapMarkersDB.showDungeonRaids = true
        end
        if ModernMapMarkersDB.showTransport == nil then
            ModernMapMarkersDB.showTransport = true
        end
        if ModernMapMarkersDB.hideOtherFactionTransport == nil then
            ModernMapMarkersDB.hideOtherFactionTransport = false
        end
        if ModernMapMarkersDB.showWorldBosses == nil then
            ModernMapMarkersDB.showWorldBosses = true
        end
        if ModernMapMarkersDB.showPortals == nil then
            ModernMapMarkersDB.showPortals = false
        end
        if ModernMapMarkersDB.hideOtherFactionPortals == nil then
            ModernMapMarkersDB.hideOtherFactionPortals = false
        end
    end
end

-- Event handling
frame:RegisterEvent("VARIABLES_LOADED")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")

frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == "ModernMapMarkers" then
        CreateConfigUI()
        CreateInterfaceOptionsPanel()
        -- Build point index after checking for WDM
        BuildPointIndex()
        FreeDefaultPoints()
        worldMapFrameLevel = WorldMapDetailFrame:GetFrameLevel() + 3
        self:UnregisterEvent("ADDON_LOADED")
        
    elseif event == "VARIABLES_LOADED" then
        if not initialized then
            InitializeSavedVariables()
            playerFaction = UnitFactionGroup("player")
            SyncCheckboxes()
            initialized = true
            
            -- Register map updates if enabled
            if ModernMapMarkersDB.showMarkers then
                frame:RegisterEvent("WORLD_MAP_UPDATE")
                updateEnabled = true
            end
        end
        self:UnregisterEvent("VARIABLES_LOADED")
        
    elseif event == "PLAYER_ENTERING_WORLD" then
        if not initialized then
            InitializeSavedVariables()
            if not config then
                CreateConfigUI()
                CreateInterfaceOptionsPanel()
                if defaultPoints or wdmPoints then
                    BuildPointIndex()
                    FreeDefaultPoints()
                end
                worldMapFrameLevel = WorldMapDetailFrame:GetFrameLevel() + 3
            end
            playerFaction = UnitFactionGroup("player")
            SyncCheckboxes()
            initialized = true
            
            -- Register map updates if enabled
            if ModernMapMarkersDB.showMarkers then
                frame:RegisterEvent("WORLD_MAP_UPDATE")
                updateEnabled = true
            end
        end
        lastContinent = INVALID_ZONE
        lastZone = INVALID_ZONE
        
    elseif event == "WORLD_MAP_UPDATE" then
        if initialized then
            UpdateMarkers()
        end
    end
end)

-- Slash command handler - opens standalone config window
SLASH_MMM1 = "/mmm"
SlashCmdList["MMM"] = function()
    if MMMConfigFrame then
        if MMMConfigFrame:IsVisible() then
            MMMConfigFrame:Hide()
        else
            MMMConfigFrame:Show()
        end
    end
end