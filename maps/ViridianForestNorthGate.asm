	object_const_def

ViridianForestNorthGate_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianForestNorthGateSuperNerd:
	jumptextfaceplayer ViridianForestExitText1

ViridianForestNorthGateGramps:
	jumptextfaceplayer ViridianForestExitText2

ViridianForestExitText1::
	text "Many #MON live"
	line "only in forests "
	cont "and caves."

	para "You need to look"
	line "everywhere to get"
	cont "different kinds!"
	done

ViridianForestExitText2::
	text "Have you noticed"
	line "the bushes on the"
	cont "roadside?"

	para "They can be cut"
	line "down by a special"
	cont "#MON move."
	done


ViridianForestNorthGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 4, 7, VIRIDIAN_FOREST, 3
	warp_event 5, 7, VIRIDIAN_FOREST, 3
	warp_event 5, 0, ROUTE_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 3, 2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestNorthGateSuperNerd, -1
	object_event 2, 5, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestNorthGateGramps, -1
