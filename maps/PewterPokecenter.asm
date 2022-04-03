	object_const_def
	const PEWTERPOKECENTER_NURSE


PewterPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

PewterPokecenterNurseScript:
	jumpstd PokecenterNurseScript

PewterPokecenter1:
	jumptextfaceplayer PewterPokecenterText1

PewterPokecenterGuy:
	jumptext PewterCityPokecenterGuyText

PewterPokecenterJigglypuff:
	opentext
	writetext PewterPokecenterJigglypuffText
	playmusic MUSIC_JIGGLYPUFF
	wait 325
	special RestartMapMusic
	waitbutton
	closetext
	end

PewterCityPokecenterGuyText::
	text "Yawn!"

	para "When JIGGLYPUFF"
	line "sings, #MON"
	cont "get drowsy..."

	para "...Me too..."
	line "Snore..."
	done

PewterPokecenterText1::
	text "What!?"

	para "TEAM ROCKET is"
	line "at MT.MOON? Huh?"
	cont "I'm on the phone!"

	para "Scram!"
	done

PewterPokecenterJigglypuffText::
	text "JIGGLYPUFF: Puu"
	line "pupuu!"
	done

PewterPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, PEWTER_CITY, 1
	warp_event  4,  7, PEWTER_CITY, 1
	warp_event 11,  0, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 0,  4, BGEVENT_READ, PewterPokecenterGuy

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterPokecenterNurseScript, -1
	object_event 11,  7, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterPokecenter1, -1
	object_event  1,  3, SPRITE_JIGGLYPUFF, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PewterPokecenterJigglypuff, -1
