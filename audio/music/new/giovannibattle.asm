;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_GiovanniBattle:
	channel_count 4
	channel 1, Music_GiovanniBattle_Ch1
	channel 2, Music_GiovanniBattle_Ch2
	channel 3, Music_GiovanniBattle_Ch3
	channel 4, Music_GiovanniBattle_Ch4

Music_GiovanniBattle_Ch1:
	volume 7, 7
	duty_cycle 0
	note_type 12, 10, 7
	tempo 100
;Bar 1
	octave 4
	volume_envelope 11, 7
	note E_, 2
	rest 4
	octave 3
	note B_, 6
	octave 4
	note E_, 2
	rest 2
;Bar 2
	octave 3
	note B_, 2
	octave 4
	note G_, 2
	note F#, 2
	note E_, 2
	note A_, 2
	note G_, 2
	note F#, 4
;Bar 3
	octave 3
	note E_, 2
	rest 4
	octave 3
	note E_, 2
	rest 2
	octave 3
	note G_, 2
	note F_, 4
;Bar 4
	note E_, 2
	rest 4
	note E_, 2
	rest 2
	note G_, 2
	note F_, 4
;Bar 5
	note E_, 2
	rest 4
	note E_, 2
	rest 2
	note G_, 2
	note F_, 4
;Bar 6
	note E_, 2
	rest 4
	note E_, 2
	rest 4
	note D#, 4
;Bar 7
	octave 4
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 3
	note G_, 2
	note F_, 4
;Bar 8
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 3
	note G_, 2
	note F_, 4
;Bar 9
	duty_cycle 1
	octave 4
	note G_, 2
	rest 4
	note E_, 6
	note D_, 4
;Bar 10
	note G_, 2
	rest 4
	note A_, 6
	note G_, 4
;Bar 11
.loop:
	duty_cycle 0
	octave 2
	volume_envelope 12, 7
	note E_, 2
	note F#, 2
	note G_, 2
	note B_, 4
	octave 1
	note B_, 2
	octave 2
	note E_, 2
	note F#, 2
;Bar 12
	note G_, 2 ; WARNING: Auto-Sync says: Rounded down!
	note B_, 4
	note A_, 2
	note B_, 2
	octave 3
	note D_, 2
	octave 2
	note G_, 4
;Bar 13
	note E_, 16
;Bar 14
	rest 16
;Bar 15
	octave 3
	note C_, 6
	octave 2
	note B_, 6
	note A_, 6
;Bar 16
	note G_, 6
	note F#, 4
	note E_, 4
;Bar 17
	note D#, 16
;Bar 18
	rest 16
	rest 16
	rest 16
;Bar 21
	duty_cycle 1
	octave 4
	volume_envelope 10, 7
	note G_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	octave 3
	note B_, 2
	note A_, 2
;Bar 22
	note B_, 12
	rest 16
	rest 16
	rest 6
;Bar 25
	octave 4
	note B_, 1
	rest 1
	note B_, 2
	rest 2
	note B_, 1
	rest 1
	note B_, 2
	rest 2
	note F#, 1
	rest 1
;Bar 26
	note F#, 2
	rest 2
	note D#, 1
	rest 1
	note D#, 6
	rest 4
;Bar 27
	volume_envelope 11, 7
	note C_, 6
	octave 3
	note G_, 14
;Bar 28
	note E_, 4
	note G_, 4
	octave 4
	note C_, 4
;Bar 29
	octave 3
	note B_, 6
	note G_, 14
;Bar 30
	note E_, 4
	note G_, 4
	note B_, 4
;Bar 31
	note A_, 6
	note F#, 14
;Bar 32
	note D_, 4
	note E_, 4
	note A_, 4
;Bar 33
	note G_, 6
	note E_, 14
;Bar 34
	note D_, 4
	note E_, 4
	note G_, 4
;Bar 35
	octave 4
	note C_, 6
	octave 3
	note G_, 14
;Bar 36
	note E_, 4
	note B_, 1
	octave 4
	note C_, 1
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
;Bar 37
	note B_, 6
	note G_, 14
;Bar 38
	note D_, 2
	note E_, 2
	note G_, 2
	note A_, 2
	note B_, 2
	octave 4
	note D_, 2
;Bar 39
	octave 3
	note A_, 6
	note F#, 14
;Bar 40
	note D_, 4
	note E_, 4
	note A_, 4
;Bar 41
	note G_, 6
	note E_, 10
;Bar 42
	note F#, 6
	note D#, 10
	sound_loop 0, .loop
	sound_ret

; ============================================================================================================

Music_GiovanniBattle_Ch2:
	duty_cycle 1
	note_type 12, 10, 7
;Bar 1
	octave 3
	volume_envelope 10, 7
	note D_, 1
	note E_, 15
;Bar 2
	note D_, 8
	octave 2
	note A_, 8
;Bar 3
	octave 2
	note B_, 2
	rest 4
	note B_, 2
	rest 2
	octave 3
	note D_, 2
	note C_, 4
;Bar 4
	octave 2
	note B_, 2
	rest 4
	note B_, 2
	rest 2
	octave 3
	note D_, 2
	note C_, 4
;Bar 5
	octave 2
	note B_, 2
	rest 4
	note B_, 2
	rest 2
	octave 3
	note D_, 2
	note C_, 4
;Bar 6
	octave 2
	note B_, 2
	rest 4
	note B_, 2
	rest 4
	note A#, 4
;Bar 7
	octave 3
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note B_, 10
;Bar 8
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	octave 4
	note C_, 10
;Bar 9
	octave 2
	note E_, 2
	rest 4
	note G_, 6
	note A_, 4
;Bar 10
	note B_, 2
	rest 4
	octave 3
	note D_, 6
	octave 2
	note B_, 4
;Bar 11
.loop:
	rest 16
	rest 16
;Bar 13
	octave 4
	note C#, 1
	note E_, 3
	note B_, 4
	octave 5
	note C_, 4
	octave 4
	note A_, 4
;Bar 14
	note B_, 4
	note G_, 4
	note A_, 4
	note F#, 4
;Bar 15
	rest 16
	rest 16
;Bar 17
	volume_envelope 11, 7
	note F#, 4
	note E_, 2
	note D#, 2
	note C#, 2
	octave 3
	note B_, 2
	note A#, 2
	note B_, 10
;Bar 18
	rest 8
;Bar 19
	volume_envelope 10, 7
	note E_, 2
	note F#, 2
	note G_, 2
	note B_, 4
	octave 2
	note B_, 2
	octave 3
	note E_, 2
	note F#, 2
;Bar 20
	note G_, 2
	note B_, 4
	note A_, 2
	note B_, 2
	octave 4
	note D_, 2
	octave 3
	note G_, 4
;Bar 21
	note E_, 16
;Bar 22
	rest 16
;Bar 23
	octave 4
	note C_, 6
	octave 3
	note B_, 6
	note A_, 6
;Bar 24
	note G_, 6
	note A_, 4
	note A#, 4
;Bar 25
	note B_, 2
	octave 4
	volume_envelope 10, 7
	note F#, 1
	rest 1
	note F#, 2
	rest 2
	note F#, 1
	rest 1
	note F#, 2
	rest 2
	note D#, 1
	rest 1
;Bar 26
	note D#, 2
	rest 2
	octave 3
	note B_, 1
	rest 1
	note B_, 6
	rest 4
;Bar 27
	note C_, 6
	octave 2
	note G_, 14
;Bar 28
	note E_, 4
	note G_, 4
	octave 3
	note C_, 4
;Bar 29
	octave 2
	note B_, 6
	note G_, 14
;Bar 30
	note E_, 4
	note G_, 4
	note B_, 4
;Bar 31
	note A_, 6
	note F#, 14
;Bar 32
	note D_, 4
	note E_, 4
	note A_, 4
;Bar 33
	note G_, 6
	note E_, 14
;Bar 34
	note D_, 4
	note E_, 4
	volume_envelope 12, 7
	note G_, 4
;Bar 35
	octave 4
	volume_envelope 11, 7
	note E_, 16
	note E_, 8
;Bar 36
	note F#, 8
;Bar 37
	note G_, 16
;Bar 38
	rest 2
	octave 3
	note B_, 2
	octave 4
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 4
;Bar 39
	note A_, 16
	note A_, 8
;Bar 40
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
;Bar 41
	note E_, 14
	note F#, 1
	note E_, 1
;Bar 42
	note D#, 16
	sound_loop 0, .loop
	sound_ret

; ============================================================================================================

Music_GiovanniBattle_Ch3:
	note_type 12, 1, -1
;Bar 1
	octave 3
	note E_, 2
	rest 4
	octave 2
	note B_, 6
	octave 3
	note E_, 2
	rest 2
;Bar 2
	octave 2
	note B_, 2
	note G_, 2
	note F#, 2
	octave 3
	note E_, 2
	octave 2
	note A_, 2
	note G_, 2
	note F#, 4
;Bar 3
	note E_, 2
	note B_, 2
	note A#, 2
	note D#, 2
	note E_, 2
	note B_, 2
	octave 3
	note D_, 2
	octave 2
	note A#, 2
;Bar 4
	note E_, 2
	note B_, 2
	note A#, 2
	note D#, 2
	note E_, 2
	note B_, 2
	octave 3
	note D_, 2
	octave 2
	note A#, 2
;Bar 5
	note E_, 2
	note B_, 2
	note A#, 2 ; WARNING: Auto-Sync says: Rounded up!
	note D#, 2
	note E_, 2 ; WARNING: Auto-Sync says: Rounded up!
	note B_, 2
	octave 3
	note D_, 2
	octave 2
	note A#, 2
;Bar 6
	note E_, 2
	note B_, 2
	note A#, 2
	note D#, 2
	note E_, 2
	note B_, 2
	octave 3
	note D_, 2
	octave 2
	note A#, 2
;Bar 7
	note E_, 2
	note B_, 2
	note A#, 2
	note D#, 2
	note E_, 2
	note B_, 2
	octave 3
	note D_, 2
	octave 2
	note A#, 2
;Bar 8
	note E_, 2
	note B_, 2
	note A#, 2
	note D#, 2
	note E_, 2
	note B_, 2
	octave 3
	note D_, 2
	octave 2
	note A#, 2
;Bar 9
	octave 3
	note E_, 2
	note E_, 1
	rest 3
	octave 2
	note G_, 6
	note A_, 4
;Bar 10
	note B_, 2
	note B_, 1
	rest 3
	octave 3
	note D_, 6
	octave 2
	note B_, 4
;Bar 11
.loop:
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
;Bar 12
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
;Bar 13
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
;Bar 14
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
;Bar 15
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
;Bar 16
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
;Bar 17
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note B_, 2
	octave 3
	note B_, 2
;Bar 18
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	rest 2
	octave 2
	note B_, 2
	note B_, 2
	octave 3
	note B_, 2
	rest 2
	octave 2
	note B_, 2
;Bar 19
	note E_, 2
	octave 3
	note E_, 2 ; WARNING: Auto-Sync says: Rounded up!
	octave 2
	note E_, 2
	octave 3
	note E_, 2 ; WARNING: Auto-Sync says: Rounded up!
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
;Bar 20
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	octave 2
	note D_, 2
	octave 3
	note D_, 2
;Bar 21
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
;Bar 22
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	octave 2
	note G_, 2
	octave 3
	note G_, 2
;Bar 23
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
;Bar 24
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note A_, 2
	octave 2
	note A#, 2
	octave 3
	note A#, 2
;Bar 25
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note B_, 2
	octave 3
	note B_, 2
;Bar 26
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	rest 2
	octave 2
	note B_, 2
	note B_, 2
	octave 3
	note B_, 2
	rest 2
	octave 2
	note B_, 2
;Bar 27
	note C_, 2
	octave 3
	note C_, 2
	rest 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	rest 2
	octave 2
	note C_, 2
	note G_, 2
;Bar 28
	note C_, 2
	octave 3
	note C_, 2
	rest 2
	octave 2
	note C_, 2
	octave 3
	note C_, 2
	rest 2
	note D_, 2
	rest 2
;Bar 29
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	rest 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	rest 2
	octave 2
	note E_, 2
	octave 3
	note D_, 2
;Bar 30
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	rest 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	rest 2
	note G_, 2
	rest 2
;Bar 31
	octave 2
	note D_, 2
	octave 3
	note D_, 2
	rest 2
	octave 2
	note D_, 2
	octave 3
	note D_, 2
	rest 2
	octave 2
	note D_, 2
	note A_, 2
;Bar 32
	note D_, 2
	octave 3
	note D_, 2
	rest 2
	octave 2
	note D_, 2
	octave 3
	note D_, 2
	rest 2
	octave 2
	note D_, 2
	rest 2
;Bar 33
	note E_, 2
	octave 3
	note E_, 2
	rest 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	rest 2
	octave 2
	note E_, 2
	note B_, 2
;Bar 34
	note E_, 2
	octave 3
	note E_, 2
	rest 2
	octave 2
	note E_, 2
	octave 3
	note E_, 2
	rest 2
	note G_, 2
	rest 2
;Bar 35
	note C_, 16
	note C_, 8
;Bar 36
	note D_, 8
;Bar 37
	note E_, 16
	note E_, 16
;Bar 39
	note D_, 16
	note D_, 8
;Bar 40
	octave 2
	note B_, 8
;Bar 41
	octave 3
	note E_, 2
	note E_, 1
	rest 3
	octave 2
	note G_, 6
	note A_, 4
;Bar 42
	note B_, 2
	note B_, 1
	rest 3
	octave 3
	note D#, 6
	octave 2
	note B_, 4
	sound_loop 0, .loop
	sound_ret

; ============================================================================================================

Music_GiovanniBattle_Ch4:
	toggle_noise 3
	drum_speed 12
;Bar 1
	drum_note 12, 16
;Bar 2
	drum_note 12, 8
	drum_note 12, 8
;Bar 3
	drum_note 12, 4
	drum_note 3, 8
	drum_note 3, 8
;Bar 4
	drum_note 3, 8
	drum_note 3, 2
	drum_note 3, 6
;Bar 5
	drum_note 3, 8
	drum_note 3, 8
;Bar 6
	drum_note 3, 2
	drum_note 3, 6
	drum_note 3, 8
;Bar 7
	drum_note 3, 8
	drum_note 3, 8
;Bar 8
	drum_note 3, 8
	drum_note 3, 2
	drum_note 3, 2
;Bar 9
	drum_note 3, 6
	drum_note 3, 6
	drum_note 3, 4
;Bar 10
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 4
;Bar 11
.loop:
	drum_note 12, 4
	drum_note 3, 8
	drum_note 3, 8
;Bar 12
	drum_note 3, 8
	drum_note 3, 8
;Bar 13
	drum_note 3, 8
	drum_note 3, 8
;Bar 14
	drum_note 3, 8
	drum_note 3, 8
;Bar 15
	drum_note 3, 8
	drum_note 3, 8
;Bar 16
	drum_note 3, 8
	drum_note 3, 8
;Bar 17
	drum_note 3, 8
	drum_note 3, 4
;Bar 18
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 4
;Bar 19
	drum_note 12, 4
	drum_note 3, 8
	drum_note 3, 8
;Bar 20
	drum_note 3, 8
	drum_note 3, 8
;Bar 21
	drum_note 3, 8
	drum_note 3, 8
;Bar 22
	drum_note 3, 8
	drum_note 3, 8
;Bar 23
	drum_note 3, 8
	drum_note 3, 8
;Bar 24
	drum_note 3, 8
	drum_note 3, 4
;Bar 25
	drum_note 12, 4
	drum_note 3, 8
	drum_note 3, 4
;Bar 26
	;note A_, 0 | WARNING: Rounded down to 0
	drum_note 3, 2
	drum_note 3, 4
	;note A_, 0 | WARNING: Rounded down to 0
	drum_note 3, 2
	drum_note 3, 4
	;note A_, 0 | WARNING: Rounded down to 0
	drum_note 3, 4
;Bar 27
	drum_note 12, 4
	drum_note 3, 8
	drum_note 3, 8
;Bar 28
	drum_note 3, 6
	drum_note 12, 2
	drum_note 3, 4
;Bar 29
	drum_note 12, 4
	drum_note 3, 8
	drum_note 3, 8
;Bar 30
	drum_note 3, 8
	drum_note 3, 4
;Bar 31
	drum_note 12, 4
	drum_note 3, 8
	drum_note 3, 8
;Bar 32
	drum_note 3, 6
	drum_note 12, 2
	drum_note 3, 4
;Bar 33
	drum_note 12, 4
	drum_note 3, 8
	drum_note 3, 4
;Bar 34
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 2
	;note A_, 0 | WARNING: Rounded down to 0
	drum_note 3, 4
	drum_note 3, 4
;Bar 35
	drum_note 12, 4
	rest 16
	rest 4
;Bar 36
	drum_note 12, 8
;Bar 37
	drum_note 12, 4
	rest 16
	rest 4
;Bar 38
	drum_note 12, 8
;Bar 39
	drum_note 12, 4
	rest 16
	rest 4
;Bar 40
	drum_note 12, 8
;Bar 41
	;note A_, 0 | WARNING: Rounded down to 0
	drum_note 3, 6
	drum_note 3, 6
	drum_note 3, 4
;Bar 42
	;note A_, 0 | WARNING: Rounded down to 0
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 3, 4
	drum_note 3, 2
	rest 2
	sound_loop 0, .loop
	sound_ret

; ============================================================================================================

