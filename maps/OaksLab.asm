	object_const_def
	const OAKSLAB_OAK
	const OAKSLAB_BLUE
	const OAKSLAB_SCIENTIST1
	const OAKSLAB_SCIENTIST2
	const OAKSLAB_SCIENTIST3
	const OAKSLAB_POKE_BALL1
	const OAKSLAB_POKE_BALL2
	const OAKSLAB_POKE_BALL3
	const OAKSLAB_POKEDEX1
	const OAKSLAB_POKEDEX2

OaksLab_MapScripts:
	def_scene_scripts
	scene_script .nothing
	scene_script .GetStarter
	scene_script .nothing

	def_callbacks

.nothing:
	end

.GetStarter: ; unreferenced
	moveobject OAKSLAB_OAK, 5, 10
	appear OAKSLAB_OAK
	applymovement OAKSLAB_OAK, OaksLabOakWalksUp
	applymovement PLAYER, OaksLabWalkuptoOak
	turnobject OAKSLAB_BLUE, UP
	opentext
	writetext OaksLabRivalWaitingText
	waitbutton
	closetext
	opentext
	writetext OaksLabChooseMonText
	waitbutton
	closetext
	opentext
	writetext OaksLabRivalInterjectionText
	waitbutton
	closetext
	opentext
	writetext OaksLabBePatientText
	waitbutton
	closetext
	setscene SCENE_OAKSLAB_GETTING_STARTER
	end

Oak:
	faceplayer
	checkevent EVENT_GOT_POKEDEX_FROM_OAK
	iftrue .CheckPokedex
	checkscene
	iftrue .ChooseText
	checkitem OAKS_PARCEL
	iftrue .Parcel
	opentext
	writetext OaksLabRaiseText
	waitbutton
	closetext
	end

.CheckPokedex
	opentext
	writetext OakLabDexCheckText
	waitbutton
	special ProfOaksPCBoot
	closetext
	end

.ChooseText
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue .FightBack
	opentext
	writetext OaksLabWhichText
	waitbutton
	closetext
	end

.FightBack
	opentext
	writetext OaksLabFightText
	waitbutton
	closetext
	end

.Parcel
	opentext
	writetext OaksLabDeliverParcelText1
	takeitem OAKS_PARCEL
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	writetext OaksLabDeliverParcelText2
	waitbutton
	closetext
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext OaksLabGrampsText
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal DOWN, .adjust
	moveobject OAKSLAB_BLUE, 4,7
	appear OAKSLAB_BLUE
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksUp6
.adjusted
	special RestartMapMusic
	opentext
	writetext OaksLabCallText
	waitbutton
	closetext
	opentext
	writetext OaksLabIntroducePokedexText
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal RIGHT, .right
	applymovement OAKSLAB_OAK, OaksLabBlueWalksLeft2
	turnobject OAKSLAB_OAK, UP
	disappear OAKSLAB_POKEDEX2
	pause 5
	applymovement OAKSLAB_OAK, OaksLabBlueWalksLeft1
	turnobject OAKSLAB_OAK, UP
	disappear OAKSLAB_POKEDEX1
	pause 5
	applymovement OAKSLAB_OAK, OaksLabBlueWalksRight3
	readvar VAR_FACING
	ifequal DOWN, .turnup
	turnobject OAKSLAB_OAK, DOWN
.aftermovement
	opentext
	writetext OaksLabGetDexText
	playsound SFX_ITEM
	waitsfx
	waitbutton
	writetext OaksLabImTooOldText
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal RIGHT, .turndown
	ifequal DOWN, .afterturn1
	turnobject OAKSLAB_BLUE, RIGHT
	turnobject PLAYER, LEFT
.afterturn1
	opentext
	writetext OaksLabBlueLeaveItToMeText
	waitbutton
	closetext
	playmusic MUSIC_RIVAL_AFTER
	turnobject PLAYER, DOWN
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksDown6
	disappear OAKSLAB_BLUE
	special FadeOutMusic
	pause 900
	opentext
	writetext OaksLabHesGoneText
	waitbutton
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .turnright
	readvar VAR_FACING
	ifequal DOWN, .afterturn2
	turnobject PLAYER, UP
.afterturn2
	special RestartMapMusic
	writetext OaksLabGivePokeballsText1
	waitbutton
	verbosegiveitem POKE_BALL, 5
	writetext OaksLabGivePokeballsText2
	waitbutton
	closetext
	setevent EVENT_GOT_POKEDEX_FROM_OAK
	setmapscene ROUTE_22, SCENE_ROUTE22_RIVAL1
	setflag ENGINE_POKEDEX
	clearevent EVENT_VIRIDIAN_CITY_GAMBLER
	end
.right
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	applymovement OAKSLAB_OAK, OaksLabBlueWalksUp1
	applymovement OAKSLAB_OAK, OaksLabBlueWalksLeft1
	disappear OAKSLAB_POKEDEX2
	disappear OAKSLAB_POKEDEX1
	applymovement OAKSLAB_OAK, OaksLabBlueWalksRight1
	applymovement OAKSLAB_OAK, OaksLabBlueWalksDown1
	sjump .aftermovement
.turnup
	turnobject OAKSLAB_OAK, RIGHT
	sjump .aftermovement
.turnright
	turnobject PLAYER, RIGHT
	turnobject OAKSLAB_OAK, LEFT
	sjump .afterturn2
.turndown
	turnobject PLAYER, DOWN
	sjump .afterturn1
.adjust
	moveobject OAKSLAB_BLUE, 4,6
	appear OAKSLAB_BLUE
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksUp5
	sjump .adjusted

Blue:
	faceplayer
	checkevent EVENT_OAKSLAB_OAK
	iffalse .checkstarter
	opentext
	writetext OaksLabBlueIsntAroundText
	waitbutton
	closetext
	end

.checkstarter
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue .stronger
	opentext
	writetext OaksLabBlueGreedyText
	waitbutton
	closetext
	end

.stronger
	opentext
	writetext OaksLabBlueStrongerText
	waitbutton
	closetext
	end

AttempttoLeaveFar:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
AttempttoLeave:
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue .RivalBattle
	opentext
	writetext OaksLabLeavingText
	waitbutton
	closetext
	applymovement PLAYER, OaksLabBlueWalksUp1
	end

.RivalBattle
	turnobject OAKSLAB_BLUE, DOWN
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext OaksLabRivalChallengeText
	waitbutton
	closetext
	turnobject PLAYER, UP
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .skip
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksLeft1
	setevent EVENT_GOT_POKEDEX_FROM_OAK
.skip
	checkevent EVENT_GOT_SQUIRTBOTTLE
	iftrue .Squirtle
	checkevent EVENT_GOT_BULBASAUR_FROM_OAK
	iftrue .Bulbasaur
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksLeft2
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksDown1
	winlosstext OaksLabRivalLoseText, OaksLabRivalWinText
	setlasttalked OAKSLAB_BLUE
	loadtrainer RIVAL1, RIVAL1_1_SQUIRTLE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	sjump .AfterBattle

.Squirtle
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksLeft3
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksDown1
	winlosstext OaksLabRivalLoseText, OaksLabRivalWinText
	setlasttalked OAKSLAB_BLUE
	loadtrainer RIVAL1, RIVAL1_1_BULBASAUR
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	sjump .AfterBattle

.Bulbasaur
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksLeft1
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksDown1
	winlosstext OaksLabRivalLoseText, OaksLabRivalWinText
	setlasttalked OAKSLAB_BLUE
	loadtrainer RIVAL1, RIVAL1_1_CHARMANDER
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	sjump .AfterBattle

.AfterBattle
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext OaksLabRivalToughenUpText
	waitbutton
	closetext
	checkevent EVENT_GOT_POKEDEX_FROM_OAK
	iftrue .adjust
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksLeft1
.adjusted
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksDown6
	setscene 0
	disappear OAKSLAB_BLUE
	special HealParty
	playmapmusic
	end
.adjust
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksRight1
	clearevent EVENT_GOT_POKEDEX_FROM_OAK
	sjump .adjusted

CharmanderPokeBallScript:
	checkevent EVENT_OAKSLAB_OAK
	iftrue LookatOakPokeBallScript
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue LookatOakPokeBallScript
	turnobject OAKSLAB_OAK, DOWN
	refreshscreen
	pokepic CHARMANDER
	cry CHARMANDER
	waitbutton
	closepokepic
	opentext
	writetext OaksLabCharmanderText
	yesorno
	iffalse DidntChooseStarterScript
	disappear OAKSLAB_POKE_BALL1
	setevent EVENT_GOT_CHARMANDER_FROM_OAK
	writetext OaksLabMonEnergeticText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CHARMANDER
	writetext OaksLabReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CHARMANDER, 5, NO_ITEM
	closetext
	readvar VAR_FACING
	ifequal RIGHT, .right
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksDown2
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksRight3
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksUp1
	opentext
	writetext OaksLabRivalPickingMonText
	waitbutton
	closetext
	turnobject OAKSLAB_BLUE, RIGHT
	disappear OAKSLAB_POKE_BALL2
	pause 5
	turnobject OAKSLAB_BLUE, UP
	getmonname STRING_BUFFER_3, SQUIRTLE
	opentext
	writetext OaksLabRivalReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	closetext
	end

.right
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksDown1
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksRight3
	turnobject OAKSLAB_BLUE, UP
	opentext
	writetext OaksLabRivalPickingMonText
	waitbutton
	closetext
	turnobject OAKSLAB_BLUE, RIGHT
	disappear OAKSLAB_POKE_BALL2
	pause 5
	turnobject OAKSLAB_BLUE, UP
	getmonname STRING_BUFFER_3, SQUIRTLE
	opentext
	writetext OaksLabRivalReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	closetext
	end

SquirtlePokeBallScript:
	checkevent EVENT_OAKSLAB_OAK
	iftrue LookatOakPokeBallScript
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue LookatOakPokeBallScript
	turnobject OAKSLAB_OAK, DOWN
	refreshscreen
	pokepic SQUIRTLE
	cry SQUIRTLE
	waitbutton
	closepokepic
	opentext
	writetext OaksLabSquirtleText
	yesorno
	iffalse DidntChooseStarterScript
	disappear OAKSLAB_POKE_BALL2
	setevent EVENT_GOT_SQUIRTLE_FROM_OAK
	writetext OaksLabMonEnergeticText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, SQUIRTLE
	writetext OaksLabReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SQUIRTLE, 5, NO_ITEM
	closetext
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksDown2
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksRight4
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksUp1
	opentext
	writetext OaksLabRivalPickingMonText
	waitbutton
	closetext
	turnobject OAKSLAB_BLUE, RIGHT
	disappear OAKSLAB_POKE_BALL3
	pause 5
	turnobject OAKSLAB_BLUE, UP
	getmonname STRING_BUFFER_3, BULBASAUR
	opentext
	writetext OaksLabRivalReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	closetext
	end

BulbasaurPokeBallScript:
	checkevent EVENT_OAKSLAB_OAK
	iftrue LookatOakPokeBallScript
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue LookatOakPokeBallScript
	turnobject OAKSLAB_OAK, DOWN
	refreshscreen
	pokepic BULBASAUR
	cry BULBASAUR
	waitbutton
	closepokepic
	opentext
	writetext OaksLabBulbasaurText
	yesorno
	iffalse DidntChooseStarterScript
	disappear OAKSLAB_POKE_BALL3
	setevent EVENT_GOT_BULBASAUR_FROM_OAK
	writetext OaksLabMonEnergeticText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, BULBASAUR
	writetext OaksLabReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke BULBASAUR, 5, NO_ITEM
	closetext
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksDown1
	applymovement OAKSLAB_BLUE, OaksLabBlueWalksRight2
	turnobject OAKSLAB_BLUE, UP
	opentext
	writetext OaksLabRivalPickingMonText
	waitbutton
	closetext
	turnobject OAKSLAB_BLUE, RIGHT
	disappear OAKSLAB_POKE_BALL1
	pause 5
	turnobject OAKSLAB_BLUE, UP
	getmonname STRING_BUFFER_3, CHARMANDER
	opentext
	writetext OaksLabRivalReceivedMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	closetext
	end

DidntChooseStarterScript:
	opentext
	writetext OaksLabWhichText
	waitbutton
	closetext
	end

OaksLabPokedexScript:
	jumptext OaksLabPokedexText

LookatOakPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue .LastMon
	opentext
	writetext OaksLabBallsText
	waitbutton
	closetext
	end

.LastMon
	opentext
	writetext OaksLabLastMonText
	waitbutton
	closetext
	end

OaksAssistant1Script:
	jumptextfaceplayer OaksAssistant1Text

OaksAssistant3Script:
	jumptextfaceplayer OaksAssistant3Text

OaksLabBookshelf:
	jumpstd DifficultBookshelfScript

OaksLabPoster1:
	jumptext OaksLabPoster1Text

OaksLabPoster2:
	jumptext OaksLabPoster2Text

OaksLabTrashcan:
	jumptext OaksLabTrashcanText

OaksLabPC:
	jumptext OaksLabPCText

OaksLabOakWalksUp:
	step UP
	step UP
	step UP
	step UP
	step UP
	big_step UP
	big_step UP
	big_step UP
	turn_head DOWN
	step_end

OaksLabWalkuptoOak:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

OaksLabBlueWalksDown1:
	step DOWN
	step_end

OaksLabBlueWalksDown2:
	step DOWN
	step DOWN
	step_end

OaksLabBlueWalksDown6:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

OaksLabBlueWalksRight1:
	step RIGHT
	step_end

OaksLabBlueWalksRight2:
	step RIGHT
	step RIGHT
	step_end

OaksLabBlueWalksRight3:
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

OaksLabBlueWalksRight4:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

OaksLabBlueWalksLeft1:
	step LEFT
	step_end

OaksLabBlueWalksLeft2:
	step LEFT
	step LEFT
	step_end

OaksLabBlueWalksLeft3:
	step LEFT
	step LEFT
	step LEFT
	step_end

OaksLabBlueWalksLeft4:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

OaksLabBlueWalksUp1:
	step UP
	step_end

OaksLabBlueWalksUp6:
	step UP
	step UP
	step UP
	step UP
	step_end

OaksLabBlueWalksUp5:
	step UP
	step UP
	step UP
	step_end

OakLabDexCheckText:
	text "How is your #-"
	line "DEX coming?"

	para "Let's see…"
	done

OaksLabBlueIsntAroundText::
	text "<RIVAL>: Yo"
	line "<PLAYER>! Gramps"
	cont "isn't around!"
	done

OaksLabBlueGreedyText::
	text "<RIVAL>: Heh, I"
	line "don't need to be"
	cont "greedy like you!"

	para "Go ahead and"
	line "choose, <PLAYER>!"
	done

OaksLabBlueStrongerText::
	text "<RIVAL>: My"
	line "#MON looks a"
	cont "lot stronger."
	done

OaksLabBallsText::
	text "Those are #"
	line "BALLs. They"
	cont "contain #MON!"
	done

OaksLabCharmanderText::
	text "So! You want the"
	line "fire #MON,"
	cont "CHARMANDER?"
	done

OaksLabSquirtleText::
	text "So! You want the"
	line "water #MON,"
	cont "SQUIRTLE?"
	done

OaksLabBulbasaurText::
	text "So! You want the"
	line "plant #MON,"
	cont "BULBASAUR?"
	done

OaksLabMonEnergeticText::
	text "This #MON is"
	line "really energetic!"
	done

OaksLabReceivedMonText::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

OaksLabLastMonText::
	text "That's PROF.OAK's"
	line "last #MON!"
	done

OaksLabWhichText::
	text "OAK: Now, <PLAYER>,"
	line "which #MON do"
	cont "you want?"
	done

OaksLabFightText::
	text "OAK: If a wild"
	line "#MON appears,"
	cont "your #MON can"
	cont "fight against it!"
	done

OaksLabRaiseText::
	text "OAK: <PLAYER>,"
	line "raise your young"
	cont "#MON by making"
	cont "it fight!"
	done

OaksLabDeliverParcelText1::
	text "OAK: Oh, <PLAYER>!"

	para "How is my old"
	line "#MON?"

	para "Well, it seems to"
	line "like you a lot."

	para "You must be"
	line "talented as a"
	cont "#MON trainer!"

	para "What? You have"
	line "something for me?"

	para "<PLAYER> delivered"
	line "OAK's PARCEL."
	done

OaksLabDeliverParcelText2::
	text "Ah! This is the"
	line "custom # BALL"
	cont "I ordered!"
	cont "Thank you!"
	done

OaksLabAroundWorldText::
	text "#MON around the"
	line "world wait for"
	cont "you, <PLAYER>!"
	done

OaksLabHesGoneText::
	text "OAK: And… He's"
	line "already gone."

	para "Didn't even get a"
	line "proper goodbye…"

	para "Now, was there"
	line "anything I was"
	cont "forgetting…?"

	para "Oh! of course!"
	line "How could I for-"
	cont "get!?"

	para "I really am start-"
	line "ing to get old…"
	done

OaksLabGivePokeballsText1::
	text "<PLAYER>!"

	para "You can't get"
	line "detailed data on"
	cont "#MON by just"
	cont "seeing them."

	para "You must catch"
	line "them! Use these"
	cont "to capture wild"
	cont "#MON."
	done

OaksLabGivePokeballsText2::
	text "When a wild"
	line "#MON appears,"
	cont "it's fair game."

	para "Just throw a #"
	line "BALL at it and try"
	cont "to catch it!"

	para "This won't always"
	line "work, though."

	para "A healthy #MON"
	line "could escape. You"
	cont "have to be lucky!"

	para "Now if you'll ex-"
	line "scuse me, I have"
	cont "to make a phone-"
	cont "call to <RIVAL>."
	done

OaksLabPleaseVisitText::
	text "OAK: Come see me"
	line "sometimes."

	para "I want to know how"
	line "your #DEX is"
	cont "coming along."
	done

OaksLabPokedexText::
	text "It looks like a"
	line "digial encyclo-"
	cont "pedia."

	para "However, the pages"
	line "seem to be blank."
	done

OaksAssistant1Text::
	text "PROF.OAK is the"
	line "authority on"
	cont "#MON!"

	para "Many #MON"
	line "trainers hold him"
	cont "in high regard!"
	done

OaksLabRivalWaitingText::
	text "<RIVAL>: Gramps!"
	line "I'm fed up with"
	cont "waiting!"
	done

OaksLabChooseMonText::
	text "OAK: <RIVAL>?"
	line "Let me think…"

	para "Oh, that's right,"
	line "I told you to"
	cont "come! Just wait!"

	para "Here, <PLAYER>!"

	para "There are 3"
	line "#MON here!"

	para "Haha!"

	para "They are inside"
	line "the # BALLs."

	para "When I was young,"
	line "I was a serious"
	cont "#MON trainer!"

	para "In my old age, I"
	line "have only 3 left,"
	cont "but you can have"
	cont "one! Choose!"
	done

OaksLabRivalInterjectionText::
	text "<RIVAL>: Hey!"
	line "Gramps! What"
	cont "about me?"
	done

OaksLabBePatientText::
	text "OAK: Be patient!"
	line "<RIVAL>, you can"
	cont "have one too!"
	done

OaksLabLeavingText::
	text "OAK: Hey! Don't go"
	line "away yet!"
	done

OaksLabRivalPickingMonText::
	text "<RIVAL>: I'll take"
	line "this one, then!"
	done

OaksLabRivalReceivedMonText::
	text "<RIVAL> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

OaksLabRivalChallengeText::
	text "<RIVAL>: Wait"
	line "<PLAYER>!"
	cont "Let's check out"
	cont "our #MON!"

	para "Come on, I'll take"
	line "you on!"
	done

OaksLabRivalLoseText::
	text "WHAT?"
	line "Unbelievable!"
	cont "I picked the"
	cont "wrong #MON!"
	done

OaksLabRivalWinText::
	text "<RIVAL>: Yeah! Am"
	line "I great or what?"
	done

OaksLabRivalToughenUpText::
	text "<RIVAL>: Okay!"
	line "I'll make my"
	cont "#MON fight to"
	cont "toughen it up!"

	para "<PLAYER>! Gramps!"
	line "Smell you later!"
	done

OaksLabGrampsText::
	text "<RIVAL>: Gramps!"
	done

OaksLabCallText::
	text "<RIVAL>: What did"
	line "you call me for?"
	done

OaksLabRequestText::
	text "OAK: Oh right! I"
	line "have a request"
	cont "of you two."
	done

OaksLabIntroducePokedexText::
	text "On the desk there"
	line "is my invention,"
	cont "#DEX!"

	para "It automatically"
	line "records data on"
	cont "#MON you've"
	cont "seen or caught!"

	para "It's a hi-tech"
	line "encyclopedia!"
	done

OaksLabGetDexText::
	text "OAK: <PLAYER> and"
	line "<RIVAL>! Take"
	cont "these with you!"

	para "<PLAYER> got"
	line "#DEX from OAK!"
	done

OaksLabImTooOldText::
	text "To make a complete"
	line "guide on all the"
	cont "#MON in the"
	cont "world…"

	para "That was my dream!"

	para "But, I'm too old!"
	line "I can't do it!"

	para "So, I want you two"
	line "to fulfill my"
	cont "dream for me!"

	para "Get moving, you"
	line "two!"

	para "This is a great"
	line "undertaking in"
	cont "#MON history!"
	done

OaksLabBlueLeaveItToMeText::
	text "<RIVAL>: Alright"
	line "Gramps! Leave it"
	cont "all to me!"

	para "<PLAYER>, I hate to"
	line "say it, but I"
	cont "don't need you!"

	para "I know! I'll"
	line "borrow a TOWN MAP"
	cont "from my sis!"

	para "I'll tell her not"
	line "to lend you one,"
	cont "<PLAYER>! Hahaha!"
	done

OaksAssistant3Text::
	text "I study #MON as"
	line "PROF.OAK's AIDE."
	done

OaksLabPoster1Text:
	text "Press START to"
	line "open the MENU."
	done

OaksLabPoster2Text:
	text "The SAVE option is"
	line "on the MENU."

	para "Use it in a timely"
	line "manner."
	done

OaksLabTrashcanText:
	text "There's nothing in"
	line "here…"
	done

OaksLabPCText:
	text "There's an e-mail"
	line "message on the PC."

	para "…"

	para "PROF.OAK, how is"
	line "your research"
	cont "coming along?"

	para "I'm still plugging"
	line "away."

	para "I heard rumors"
	line "that <PLAY_G> is"

	para "getting quite a"
	line "reputation."

	para "I'm delighted to"
	line "hear that."

	para "ELM in NEW BARK"
	line "TOWN 8-)"

OaksLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, NEW_BARK_TOWN, 3
	warp_event  5, 11, NEW_BARK_TOWN, 3

	def_coord_events
	coord_event 4,  6, SCENE_OAKSLAB_GETTING_STARTER, AttempttoLeaveFar
	coord_event 5,  6, SCENE_OAKSLAB_GETTING_STARTER, AttempttoLeave

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  7,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  8,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  9,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  0,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  1,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  2,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  3,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  6,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  7,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  8,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  9,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  4,  0, BGEVENT_READ, OaksLabPoster1
	bg_event  5,  0, BGEVENT_READ, OaksLabPoster2
	bg_event  9,  3, BGEVENT_READ, OaksLabTrashcan
	bg_event  0,  1, BGEVENT_READ, OaksLabPC

	def_object_events
	object_event  5,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Oak, EVENT_OAKSLAB_OAK
	object_event  4,  3, SPRITE_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Blue, EVENT_RIVAL_OAKSLAB
	object_event  1,  9, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistant1Script, -1
	object_event  8, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistant3Script, -1
	object_event  2, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistant3Script, -1
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharmanderPokeBallScript, EVENT_CHARMANDER_POKEBALL_IN_OAKS_LAB
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SquirtlePokeBallScript, EVENT_SQUIRTLE_POKEBALL_IN_OAKS_LAB
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BulbasaurPokeBallScript, EVENT_BULBASAUR_POKEBALL_IN_OAKS_LAB
	object_event  2,  1, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLabPokedexScript, EVENT_GOT_POKEDEX_FROM_OAK
	object_event  3,  1, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLabPokedexScript, EVENT_GOT_POKEDEX_FROM_OAK
