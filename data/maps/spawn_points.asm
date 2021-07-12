spawn: MACRO
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4, SpawnPoints

	spawn PLAYERS_HOUSE_2F,              3,  3
	spawn NEW_BARK_TOWN,                 5,  6
	spawn VIRIDIAN_CITY,                23, 26
	spawn INDIGO_PLATEAU_POKECENTER_1F,  7,  9
	spawn BATTLE_TOWER_OUTSIDE,          8, 10
	spawn NONE,                          6,  2

	spawn N_A,                          -1, -1

	assert_table_length NUM_SPAWNS + 1
