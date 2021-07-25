; Valid sprite IDs for each map group.
; Maps with environment ROUTE or TOWN can only use these sprites.

OutdoorSprites:
; entries correspond to MAPGROUP_* constants
	table_width 2, OutdoorSprites
	dw CableClubGroupSprites
	dw BattleTowerGroupSprites
	dw NewBarkGroupSprites
	dw ViridianGroupSprites
	dw IndigoGroupSprites
	dw DungeonGroupSprites
	assert_table_length NUM_MAP_GROUPS

CableClubGroupSprites:
	db 0 ;end


BattleTowerGroupSprites:
	db SPRITE_SILVER
	db SPRITE_POKEFAN_M
	db SPRITE_LASS
	db SPRITE_BUENA
	db SPRITE_SWIMMER_GIRL
	db SPRITE_SAILOR
	db SPRITE_POKEFAN_F
	db SPRITE_SUPER_NERD
	; 8 of max 9 walking sprites
	db SPRITE_TAUROS
	db SPRITE_FRUIT_TREE
	db SPRITE_ROCK
	db SPRITE_YOUNGSTER ; can't walk
	db SPRITE_SUICUNE
	db 0 ; end

ViridianGroupSprites:
NewBarkGroupSprites:
	db SPRITE_TEACHER
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_BLUE
	db SPRITE_BUG_CATCHER
	db SPRITE_OAK
	db SPRITE_KURT
	db SPRITE_SWIMMER_GIRL
	db SPRITE_SWIMMER_GUY
	; max 9 of 9 walking sprites
	db SPRITE_GRAMPS ; can't walk
	db SPRITE_CLERK ; can't walk
	db SPRITE_POKE_BALL
	db SPRITE_KURT_ASLEEP
	db 0 ; end

DungeonGroupSprites:
IndigoGroupSprites:
	db 0 ;end
