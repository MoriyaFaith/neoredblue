	object_const_def
    const ROUTE22_BLUE

Route22_MapScripts:
	def_scene_scripts

	def_callbacks

Route22FrontGate:
	jumptext Route22FrontGateText

Route22Rival1_Top:
    setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
    turnobject PLAYER, DOWN
Route22Rival1:
    appear ROUTE22_BLUE
    showemote EMOTE_SHOCK, PLAYER, 15
	playmusic MUSIC_RIVAL_ENCOUNTER
    applymovement ROUTE22_BLUE, Route22RivalApproach
    checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
    iffalse .skip
    applymovement ROUTE22_BLUE, Route22RivalApproachTop
    turnobject ROUTE22_BLUE, UP
    clearevent EVENT_RIVAL_OAKSLAB
.skip
    opentext
    writetext Route22RivalBeforeBattleText1
	checkevent EVENT_GOT_SQUIRTBOTTLE
	iftrue .Squirtle
	checkevent EVENT_GOT_BULBASAUR_FROM_OAK
	iftrue .Bulbasaur
	winlosstext Route22RivalDefeatedText1, Route22TRivalWinText1
	setlasttalked ROUTE22_BLUE
	loadtrainer RIVAL1, RIVAL1_2_SQUIRTLE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Squirtle
	winlosstext Route22RivalDefeatedText1, Route22TRivalWinText1
	setlasttalked ROUTE22_BLUE
	loadtrainer RIVAL1, RIVAL1_2_BULBASAUR
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Bulbasaur
	winlosstext Route22RivalDefeatedText1, Route22TRivalWinText1
	setlasttalked ROUTE22_BLUE
	loadtrainer RIVAL1, RIVAL1_2_CHARMANDER
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle
    playmusic MUSIC_RIVAL_AFTER
    opentext
    writetext Route22RivalAfterBattleText1
    waitbutton
    closetext
    checkevent EVENT_RIVAL_OAKSLAB
    iffalse .skip2
    applymovement ROUTE22_BLUE, Route22RivalWalkAround
    setevent OAKSLAB_BLUE
.skip2
    applymovement ROUTE22_BLUE, Route22RivalLeave
    disappear ROUTE22_BLUE
    playmapmusic
    setscene 0
    end


Route22RivalApproach:
    step RIGHT
    step RIGHT
    step RIGHT
    step_end

Route22RivalApproachTop:
    step RIGHT
    step_end

Route22RivalWalkAround:
    step UP
    step RIGHT
    step_end

Route22RivalLeave:
    step RIGHT
    step RIGHT
    step RIGHT
    step RIGHT
    step RIGHT
    step_end

Route22RivalBeforeBattleText1::
	text "<RIVAL>: Hey!"
	line "<PLAYER>!"

	para "You're going to"
	line "#MON LEAGUE?"

	para "Forget it! You"
	line "probably don't"
	cont "have any BADGEs!"

	para "The guard won't"
	line "let you through!"

	para "By the way, did"
	line "your #MON"
	cont "get any stronger?"
	done

Route22RivalAfterBattleText1::
	text "I heard #MON"
	line "LEAGUE has many"
	cont "tough trainers!"

	para "I have to figure"
	line "out how to get"
	cont "past them!"

	para "You should quit"
	line "dawdling and get"
	cont "a move on!"
	done

Route22RivalDefeatedText1::
	text "Awww!"
	line "You just lucked"
	cont "out!"
	done

Route22TRivalWinText1::
	text "<RIVAL>: What?"
	line "How do I have 2"
	cont "#MON?"

	para "You should catch"
	line "some more too!"
	done

Route22RivalBeforeBattleText2::
	text "<RIVAL>: What?"
	line "<PLAYER>! What a"
	cont "surprise to see"
	cont "you here!"

	para "So you're going to"
	line "#MON LEAGUE?"

	para "You collected all"
	line "the BADGEs too?"
	cont "That's cool!"

	para "Then I'll whip you"
	line "<PLAYER> as a"
	cont "warm up for"
	cont "#MON LEAGUE!"

	para "Come on!"
	done

Route22RivalAfterBattleText2::
	text "That loosened me"
	line "up! I'm ready for"
	cont "#MON LEAGUE!"

	para "<PLAYER>, you need"
	line "more practice!"

	para "But hey, you know"
	line "that! I'm out of"
	cont "here. Smell ya!"
	done

Route22RivalDefeatedText2::
	text "What!?"

	para "I was just"
	line "careless!"
	done

Route22RivalWinText2::
	text "<RIVAL>: Hahaha!"
	line "<PLAYER>! That's"
	cont "your best? You're"
	cont "nowhere near as"
	cont "good as me, pal!"

	para "Go train some"
	line "more! You loser!"
	done

Route22FrontGateText::
	text "#MON LEAGUE"
	line "Front Gate"
	done

Route22_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 29,  4, SCENE_ROUTE22_RIVAL1, Route22Rival1_Top
	coord_event 29,  5, SCENE_ROUTE22_RIVAL1, Route22Rival1

	def_bg_events
	bg_event  7, 11, BGEVENT_READ, Route22FrontGate

	def_object_events
	object_event 25, 5, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_ROUTE_22
