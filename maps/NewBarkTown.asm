	object_const_def
	const NEWBARKTOWN_TEACHER
	const NEWBARKTOWN_FISHER
	const NEWBARKTOWN_OAK

NewBarkTown_MapScripts:
	def_scene_scripts
	scene_script .DummyScene
	scene_script .DummyScene

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene:
	disappear NEWBARKTOWN_OAK
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_NEW_BARK
	endcallback

NewBarkOakFar:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
NewBarkOak:
	setscene SCENE_FINISHED
	clearevent EVENT_OAK_ABSENCE
	setmapscene OAKS_LAB, SCENE_OAKSLAB_FIRST_TIME
	playmusic MUSIC_PROF_OAK
	opentext
	turnobject PLAYER, DOWN
	writetext OakAppearsText
	waitbutton
	closetext
	moveobject NEWBARKTOWN_OAK, 8, 5
	showemote EMOTE_SHOCK, PLAYER, 15
	appear NEWBARKTOWN_OAK
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .skip
	applymovement NEWBARKTOWN_OAK, NewBarkOakAdjustRight
.skip
	applymovement NEWBARKTOWN_OAK, NewBarkOakMovement
	opentext
	writetext OakWalksUpText
	waitbutton
	closetext
	follow NEWBARKTOWN_OAK, PLAYER
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .skip2
	applymovement NEWBARKTOWN_OAK, NewBarkOakAdjustLeft
.skip2
	applymovement NEWBARKTOWN_OAK, NewBarkOakToLabMovement
	disappear NEWBARKTOWN_OAK
	stopfollow
	playsound SFX_ENTER_DOOR
	applymovement PLAYER, NewBarkPlayerEnterLabMovement
	warpfacing UP, OAKS_LAB, 5, 11
	end

NewBarkOakAdjustLeft:
	step LEFT
	step_end

NewBarkOakAdjustRight:
	step RIGHT
	step_end

NewBarkOakMovement:
	step UP
	step RIGHT
	step UP
	step RIGHT
	step UP
	step_end

NewBarkOakToLabMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end

NewBarkPlayerEnterLabMovement:
	step UP
	step_end

NewBarkTownTeacherScript:
	jumptextfaceplayer NewBarkTownTeacherText

NewBarkTownFisherScript:
	jumptextfaceplayer NewBarkTownFisherText

NewBarkTownSign:
	jumptext NewBarkTownSignText

RedsHouseSign:
	jumptext RedsHouseSignText

OaksLabSign:
	jumptext OaksLabSignText

BluesHouseSign:
	jumptext BluesHouseSignText

OakAppearsText::
	text "OAK: Hey! Wait!"
	line "Don't go out!@"
	text_end

OakWalksUpText::
	text "OAK: It's unsafe!"
	line "Wild #MON live"
	cont "in tall grass!"

	para "You need your own"
	line "#MON for your"
	cont "protection."
	cont "I know!"

	para "Here, come with"
	line "me!"
	done

NewBarkTownTeacherText:
	text "I'm raising"
	line "#MON too!"

	para "When they get"
	line "strong, they can"
	cont "protect me!"
	done

NewBarkTownFisherText:
	text "Technology is"
	line "incredible!"

	para "You can now store"
	line "and recall items"
	cont "and #MON as"
	cont "data via PC!"
	done

NewBarkTownSignText:
	text "PALLET TOWN"
	line "Shades of your"
	cont "journey await!"
	done

RedsHouseSignText:
	text "<PLAYER>'s house"
	done

OaksLabSignText:
	text "OAK #MON"
	line "RESEARCH LAB"
	done

BluesHouseSignText:
	text "<RIVAL>' house"
	done

NewBarkTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, PLAYERS_HOUSE_1F, 1
	warp_event 13,  5, BLUES_HOUSE, 1
	warp_event 12, 11, OAKS_LAB, 1

	def_coord_events
	coord_event 10,  1, SCENE_DEFAULT, NewBarkOak
	coord_event 11,  1, SCENE_DEFAULT, NewBarkOakFar

	def_bg_events
	bg_event  7,  9, BGEVENT_READ, NewBarkTownSign
	bg_event  3,  5, BGEVENT_READ, RedsHouseSign
	bg_event 13, 13, BGEVENT_READ, OaksLabSign
	bg_event 11,  5, BGEVENT_READ, BluesHouseSign

	def_object_events
	object_event  3,  8, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownTeacherScript, -1
	object_event 12, 14, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NewBarkTownFisherScript, -1
	object_event  0,  0, SPRITE_OAK, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownTeacherScript, EVENT_OAK_ABSENCE
