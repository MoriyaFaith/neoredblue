;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_BlueBattle:
	channel_count 4
	channel 1, Music_BlueBattle_Ch1
	channel 2, Music_BlueBattle_Ch2
	channel 3, Music_BlueBattle_Ch3
	channel 4, Music_BlueBattle_Ch4

Music_BlueBattle_Ch1:
	volume 7, 7
	duty_cycle 1
	note_type 12, 10, 7
	tempo 102
;Bar 1
	octave 5
	volume_envelope 13, 7
	note C_, 1
	octave 4
	note B_, 1
	note A#, 1
	note A_, 1
	octave 5
	note C_, 1
	octave 4
	note G_, 1
	note F#, 1
	note F_, 1
	octave 5
	note C_, 1
	octave 4
	note D#, 1
	note D_, 1
	note C#, 1
	octave 5
	note C_, 1
	octave 3
	note B_, 1
	note A#, 1
	note A_, 1
;Bar 2
	octave 5
	note C_, 1
	octave 3
	note G_, 1
	note F#, 1
	note F_, 1
	octave 5
	note C_, 1
	octave 3
	note D#, 1
	note D_, 1
	note C#, 1
	octave 5
	note C_, 1
	octave 2
	note B_, 1
	note A#, 1
	note A_, 1
	octave 5
	note C_, 1
	octave 2
	note G_, 1
	note F#, 1
	note F_, 1
;Bar 3
	duty_cycle 3
	octave 3
	volume_envelope 10, 7
	note E_, 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
;Bar 4
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	note F#, 8
;Bar 5
	note E_, 2 ; WARNING: Auto-Sync says: Rounded up!
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
;Bar 6
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	note F#, 8
;Bar 7
	octave 4
	note E_, 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note E_, 2
;Bar 8
	rest 2
	note E_, 2
	rest 2
	note E_, 2
	note F#, 8
;Bar 9
	note E_, 2
	note E_, 2
	rest 2
	note E_, 2
	rest 2
	note D_, 2
	note E_, 2
	rest 2
;Bar 10
	duty_cycle 1
	octave 2
	volume_envelope 8, -7
	note D_, 8
	note D#, 8
	volume_envelope 10, 7
.loop:
	duty_cycle 1
	octave 2
	rest 4
;Bar 11
	note E_, 4
	rest 4
	note D#, 4
;Bar 12
	rest 4
	note D_, 4
	rest 4
	octave 2
	note B_, 4
;Bar 13
	note A#, 4
	note B_, 12
;Bar 14
	octave 3
	volume_envelope 12, 7
	note B_, 2
	note A#, 1
	note B_, 1
	octave 4
	note D_, 1
	octave 3
	note B_, 1
	rest 1
	note A#, 1
	note B_, 1
	octave 4
	note D_, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	;note E_, 0 | WARNING: Rounded down to 0
	note E_, 1
	note D_, 1
;Bar 15
	;note E_, 0 | WARNING: Rounded down to 0
	octave 5
	volume_envelope 10, 7
	note E_, 8
	note D#, 8
;Bar 16
	note D_, 8
	octave 4
	note B_, 8
;Bar 17
	note A#, 4
	note B_, 12
;Bar 18
	octave 3
	note D#, 2
	rest 2
	note E_, 12
;Bar 19
	octave 2
	note B_, 8
	octave 3
	note D_, 8
;Bar 20
	note F#, 8
	note D_, 8
;Bar 21
	volume_envelope 12, 7
	note E_, 4
	note D_, 4
	note E_, 4
	note F#, 4
;Bar 22
	note E_, 4
	note D_, 4
	note E_, 2
	octave 2
	note B_, 6
;Bar 23
	octave 3
	note E_, 4
	note D_, 4
	note E_, 4
	note F#, 4
;Bar 24
	note E_, 4
	note D_, 4
	note E_, 2
	octave 2
	note B_, 6
;Bar 25
	duty_cycle 0
	note B_, 4
	octave 3
	note E_, 2
	note G#, 16
	rest 10
;Bar 27
	volume_envelope 10, 7
	note E_, 4
	note G#, 2
	note B_, 16
	rest 10
;Bar 29
	volume_envelope 12, 7
	note B_, 2
	octave 4
	note D_, 2
	note D#, 2
	note E_, 4
	octave 3
	note B_, 2
	octave 4
	note D_, 4
;Bar 30
	note D#, 4
	note E_, 2
	rest 4
	note E_, 6
;Bar 31
	note E_, 2
	note G_, 2
	note G#, 2
	note A_, 4
	note E_, 2
	note G_, 4
;Bar 32
	note G#, 4
	note A_, 2
	rest 4
	note A_, 6
;Bar 33
	note A_, 2
	note G#, 2
	note A_, 2
	note B_, 16
	note B_, 2
;Bar 34
	octave 5
	note D_, 4
	octave 4
	note B_, 2
	note A_, 2
;Bar 35
	note B_, 2
	note A_, 14
;Bar 36
	note G_, 4
	note E_, 12
	sound_loop 0, .loop
	sound_ret

; ============================================================================================================

Music_BlueBattle_Ch2:
	duty_cycle 1
	note_type 12, 10, 7
;Bar 1
	octave 3
	volume_envelope 8, 7
	note E_, 4
	note E_, 4
	note D#, 4
	note D#, 4
;Bar 2
	note D_, 4
	note D_, 4
	note C#, 4
	note C#, 4
;Bar 3
	octave 2
	note B_, 2
	note B_, 2
	rest 2
	note B_, 2
	rest 2
	note B_, 2
	rest 2
	note B_, 2
;Bar 4
	rest 2
	note B_, 2
	rest 2
	note B_, 2
	octave 3
	note C#, 8
;Bar 5
	octave 2
	note B_, 2
	note B_, 2
	rest 2
	note B_, 2
	rest 2
	note B_, 2
	rest 2
	note B_, 2
;Bar 6
	rest 2
	note B_, 2
	rest 2
	note B_, 2
	octave 3
	note C#, 8
;Bar 7
	octave 3
	duty_cycle 0
	volume_envelope 7, 7
	note E_, 1
	note G#, 1
	note B_, 1
	octave 4
	note E_, 1
	octave 3
	note B_, 1
	note G#, 1
	note E_, 1
	note G#, 1
	note B_, 1
	octave 4
	note E_, 1
	octave 3
	note B_, 1
	note G#, 1 ; WARNING: Auto-Sync says: Rounded up!
	note E_, 1
	note G#, 1
	note B_, 1
	octave 4
	note E_, 1
;Bar 8
	octave 3
	note B_, 1
	note G#, 1
	note E_, 1
	note G#, 1
	note B_, 1
	octave 4
	note E_, 1
	octave 3
	note B_, 1
	note G#, 1
	note E_, 1
	note G#, 1
	note B_, 1
	octave 4
	note E_, 1
	octave 3
	note B_, 1
	note G#, 1
	note E_, 1
	note G#, 1
;Bar 9
	note B_, 1
	octave 4
	note E_, 1
	octave 3
	note B_, 1
	note G#, 1
	note E_, 1
	note G#, 1
	note B_, 1
	octave 4
	note E_, 1
	octave 3
	note B_, 1
	note G#, 1
	note E_, 1
	note G#, 1
	note B_, 1
	octave 4
	note E_, 1
	octave 3
	note B_, 1
	note G#, 1
;Bar 10
	duty_cycle 3
	octave 3
	volume_envelope 8, -7
	note D_, 8
	note D#, 8
	volume_envelope 10, 7
;Bar 11
.loop:
	octave 4
	note E_, 8
	note D#, 8
;Bar 12
	note D_, 8
	octave 3
	note B_, 8
;Bar 13
	note A#, 4
	note B_, 12
;Bar 14
	octave 4
	volume_envelope 11, 7
	note F#, 2
	note F_, 1
	note F#, 1
	note A_, 1
	note F#, 1
	rest 1
	note F_, 1
	note F#, 1
	note A_, 1
	note B_, 1
	octave 5
	note C_, 1
	octave 4
	note B_, 1
	note A_, 1
	;note B_, 0 | WARNING: Rounded down to 0
	note B_, 1
	note A_, 1
;Bar 15
	;note B_, 0 | WARNING: Rounded down to 0
	octave 2
	volume_envelope 10, 7
	note B_, 8
	note A#, 8
;Bar 16
	note A_, 8
	note F#, 8
;Bar 17
	note F_, 4
	note F#, 12
;Bar 18
	octave 4
	note F#, 2
	rest 2
	note G#, 12
;Bar 19
	octave 3
	note E_, 8
	note F#, 8
;Bar 20
	note A_, 8
	note F#, 8
;Bar 21
	rest 4
	octave 1
	note B_, 4
	rest 4
	octave 2
	note C#, 4
;Bar 22
	rest 4
	octave 1
	note B_, 4
	note B_, 2
	note A_, 6
;Bar 23
	octave 2
	note E_, 16
;Bar 24
	note F#, 16
;Bar 25
	octave 4
	note E_, 4
	note F#, 2
	note E_, 16
	rest 10
;Bar 27
	volume_envelope 12, 7
	note E_, 4
	note F#, 2
	note G#, 16
	rest 10
;Bar 29
	volume_envelope 12, 7
	octave 3
	note F#, 2
	note A_, 2
	note A#, 2
	note B_, 4
	note F#, 2
	note A_, 4
;Bar 30
	note A#, 4
	note B_, 2
	rest 4
	note B_, 6
;Bar 31
	note B_, 2
	octave 4
	note D_, 2
	note D#, 2
	note E_, 4
	octave 3
	note B_, 2
	octave 4
	note D_, 4
;Bar 32
	note D#, 4
	note E_, 2
	rest 4
	note E_, 6
;Bar 33
	octave 3
	note B_, 2
	octave 4
	note D_, 2
	note D#, 2
	note E_, 16
	note E_, 10
;Bar 35
	note D_, 16
;Bar 36
	note B_, 1
	note A_, 1
	note G_, 1
	note F#, 1
	note E_, 12
	sound_loop 0, .loop
	sound_ret

; ============================================================================================================

Music_BlueBattle_Ch3:
	note_type 12, 1, -1
;Bar 1
	octave 2
	note E_, 4
	octave 3
	note E_, 4
	octave 2
	note D#, 4
	octave 3
	note D#, 4
;Bar 2
	octave 2
	note D_, 4
	octave 3
	note D_, 4
	octave 2
	note C#, 4
	octave 3
	note C#, 4
;Bar 3
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note E_, 2
;Bar 4
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note G#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
;Bar 5
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note E_, 2
;Bar 6
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note G#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
;Bar 7
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note E_, 2
;Bar 8
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note G#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
;Bar 9
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note D_, 2
	note E_, 2
	rest 2
;Bar 10
	octave 1
	note B_, 8
	octave 2
	note C_, 8
;Bar 11
.loop:
	note E_, 4
	note B_, 4
	note D#, 4
	note A#, 4
;Bar 12
	note D_, 4
	note A_, 4
	octave 1
	note B_, 4
	octave 2
	note F#, 4
;Bar 13
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
;Bar 14
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
;Bar 15
	note E_, 4
	note B_, 4
	note D#, 4
	note A#, 4
;Bar 16
	note D_, 4
	note A_, 4
	octave 1
	note B_, 4
	octave 2
	note F#, 4
;Bar 17
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
;Bar 18
	note D#, 2
	rest 2
	note E_, 12
;Bar 19
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
;Bar 20
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
;Bar 21
	rest 4
	note D_, 4
	rest 4
	note F#, 4
;Bar 22
	rest 4
	note D_, 4
	note E_, 2
	octave 1
	note B_, 6
;Bar 23
	rest 4
	octave 2
	note D_, 4
	rest 4
	note F#, 4
;Bar 24
	rest 4
	note D_, 4
	note E_, 2
	octave 1
	note B_, 6
;Bar 25
	octave 2
	note E_, 16
;Bar 26
	note F#, 16
;Bar 27
	note G#, 16
;Bar 28
	note A_, 16
;Bar 29
	octave 1
	note B_, 2
	octave 2
	note D_, 2
	note D#, 2
	note E_, 2
	note E_, 4
	note A_, 4
;Bar 30
	note D#, 4
	note E_, 2
	rest 4
	note E_, 6
;Bar 31
	note E_, 2
	note G_, 2
	note G#, 2
	note A_, 2
	note A_, 4
	octave 3
	note D_, 4
;Bar 32
	octave 2
	note G#, 4
	note A_, 2
	rest 4
	note A_, 6
;Bar 33
	note A_, 4
	note B_, 4
	note F#, 2
	note B_, 6
;Bar 34
	note F#, 2
	note B_, 4
	note F#, 2
	note B_, 4
	note F#, 2
	note B_, 2
;Bar 35
	note A_, 4
	note E_, 2
	note A_, 4
	note E_, 2
	note A_, 4
;Bar 36
	note G_, 4
	note E_, 12
	sound_loop 0, .loop
	sound_ret

; ============================================================================================================

Music_BlueBattle_Ch4:
	toggle_noise 3
	drum_speed 12
;Bar 1
	rest 16
	rest 8
;Bar 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
;Bar 3
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 4
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 5
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 6
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 7
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 8
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 9
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 10
	drum_note 1, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
;Bar 11
.loop:
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 12
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 13
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 14
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 15
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 16
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 17
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 18
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 19
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 20
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 21
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 22
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 23
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 24
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 25
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 26
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 27
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 28
	drum_note 1, 4
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
;Bar 29
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 30
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 31
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 32
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 33
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 34
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 35
	drum_note 1, 4
	drum_note 3, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 4
;Bar 36
	drum_note 1, 8
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	sound_loop 0, .loop
	sound_ret

; ============================================================================================================

