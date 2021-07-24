	object_const_def
	const ROUTE2_POKE_BALL1
	const ROUTE2_POKE_BALL2

Route2_MapScripts:
	def_scene_scripts

	def_callbacks

Route2HPUP:
	itemball HP_UP

Route2MoonStone:
	itemball MOON_STONE

Route2Sign:
    jumptext Route2SignText

Route2DiglettsCaveSign:
    jumptext Route2DiglettsCaveSignText

Route2SignText::
	text "ROUTE 2"
	line "VIRIDIAN CITY -"
	cont "PEWTER CITY"
	done

Route2DiglettsCaveSignText::
	text "DIGLETT's CAVE"
	done

Route2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 43, VIRIDIAN_FOREST_SOUTH_GATE, 1
	warp_event  3, 11, VIRIDIAN_FOREST_NORTH_GATE, 3
	warp_event  4, 11, VIRIDIAN_FOREST_NORTH_GATE, 3
	warp_event 16, 35, ROUTE_2_GATE, 3
	warp_event 17, 35, ROUTE_2_GATE, 3
	warp_event 17, 39, ROUTE_2_GATE, 1

	def_coord_events

	def_bg_events
    bg_event  5, 65, BGEVENT_READ, Route2Sign
    bg_event 11, 11, BGEVENT_READ, Route2DiglettsCaveSign

	def_object_events
	object_event 13, 45, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2HPUP, EVENT_ROUTE2_HP_UP
	object_event 13, 54, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route2MoonStone, EVENT_ROUTE2_MOONSTONE
