	object_const_def
	const VIRIDIANCITY_FISHER
	const VIRIDIANCITY_YOUNGSTER1
	const VIRIDIANCITY_YOUNGSTER2
	const VIRIDIANCITY_TEACHER
	const VIRIDIANCITY_KURT_ASLEEP
	const VIRIDIANCITY_KURT
	const VIRIDIANCITY_GRAMPS

ViridianCity_MapScripts:
	def_scene_scripts
	scene_script .DummyScript

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_VIRIDIAN
	endcallback

.DummyScript
	end

ViridianCityHiddenPotion:
	hiddenitem POTION, EVENT_VIRIDIAN_CITY_HIDDEN_POTION

ViridianCityTM42Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM42_DREAM_EATER
	iftrue .skip
	writetext ViridianCityDreamEaterText
	waitbutton
	verbosegiveitem TM_DREAM_EATER
	setevent EVENT_GOT_TM42_DREAM_EATER
.skip
	writetext ViridianCityTM42ExplanationText
	waitbutton
	closetext
	end

ViridianCityBallsScript:
	jumptextfaceplayer ViridianCityBallsText

ViridianCityBugsScript:
	faceplayer
	opentext
	writetext ViridianCityCaterpillarText
	yesorno
	iffalse .Okay
	writetext ViridianCityPoisonStingText
	waitbutton
	closetext

.Okay
	writetext ViridianCityOkText
	waitbutton
	closetext

ViridianCityTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKEDEX_FROM_OAK
	iffalse .NoCovfefe
	writetext ViridianCityForestText
	waitbutton
	closetext

.NoCovfefe
	writetext ViridianCityNoCoffeeText
	waitbutton
	closetext

NoCoffeeScript:
	checkevent EVENT_GOT_POKEDEX_FROM_OAK
	iftrue .skip
	opentext 
	writetext ViridianCityPrivatePropertyText
	waitbutton
	closetext
	applymovement PLAYER, .WalkDown
.skip
	end

.WalkDown
	step DOWN
	step_end

LeaveGymScript:
	opentext 
	writetext ViridianCityLockedDoorsText
	waitbutton
	closetext
	applymovement PLAYER, .WalkDown
.skip
	end

.WalkDown
	step DOWN
	step_end

ViridianCityLeaderScript:
	jumptextfaceplayer ViridianCityWhoLeaderText

ViridianCityNoCovfefeScript:
	jumptext ViridianCityPrivatePropertyText

ViridianCityCatchTutorialScript:
	jumptextfaceplayer ViridianCityOldManCoffeeText

ViridianCityTrainerTips1:
	jumptext ViridianCityTrainerTips1Text

ViridianCityTrainerTips2:
	jumptext ViridianCityTrainerTips2Text

ViridianCityGymSignScript::
	jumptext ViridianCityGymSign

ViridianCitySign::
	jumptext ViridianCitySignText

ViridianCityPokecenterSign:
	jumpstd PokecenterSignScript

ViridianCityMartSign:
	jumpstd MartSignScript

ViridianCityBallsText::
	text "Those # BALLs"
	line "at your waist!"
	cont "You have #MON!"

	para "It's great that"
	line "you can carry and"
	cont "use #MON any"
	cont "time, anywhere!"
	done

ViridianCityWhoLeaderText::
	text "This #MON GYM"
	line "is always closed."

	para "I wonder who the"
	line "LEADER is?"
	done

ViridianCityReturnedText::
	text "VIRIDIAN GYM's"
	line "LEADER returned!"
	done

ViridianCityCaterpillarText::
	text "You want to know"
	line "about the 2 kinds"
	cont "of caterpillar"
	cont "#MON?"
	done

ViridianCityOkText::
	text "Oh, OK then!"
	done

ViridianCityPoisonStingText::
	text "CATERPIE has no"
	line "poison, but"
	cont "WEEDLE does."

	para "Watch out for its"
	line "POISON STING!"
	done

ViridianCityNoCoffeeText::
	text "Oh Grandpa! Don't"
	line "be so mean!"
	cont "He hasn't had his"
	cont "coffee yet."
	done

ViridianCityForestText::
	text "When I go shop in"
	line "PEWTER CITY, I"
	cont "have to take the"
	cont "winding trail in"
	cont "VIRIDIAN FOREST."
	done

ViridianCityPrivatePropertyText::
	text "You can't go"
	line "through here!"

	para "This is private"
	line "property!"
	done

ViridianCityDreamEaterText::
	text "Yawn!"
	line "I must have dozed"
	cont "off in the sun."

	para "I had this dream"
	line "about a DROWZEE"
	cont "eating my dream."
	cont "What's this?"
	cont "Where did this TM"
	cont "come from?"

	para "This is spooky!"
	line "Here, you can"
	cont "have this TM."
	done

ViridianCityTM42ExplanationText::
	text "TM42 contains"
	line "DREAM EATER…"
	cont "…Snore…"
	done

ViridianCityOldManCoffeeText::
	text "Ahh, I've had my"
	line "coffee now and I"
	cont "feel great!"

	para "Sure you can go"
	line "through!"

	para "Are you in a"
	line "hurry?"
	done

ViridianCityOldManDexText::
	text "I see you're using"
	line "a #DEX."

	para "When you catch a"
	line "#MON, #DEX"
	cont "is automatically"
	cont "updated."

	para "What? Don't you"
	line "know how to catch"
	cont "#MON?"

	para "I'll show you"
	line "how to then."
	done

ViridianCityTimeisMoneyText::
	text "Time is money…"
	line "Go along then."
	done

ViridianCityWeakenText::
	text "First, you need"
	line "to weaken the"
	cont "target #MON."
	done

ViridianCitySignText::
	text "VIRIDIAN CITY "
	line "The Eternally"
	cont "Green Paradise"
	done

ViridianCityTrainerTips1Text::
	text "TRAINER TIPS"

	para "Catch #MON"
	line "and expand your"
	cont "collection!"

	para "The more you have,"
	line "the easier it is"
	cont "to fight!"
	done

ViridianCityTrainerTips2Text::
	text "TRAINER TIPS"

	para "The battle moves"
	line "of #MON are"
	cont "limited by their"
	cont "POWER POINTs, PP."

	para "To replenish PP,"
	line "rest your tired"
	cont "#MON at a"
	cont "#MON CENTER!"
	done

ViridianCityGymSign::
	text "VIRIDIAN CITY"
	line "#MON GYM"
	cont "LEADER: …"

	para "The rest of the"
	line "text is illegible…"
	done

ViridianCityLockedDoorsText::
	text "The GYM's doors"
	line "are locked…"
	done


ViridianCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 25, VIRIDIAN_POKECENTER, 1
	warp_event 29, 19, VIRIDIAN_POKEMART, 1

	def_coord_events
	coord_event 19,  9, SCENE_DEFAULT, NoCoffeeScript
	coord_event 32,  8, SCENE_DEFAULT, LeaveGymScript

	def_bg_events
	bg_event 19,  1, BGEVENT_READ, ViridianCityTrainerTips1
	bg_event 27,  7, BGEVENT_READ, ViridianCityGymSignScript
	bg_event 17, 17, BGEVENT_READ, ViridianCitySign
	bg_event 21, 29, BGEVENT_READ, ViridianCityTrainerTips2
	bg_event 24, 25, BGEVENT_READ, ViridianCityPokecenterSign
	bg_event 30, 19, BGEVENT_READ, ViridianCityMartSign
	bg_event 13,  4, BGEVENT_ITEM, ViridianCityHiddenPotion

	def_object_events
	object_event  6,  23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCityTM42Script, -1
	object_event 13,  20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCityBallsScript, -1
	object_event 30,  25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCityBugsScript, -1
	object_event 17,   9, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCityTeacherScript, -1
	object_event 18,   9, SPRITE_KURT_ASLEEP, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCityNoCovfefeScript, EVENT_GOT_POKEDEX_FROM_OAK
	object_event 17,   5, SPRITE_KURT, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCityCatchTutorialScript, EVENT_VIRIDIAN_CITY_GAMBLER
	object_event 31,   8, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCityLeaderScript, -1
