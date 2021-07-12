	object_const_def
	const PLAYERSHOUSE1F_REDS_MOM

PlayersHouse1F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene

	def_callbacks

.DummyScene:
	end

RedsMom:
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue .healscript
	writetext MomWakeUpText
	waitbutton
	closetext
	end

.healscript
	writetext MomHealText1
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext MomHealText2
	waitbutton
	closetext
	end

PlayersHouse1FTV:
	jumptext StandByMeText

PlayersHouse1FBookshelf:
	jumpstd PictureBookshelfScript

MomWakeUpText::
	text "MOM: Right."
	line "All boys leave"
	cont "home some day."
	cont "It said so on TV."

	para "PROF.OAK, next"
	line "door, is looking"
	cont "for you."
	done

MomHealText1::
	text "MOM: <PLAYER>!"
	line "You should take a"
	cont "quick rest."
	prompt

MomHealText2::
	text "MOM: Oh good!"
	line "You and your"
	cont "#MON are"
	cont "looking great!"
	cont "Take care now!"
	done

StandByMeText::
	text "There's a movie"
	line "on TV. Four boys"
	cont "are walking on"
	cont "railroad tracks."

	para "I better go too."
	done

TVWrongSideText::
	text "Oops, wrong side."
	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, NEW_BARK_TOWN, 1
	warp_event  5,  7, NEW_BARK_TOWN, 1
	warp_event  7,  0, PLAYERS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PlayersHouse1FBookshelf
	bg_event  1,  1, BGEVENT_READ, PlayersHouse1FBookshelf
	bg_event  2,  1, BGEVENT_READ, PlayersHouse1FTV

	def_object_events
	object_event  5,  3, SPRITE_REDS_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RedsMom, -1
