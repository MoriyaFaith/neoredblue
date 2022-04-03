	object_const_def

PewterCity_MapScripts:
	def_scene_scripts

	def_callbacks

PewterCityPokecenterSign:
	jumpstd PokecenterSignScript

PewterCityMartSign:
	jumpstd MartSignScript

PewterCitySign:
	jumptext PewterCitySignText

PewterCityTrainerTips:
	jumptext PewterCityTrainerTipsText

PewterCityPoliceSign:
	jumptext PewterCityPoliceSignText

PewterCityMuseumSign:
	jumptext PewterCityMuseumSignText

PewterCityGymSign:
	jumptext PewterCityGymSignText

;-----TEXT------

PewterCityClefairyText:
	text "It's rumored that"
	line "CLEFAIRY came"
	cont "from the moon!"

	para "They appeared"
	line "after a MOON STONE"
	cont "fell on MT.MOON."
	done

PewterCityAboutBrockText:
	text "There aren't many"
	line "serious #MON"
	cont "trainers here!"

	para "They're all like"
	line "BUG CATCHERs,"
	cont "but PEWTER GYM's"
	cont "BROCK is totally"
	cont "into it!"
	done

PewterCityCheckOutMuseumText:
	text "Did you check out"
	line "the MUSEUM?"
	done

PewterCityFossilsText:
	text "Weren't those"
	line "fossils from MT."
	cont "MOON amazing?"
	done

PewterCityHaveToGoText:
	text "Really?"
	line "You absolutely"
	cont "have to go!"
	done

PewterCityPayMuseumText:
	text "It's right here!"
	line "You have to pay"
	cont "to get in, but"
	cont "it's worth it!"
	cont "See you around!"
	done

PewterCityGardenerAskText:
	text "Psssst!"
	line "Do you know what"
	cont "I'm doing?"
	done

PewterCityHardWorkText:
	text "That's right!"
	line "It's hard work!"
	done

PewterCityRepelText:
	text "I'm spraying REPEL"
	line "to keep #MON"
	cont "out of my garden!"
	done

PewterCityRoadblockText:
	text "You're a trainer"
	line "right? BROCK's"
	cont "looking for new"
	cont "challengers!"
	cont "Follow me!"
	done

PewterCityTakeOnBrockText:
	text "If you have the"
	line "right stuff, go"
	cont "take on BROCK!"
	done

PewterCityTrainerTipsText:
	text "TRAINER TIPS"

	para "Any #MON that"
	line "takes part in"
	cont "battle, however"
	cont "short, earns EXP!"
	done

PewterCityPoliceSignText:
	text "NOTICE!"

	para "Thieves have been"
	line "stealing #MON"
	cont "fossils at MT."
	cont "MOON! Please call"
	cont "PEWTER POLICE"
	cont "with any info!"
	done

PewterCityMuseumSignText:
	text "PEWTER MUSEUM"
	line "OF SCIENCE"
	done

PewterCityGymSignText:
	text "PEWTER CITY"
	line "#MON GYM"
	cont "LEADER: BROCK"

	para "The Rock Solid"
	line "#MON Trainer!"
	done

PewterCitySignText:
	text "PEWTER CITY"
	line "A Stone Gray"
	cont "City"
	done

PewterCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 25, PEWTER_POKECENTER, 1
	warp_event 23, 17, PEWTER_POKEMART, 1

	def_coord_events

	def_bg_events
	bg_event 14, 25, BGEVENT_READ, PewterCityPokecenterSign
	bg_event 24, 17, BGEVENT_READ, PewterCityMartSign
	bg_event 19, 29, BGEVENT_READ, PewterCityTrainerTips
	bg_event 25, 23, BGEVENT_READ, PewterCitySign
	bg_event 33, 19, BGEVENT_READ, PewterCityPoliceSign
	bg_event 15,  9, BGEVENT_READ, PewterCityMuseumSign
	bg_event 11, 17, BGEVENT_READ, PewterCityGymSign

	def_object_events
