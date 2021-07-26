	object_const_def
	const VIRIDIANPOKEMART_CLERK


ViridianPokemart_MapScripts:
	def_scene_scripts
    scene_script .RecieveParcel
    scene_script .DummyScene

	def_callbacks

.DummyScene
    end
    
.RecieveParcel
    turnobject VIRIDIANPOKEMART_CLERK, DOWN
    opentext
    writetext ViridianMartCameFromText
    waitbutton
    closetext
    applymovement PLAYER, .WalkUpToCounter
    turnobject VIRIDIANPOKEMART_CLERK, RIGHT
    opentext
    writetext ViridianMartParcelQuestText
    waitbutton
    verbosegiveitem OAKS_PARCEL
    setscene 1
    closetext
    end

.WalkUpToCounter
    step UP
    step UP 
    step LEFT
    step_end

ViridianPokemartClerkScript:
	opentext
    checkevent EVENT_GOT_POKEDEX_FROM_OAK
    iffalse .SayHi
	pokemart MARTTYPE_STANDARD, MART_VIRIDIAN
	closetext
	end

.SayHi
    writetext ViridianMartSayHiText
    waitbutton 
    closetext
    end

ViridianMartSayHiText::
	text "Okay! Say hi to"
	line "PROF.OAK for me!"
	done

ViridianMartCameFromText::
	text "Hey! You came from"
	line "PALLET TOWN?"
	done

ViridianMartParcelQuestText::
	text "You know PROF."
	line "OAK, right?"

	para "His order came in."
	line "Will you take it"
	cont "to him?"
    done

ViridianMart2:
	jumptextfaceplayer ViridianMartText2

ViridianMartText2::
	text "This shop sells"
	line "many ANTIDOTEs."
	done

ViridianMart3:
	jumptextfaceplayer ViridianMartText3

ViridianMartText3::
	text "The shop finally"
	line "has some POTIONs"
	cont "in stock."
	done

ViridianPokemart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VIRIDIAN_CITY, 2
	warp_event  4,  7, VIRIDIAN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianPokemartClerkScript, -1
	object_event  3,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMart3, -1
	object_event  5,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMart2, -1