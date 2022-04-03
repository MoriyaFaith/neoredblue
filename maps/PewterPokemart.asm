	object_const_def
	const PEWTERPOKEMART_CLERK


PewterPokemart_MapScripts:
	def_scene_scripts
    scene_script .DummyScene

	def_callbacks

.DummyScene
    end

PewterPokemartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_PEWTER
	closetext
	end

PewterMart2:
	jumptextfaceplayer PewterMartText2

PewterMartText2::
	text "A shady, old man"
	line "got me to buy"
	cont "this really weird"
	cont "fish #MON!"

	para "It's totally weak"
	line "and it cost ¥500!"
	done

PewterMart3:
	jumptextfaceplayer PewterMartText3

PewterMartText3::
	text "Good things can"
	line "happen if you"
	cont "raise #MON"
	cont "diligently, even"
	cont "the weak ones!"
	done


PewterPokemart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, PEWTER_CITY, 2
	warp_event  4,  7, PEWTER_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterPokemartClerkScript, -1
	object_event  5,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMart3, -1
	object_event  3,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterMart2, -1