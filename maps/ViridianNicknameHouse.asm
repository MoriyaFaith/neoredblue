	object_const_def
    const VIRIDIAN_NICKNAME_HOUSE_UNUSED_GUY 
    const VIRIDIAN_NICKNAME_HOUSE_TWIN
    const VIRIDIAN_NICKNAME_HOUSE_SPEAROW
    const VIRIDIAN_NICKNAME_HOUSE_CLIPBOARD

ViridianNicknameHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianHouseUnusedGuy:
    jumptextfaceplayer ViridianHouseUnusedGuyText

ViridianHouseUnusedGuyText::
	text "Coming up with"
	line "nicknames is fun,"
	cont "but hard."

	para "Simple names are"
	line "the easiest to"
	cont "remember."
	done

ViridianHouseTwin:
    jumptextfaceplayer ViridianHouseTwinText

ViridianHouseTwinText::
	text "My Daddy loves"
	line "#MON too."
	done

ViridianHouseSpearow:
    cry SPEAROW
    jumptext ViridianHouseSpearowText

ViridianHouseSpearowText::
	text "SPEARY: Tetweet!"
	done

ViridianHouseClipboard:
    jumptext ViridianHouseClipboardText

ViridianHouseClipboardText::
	text "SPEAROW"
	line "Name: SPEARY"
	done

ViridianNicknameHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VIRIDIAN_CITY, 3
	warp_event  3,  7, VIRIDIAN_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
    object_event  5,  3, SPRITE_UNUSED_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianHouseUnusedGuy, -1
    object_event  1,  4, SPRITE_TWIN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianHouseTwin, -1
    object_event  5,  5, SPRITE_SPEAROW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianHouseSpearow, -1
    object_event  4,  0, SPRITE_CLIPBOARD, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianHouseClipboard, -1