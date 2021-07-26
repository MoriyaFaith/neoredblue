	object_const_def
	const VIRIDIANPOKECENTER_NURSE


ViridianPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianPokecenterNurseScript:
	jumpstd PokecenterNurseScript

ViridianPokecenter2:
	jumptextfaceplayer ViridianPokeCenterText2

ViridianPokecenter3:
	jumptextfaceplayer ViridianPokeCenterText3

ViridianPokeCenterText2::
	text "You can use that"
	line "PC in the corner."

	para "The receptionist"
	line "told me. So kind!"
	done

ViridianPokeCenterText3::
	text "There's a #MON"
	line "CENTER in every"
	cont "town ahead."

	para "They don't charge"
	line "any money either!"
	done

ViridianPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VIRIDIAN_CITY, 1
	warp_event  4,  7, VIRIDIAN_CITY, 1
	warp_event 11,  0, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianPokecenterNurseScript, -1
	object_event  4,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianPokecenter3, -1
	object_event 10,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianPokecenter2, -1
