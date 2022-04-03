	object_const_def

ViridianSchoolHouse_MapScripts:
	def_scene_scripts

	def_callbacks

School1:
    jumptextfaceplayer SchoolText1

SchoolText1::
	text "Whew! I'm trying"
	line "to memorize all"
	cont "my notes."
	done

School2:
    jumptextfaceplayer SchoolText2

SchoolText2::
	text "Okay!"

	para "Be sure to read"
	line "the blackboard"
	cont "carefully!"
	done

ViridianSchoolNotebookText5::
	text "GIRL: Hey! Don't"
	line "look at my notes!"
	done

ViridianSchoolNotebookText1::
	text "Looked at the"
	line "notebook!"

	para "First page..."

	para "# BALLs are"
	line "used to catch"
	cont "#MON."

	para "Up to 6 #MON"
	line "can be carried."

	para "People who raise"
	line "and make #MON"
	cont "fight are called"
	cont "#MON trainers."
	done

ViridianSchoolNotebook:
    opentext
    writetext ViridianSchoolNotebookText1
    waitbutton
    writetext TurnPageText
    yesorno
    iffalse .end
    writetext ViridianSchoolNotebookText2
    waitbutton
    writetext TurnPageText
    yesorno
    iffalse .end
    writetext ViridianSchoolNotebookText3
    waitbutton
    writetext TurnPageText
    yesorno
    iffalse .end
    writetext ViridianSchoolNotebookText4
    waitbutton
.end
    writetext ViridianSchoolNotebookText5
    waitbutton
    closetext
    end

TurnPageText::
	text "Turn the page?"
	done

ViridianSchoolNotebookText2::
	text "Second page..."

	para "A healthy #MON"
	line "may be hard to"
	cont "catch, so weaken"
	cont "it first!"

	para "Poison, burns and"
	line "other damage are"
	cont "effective!"
	done

ViridianSchoolNotebookText3::
	text "Third page..."

	para "#MON trainers"
	line "seek others to"
	cont "engage in #MON"
	cont "fights."

	para "Battles are"
	line "constantly fought"
	cont "at #MON GYMs."
	done

ViridianSchoolNotebookText4::
	text "Fourth page..."

	para "The goal for"
	line "#MON trainers"
	cont "is to beat the "
	cont "top 8 #MON"
	cont "GYM LEADERs."

	para "Do so to earn the"
	line "right to face..."

	para "The ELITE FOUR of"
	line "#MON LEAGUE!"
	done

ViridianSchoolHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VIRIDIAN_CITY, 4
	warp_event  3,  7, VIRIDIAN_CITY, 4

	def_coord_events

	def_bg_events
    bg_event  3,  4, BGEVENT_READ, ViridianSchoolNotebook

	def_object_events
    object_event 3, 5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP,  0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, School1, -1
    object_event 4, 1, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN,  0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, School2, -1