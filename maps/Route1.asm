	object_const_def
    const ROUTE1_YOUNGSTER1
    const ROUTE1_YOUNGSTER2

Route1_MapScripts:
	def_scene_scripts

	def_callbacks

Route1ViridianMartSampleScript:
    checkevent EVENT_GOT_POTION_SAMPLE_FROM_CLERK
    iftrue .after
	faceplayer
	opentext
    writetext Route1ViridianMartSampleText
	promptbutton
	verbosegiveitem POTION
    closetext
    setevent EVENT_GOT_POTION_SAMPLE_FROM_CLERK
    end

.after
    jumptextfaceplayer Route1Text_CarryBallsText

Route1Sign:
	jumptext Route1SignText

Route1YoungsterScript:
	jumptextfaceplayer Route1LedgeText

Route1ViridianMartSampleText::
	text "Hi! I work at a"
	line "#MON MART."

	para "It's a convenient"
	line "shop, so please"
	cont "visit us in"
	cont "VIRIDIAN CITY."

	para "I know, I'll give"
	line "you a sample!"
	cont "Here you go!"
	done

Route1Text_CarryBallsText::
	text "We also carry"
	line "# BALLs for"
	cont "catching #MON!"
	done

Route1LedgeText::
	text "See those ledges"
	line "along the road?"

	para "It's a bit scary,"
	line "but you can jump"
	cont "from them."

	para "You can get back"
	line "to PALLET TOWN"
	cont "quicker that way."
	done

Route1SignText::
	text "ROUTE 1"
	line "PALLET TOWN -"
	cont "VIRIDIAN CITY"
	done



Route1_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  9, 27, BGEVENT_READ, Route1Sign

	def_object_events
    object_event  5, 24, SPRITE_CLERK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route1ViridianMartSampleScript, -1
    object_event 15, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route1YoungsterScript, -1