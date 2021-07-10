	object_const_def
	const OAKSLAB_OAK
	const OAKSLAB_BLUE
	const OAKSLAB_SCIENTIST1
	const OAKSLAB_SCIENTIST2
	const OAKSLAB_SCIENTIST3

OaksLab_MapScripts:
	def_scene_scripts
	scene_script .ByeBlue
	scene_script .nothing
	scene_script .ByeOak
	scene_script .GetStarter

	def_callbacks

.nothing:
	end

.ByeBlue: ; unreferenced
	disappear OAKSLAB_BLUE
	end

.ByeOak: ; unreferenced
	disappear OAKSLAB_OAK
	end

.GetStarter: ; unreferenced
	moveobject OAKSLAB_OAK, 5, 10
	appear OAKSLAB_OAK
	applymovement OAKSLAB_OAK, OaksLabOakWalksUp
	applymovement PLAYER, OaksLabWalkuptoOak
	setscene SCENE_OAKSLAB_BLUE_PRESENT
	end

Oak:
	faceplayer
	end

Blue:
	faceplayer
	checkevent EVENT_OAK_ABSENCE
	iftrue .checkstarter
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
	opentext
	writetext OaksLabLeavingText
	waitbutton
	closetext
	applymovement PLAYER, OaksLabBlueWalksUp1
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
	prompt

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
	line "OAK's PARCEL.@"
	text_end

OaksLabDeliverParcelText2::
	text_start
	para "Ah! This is the"
	line "custom # BALL"
	cont "I ordered!"
	cont "Thank you!"
	done

OaksLabAroundWorldText::
	text "#MON around the"
	line "world wait for"
	cont "you, <PLAYER>!"
	done

OaksLabGivePokeballsText1::
	text "OAK: You can't get"
	line "detailed data on"
	cont "#MON by just"
	cont "seeing them."

	para "You must catch"
	line "them! Use these"
	cont "to capture wild"
	cont "#MON."

	para "<PLAYER> got 5"
	line "# BALLs!@"
	text_end

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

	line "However, the pages"
	cont "seem to be blank."
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
	line "Let me think..."

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
	prompt

OaksLabRivalWinText::
	text "<RIVAL>: Yeah! Am"
	line "I great or what?"
	prompt

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
	line "#DEX from OAK!@"
	text_end

OaksLabImTooOldText::
	text "To make a complete"
	line "guide on all the"
	cont "#MON in the"
	cont "world..."

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
	coord_event 4,  6, SCENE_OAKSLAB_BLUE_PRESENT, AttempttoLeaveFar
	coord_event 5,  6, SCENE_OAKSLAB_BLUE_PRESENT, AttempttoLeave

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
	object_event  5,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Oak, -1
	object_event  4,  3, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Blue, -1
	object_event  1,  9, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistant1Script, -1
	object_event  8, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistant3Script, -1
	object_event  2, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistant3Script, -1
