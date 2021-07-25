	object_const_def

ViridianForestSouthGate_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianForestSouthGateTeacher:
	jumptextfaceplayer ViridianForestEntranceText1

ViridianForestSouthGateTwin:
	jumptextfaceplayer ViridianForestEntranceText2

ViridianForestEntranceText1::
	text "Are you going to"
	line "VIRIDIAN FOREST?"
	cont "Be careful, it's"
	cont "a natural maze!"
	done

ViridianForestEntranceText2::
	text "RATTATA may be"
	line "small, but its"
	cont "bite is wicked!"
	cont "Did you get one?"
	done


ViridianForestSouthGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 4, 7, ROUTE_2, 1
	warp_event 5, 7, ROUTE_2, 1
	warp_event 5, 0, VIRIDIAN_FOREST, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 8, 4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestSouthGateTeacher, -1
	object_event 2, 4, SPRITE_TWIN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestSouthGateTwin, -1