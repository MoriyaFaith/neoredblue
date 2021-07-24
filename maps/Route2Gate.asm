	object_const_def

Route2Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route2Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 4, 7, ROUTE_2, 6
	warp_event 5, 7, ROUTE_2, 6
	warp_event 5, 0, ROUTE_2, 4

	def_coord_events

	def_bg_events

	def_object_events