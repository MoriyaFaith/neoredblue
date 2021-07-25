	object_const_def
	const VIRIDIANFOREST_POKEBALL1
	const VIRIDIANFOREST_POKEBALL2
	const VIRIDIANFOREST_POKEBALL3

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianForestBugCatcherScript:
	jumptextfaceplayer ViridianForestText1

ViridianForestAntidote:
	itemball ANTIDOTE

ViridianForestPokeball:
	itemball POKE_BALL

ViridianForestPotion:
	itemball POTION

ViridianForestHiddenPotion:
	hiddenitem POTION, EVENT_VIRIDIAN_FOREST_HIDDEN_POTION

ViridianForestHiddenAntidote:
	hiddenitem ANTIDOTE, EVENT_VIRIDIAN_FOREST_HIDDEN_ANTIDOTE

TrainerBugCatcherRick:
	trainer BUG_CATCHER, RICK, EVENT_BEAT_BUG_CATCHER_RICK, BugCatcherRickSeenText, BugCatcherRickBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherRickAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherDoug:
	trainer BUG_CATCHER, DOUG, EVENT_BEAT_BUG_CATCHER_DOUG, BugCatcherDougSeenText, BugCatcherDougBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherDougAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherSammy:
	trainer BUG_CATCHER, SAMMY, EVENT_BEAT_BUG_CATCHER_SAMMY, BugCatcherSammySeenText, BugCatcherSammyBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherSammyAfterBattleText
	waitbutton
	closetext
	end

ViridianForestSign1:
	jumptext ViridianForestText9

ViridianForestSign2:
	jumptext ViridianForestText10

ViridianForestSign3:
	jumptext ViridianForestText11

ViridianForestSign4:
	jumptext ViridianForestText12

ViridianForestSign5:
	jumptext ViridianForestText13

ViridianForestSign6:
	jumptext ViridianForestText14

ViridianForestText1::
	text "I came here with"
	line "some friends!"

	para "They're out for"
	line "#MON fights!"
	done

BugCatcherRickSeenText::
	text "Hey! You have"
	line "#MON! Come on!"
	cont "Let's battle'em!"
	done

BugCatcherRickBeatenText::
	text "No!"
	line "CATERPIE can't"
	cont "cut it!"
	prompt

BugCatcherRickAfterBattleText::
	text "Ssh! You'll scare"
	line "the bugs away!"
	done

BugCatcherDougSeenText::
	text "Yo! You can't jam"
	line "out if you're a"
	cont "#MON trainer!"
	done

BugCatcherDougBeatenText::
	text "Huh?"
	line "I ran out of"
	cont "#MON!"
	prompt

BugCatcherDougAfterBattleText::
	text "Darn! I'm going"
	line "to catch some"
	cont "stronger ones!"
	done

BugCatcherSammySeenText::
	text "Hey, wait up!"
	line "What's the hurry?"
	done

BugCatcherSammyBeatenText::
	text "I"
	line "give! You're good"
	cont "at this!"
	prompt

BugCatcherSammyAfterBattleText::
	text "Sometimes, you"
	line "can find stuff on"
	cont "the ground!"

	para "I'm looking for"
	line "the stuff I"
	cont "dropped!"
	done

ViridianForestText8::
	text "I ran out of #"
	line "BALLs to catch"
	cont "#MON with!"

	para "You should carry"
	line "extras!"
	done

ViridianForestText9::
	text "TRAINER TIPS"

	para "If you want to"
	line "avoid battles,"
	cont "stay away from"
	cont "grassy areas!"
	done

ViridianForestText10::
	text "For poison, use"
	line "ANTIDOTE! Get it"
	cont "at #MON MARTs!"
	done

ViridianForestText11::
	text "TRAINER TIPS"

	para "Contact PROF.OAK"
	line "via PC to get"
	cont "your #DEX"
	cont "evaluated!"
	done

ViridianForestText12::
	text "TRAINER TIPS"

	para "No stealing of"
	line "#MON from"
	cont "other trainers!"
	cont "Catch only wild"
	cont "#MON!"
	done

ViridianForestText13::
	text "TRAINER TIPS"

	para "Weaken #MON"
	line "before attempting"
	cont "capture!"

	para "When healthy,"
	line "they may escape!"
	done

ViridianForestText14::
	text "LEAVING"
	line "VIRIDIAN FOREST"
	cont "PEWTER CITY AHEAD"
	done


ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16, 47, VIRIDIAN_FOREST_SOUTH_GATE, 3
	warp_event 17, 47, VIRIDIAN_FOREST_SOUTH_GATE, 3
	warp_event  1,  1, VIRIDIAN_FOREST_NORTH_GATE, 1

	def_coord_events

	def_bg_events
	bg_event  1, 18, BGEVENT_ITEM, ViridianForestHiddenPotion
	bg_event 16, 42, BGEVENT_ITEM, ViridianForestHiddenAntidote
	bg_event 24, 40, BGEVENT_READ, ViridianForestSign1 ; ViridianForestText9
	bg_event 16, 32, BGEVENT_READ, ViridianForestSign2 ; ViridianForestText10
	bg_event 26, 17, BGEVENT_READ, ViridianForestSign3 ; ViridianForestText11
	bg_event  4, 24, BGEVENT_READ, ViridianForestSign4 ; ViridianForestText12
	bg_event 18, 45, BGEVENT_READ, ViridianForestSign5 ; ViridianForestText13
	bg_event  2,  3, BGEVENT_READ, ViridianForestSign6 ; ViridianForestText14

	def_object_events
	object_event 25, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestAntidote, EVENT_VIRIDIAN_FOREST_ANTIDOTE
	object_event 12, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPotion, EVENT_VIRIDIAN_FOREST_POTION
	object_event  1, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ViridianForestPokeball, EVENT_VIRIDIAN_FOREST_POKEBALL
	object_event 30, 33, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherRick, -1
	object_event 30, 19, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherDoug, -1
	object_event  2, 18, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherSammy, -1
	object_event 16, 43, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestBugCatcherScript, -1
