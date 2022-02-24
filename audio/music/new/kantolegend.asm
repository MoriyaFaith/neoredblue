;Pokemon DarkViolet Legendary Theme
;Composed by ChaosRush
;Arranged by MoriyaFaith
;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_DV_KantoLegendary:
	channel_count 4
	channel 1, Music_DV_KantoLegendary_Ch1
	channel 2, Music_DV_KantoLegendary_Ch2
	channel 3, Music_DV_KantoLegendary_Ch3
	channel 4, Music_DV_KantoLegendary_Ch4

Music_DV_KantoLegendary_Ch1:
	volume 7, 7
	duty_cycle 0
	note_type 12, 10, 7
	tempo 142
;Bar 1
	octave 5
	note G#, 1 ; WARNING: Auto-Sync says: Rounded up!
	note F#, 1 ; WARNING: Auto-Sync says: Rounded up!
	note E_, 1 ; WARNING: Auto-Sync says: Rounded up!
	note F#, 1 ; WARNING: Auto-Sync says: Rounded up!
	note E_, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note C#, 1
	note D#, 1
	note C#, 1
	octave 4
	note B_, 1
	tempo 106
;Bar 2
	volume_envelope 10, 2
	duty_cycle 1
	octave 5
	;note C#, 0 | WARNING: Rounded down to 0
	octave 3
	note C#, 2
	rest 6
	note C#, 2
	rest 6
;Bar 3
	note C#, 2
	rest 6
	note C#, 2
	rest 2
	octave 2
	note B_, 2
	rest 2
;Bar 4
	octave 3
	note C#, 2
	rest 6
	note C#, 2
	rest 6
;Bar 5
	note C#, 2
	rest 6
	note C#, 2
	rest 2
	octave 2
	note B_, 2
	rest 2
;Bar 6
	octave 3
	note C#, 2
	rest 6
	note C#, 2
	rest 6
;Bar 7
	note C#, 2
	rest 6
	note C#, 2
	rest 2
	octave 2
	note B_, 2
	rest 2
;Bar 8
	duty_cycle 3
	volume_envelope 10, 7
	octave 4
	note C#, 2
	note D#, 2
	note E_, 2
	octave 3
	note A_, 2
	octave 4
	note E_, 2
	note F#, 2
	note G#, 4
;Bar 9
	note D#, 2
	note E_, 2
	note F#, 2
	octave 3
	note B_, 2
	octave 4
	note D#, 2
	note F#, 2
	note B_, 4
;Bar 10
.loop:
	duty_cycle 0
	octave 2
	note G#, 6
	octave 3
	note C#, 6
	note G#, 4
;Bar 11
	note F#, 4
	note E_, 4
	note D#, 4
	note C#, 2
	note D#, 2
;Bar 12
	note E_, 6
	note F#, 6
	note G#, 2
	rest 2
;Bar 13
	note F#, 6
	octave 2
	note B_, 6 ; WARNING: Auto-Sync says: Rounded up!
	rest 4
;Bar 14
	note G#, 6 ; WARNING: Auto-Sync says: Rounded up!
	octave 3
	note C#, 6 ; WARNING: Auto-Sync says: Rounded up!
	note G#, 4
;Bar 15
	note F#, 4
	note E_, 4
	note D#, 4
	note C#, 2
	note D#, 2
;Bar 16
	volume_envelope 10, -7
	note E_, 8
	note G#, 8
;Bar 17
	note F#, 8
	note B_, 8
	volume_envelope 10, 7
;Bar 18
	note A_, 6
	octave 4
	note D_, 6
	note A_, 4
;Bar 19
	note G_, 4
	note F_, 4
	note E_, 4
	note D_, 2
	note E_, 2
;Bar 20
	note F_, 6
	note G_, 6
	note A_, 2
	rest 2
;Bar 21
	note G_, 6
	note C_, 6
	rest 4
;Bar 22
	octave 3
	note A_, 6
	octave 4
	note D_, 6
	note A_, 4
;Bar 23
	note G_, 4
	note F_, 4
	note E_, 4
	note D_, 2
	note E_, 2
;Bar 24
	volume_envelope 10, -7
	note F_, 8
	note A_, 8
;Bar 25
	note G_, 8
	octave 5
	note C_, 8
	volume_envelope 10, 7
;Bar 26
	duty_cycle 3
	octave 5
	note D_, 16
	rest 16
;Bar 28
	volume_envelope 6, 7
	octave 5
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
	octave 4
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note A_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
;Bar 29
	note A_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note A#, 4 ; WARNING: Auto-Sync says: Rounded up!
	note G_, 4 ; WARNING: Auto-Sync says: Rounded up!
;Bar 28
	octave 5
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
	octave 4
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note A_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
;Bar 29
	note A_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note A#, 4 ; WARNING: Auto-Sync says: Rounded up!
	note G_, 4 ; WARNING: Auto-Sync says: Rounded up!
;Bar 28
	octave 5
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
	octave 4
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note A_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
;Bar 33
	note A_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note A#, 4 ; WARNING: Auto-Sync says: Rounded up!
	note G_, 4 ; WARNING: Auto-Sync says: Rounded up!
	volume_envelope 10, 7
;Bar 34
	tempo 142
	;note G_, 0 | WARNING: Rounded down to 0
	octave 3
	note A_, 12
	rest 12
;Bar 36
	note A#, 12
	rest 12
;Bar 38
	tempo 106
	octave 1
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
;Bar 39
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
;Bar 40
	octave 2
	note F#, 2
	note D#, 2
	octave 1
	note B_, 2
	octave 2
	note D#, 2
	note F#, 2
	note D#, 2
	octave 1
	note B_, 2
	octave 2
	note D#, 2
;Bar 41
	note G#, 2
	note F_, 2
	note C#, 2
	note F_, 2
	note G#, 2
	note F_, 2
	note C#, 2
	note F_, 2
;Bar 42
	octave 1
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
;Bar 43
	octave 2
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 2
;Bar 44
	note F#, 2
	note D#, 2
	octave 1
	note B_, 2
	octave 2
	note D#, 2
	note F#, 2
	note D#, 2
	octave 1
	note B_, 2
	octave 2
	note D#, 2
;Bar 45
	note G#, 2
	note F_, 2
	note C#, 2
	note F_, 2
	note G#, 2
	note F_, 2
	note C#, 2
	note F_, 2
	sound_loop 0, .loop
	sound_ret

; ============================================================================================================

Music_DV_KantoLegendary_Ch2:
	duty_cycle 3
	note_type 12, 10, 7
;Bar 1
	octave 2
	note G#, 1 ; WARNING: Auto-Sync says: Rounded up!
	note F#, 1 ; WARNING: Auto-Sync says: Rounded up!
	note E_, 1 ; WARNING: Auto-Sync says: Rounded up!
	note F#, 1 ; WARNING: Auto-Sync says: Rounded up!
	note E_, 1
	note D#, 1
	note E_, 1
	note D#, 1
	note C#, 1
	note D#, 1
	note C#, 1
	octave 1
	note B_, 1
;Bar 2
	rest 16
;Bar 3
	rest 16
;Bar 4
	octave 2
	note G#, 2
	rest 6
	note G#, 2
	rest 6
;Bar 5
	note G#, 2
	rest 6
	note G#, 2
	rest 2
	note F#, 2
	rest 2
;Bar 6
	duty_cycle 3
	octave 3
	volume_envelope 9, 7
	note C#, 4
	octave 2
	note G#, 4
	octave 3
	note D#, 4
	octave 2
	note B_, 4
;Bar 7
	octave 3
	note E_, 4
	note C#, 4
	note F#, 4
	note D#, 4
;Bar 8
	octave 2
	note A_, 16
;Bar 9
	note B_, 16
;Bar 10
.loop:
	octave 3
	note C#, 16
	rest 16
;Bar 12
	octave 2
	note A_, 16
;Bar 13
	note B_, 16
;Bar 14
	octave 3
	note C#, 16
	rest 16
;Bar 16
	octave 2
	note A_, 16
;Bar 17
	note B_, 16
;Bar 18
	octave 1
	note A_, 6
	octave 2
	note D_, 6
	note A_, 4
;Bar 19
	note G_, 4
	note F_, 4
	note E_, 4
	note D_, 2
	note E_, 2
;Bar 20
	note F_, 6
	note G_, 6
	note A_, 2
	rest 2
;Bar 21
	note G_, 8
	octave 3
	note A_, 2
	note G_, 1
	note F_, 1
	note E_, 1
	rest 1
	note C_, 1
	rest 1
;Bar 22
	octave 2
	note A_, 6
	octave 3
	note D_, 6
	note A_, 4
;Bar 23
	note G_, 4
	note F_, 4
	note E_, 4
	note D_, 2
	note E_, 2
;Bar 24
	volume_envelope 10, -7
	note D_, 8
	note F_, 8
;Bar 25
	note E_, 8
	note G_, 8
	volume_envelope 6, 7
;Bar 26
	duty_cycle 1
	octave 3
	note D_, 4
	octave 2
	note D_, 4
	note A_, 4
	note D_, 4
;Bar 27
	note A_, 4
	note D_, 4
	note A#, 4 ; WARNING: Auto-Sync says: Rounded up!
	note G_, 4 ; WARNING: Auto-Sync says: Rounded up!
;Bar 28
	octave 3
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
	octave 2
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note A_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
;Bar 29
	note A_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note D_, 4 ; WARNING: Auto-Sync says: Rounded up!
	note A#, 4 ; WARNING: Auto-Sync says: Rounded up!
	note G_, 4 ; WARNING: Auto-Sync says: Rounded up!
;Bar 30
	volume_envelope 10, -7
	duty_cycle 3
	octave 2
	note A_, 16
;Bar 31
	note A#, 16
;Bar 32
	octave 3
	note C_, 16
;Bar 33
	note D_, 16
	volume_envelope 7, 7
;Bar 34
	duty_cycle 0
	octave 4
	note D_, 1 ; WARNING: Auto-Sync says: Rounded up!
	note C_, 1 ; WARNING: Auto-Sync says: Rounded up!
	octave 3
	note D_, 1
	note A_, 1
	note G_, 1
	note D_, 1
	octave 4
	note D_, 1
	note C_, 1
	octave 3
	note D_, 1
	note A_, 1
	note G_, 1
	note D_, 1
;Bar 35
	octave 4
	note D_, 1
	note C_, 1
	octave 3
	note D_, 1
	note A_, 1
	note G_, 1
	note D_, 1
	octave 4
	note D_, 1
	note C_, 1
	octave 3
	note D_, 1
	note A_, 1
	note G_, 1
	note D_, 1
;Bar 36
	octave 4
	note D#, 1
	note C#, 1
	octave 3
	note D#, 1
	note A#, 1
	note G#, 1
	note D#, 1
	octave 4
	note D#, 1
	note C#, 1
	octave 3
	note D#, 1
	note A#, 1
	note G#, 1
	note D#, 1
;Bar 37
	octave 4
	note D#, 1
	note C#, 1
	octave 3
	note D#, 1
	note A#, 1
	note G#, 1
	note D#, 1
	octave 4
	note D#, 1
	note C#, 1
	octave 3
	note D#, 1
	note A#, 1
	note G#, 1
	note D#, 1
;Bar 38
	volume_envelope 10, 7
	duty_cycle 3
	octave 2
	note A#, 6
	octave 3
	note D#, 6
	note A#, 4
;Bar 39
	note G#, 4
	note F#, 4
	note F_, 4
	note D#, 2
	note F_, 2
;Bar 40
	note F#, 6
	note G#, 6
	note A#, 2
	rest 4
;Bar 41
	volume_envelope 10, 7
	note G#, 1
	note G#, 1
	note G#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 2
	note G#, 1
	note F#, 1
	note F_, 2
	note C#, 2
;Bar 42
	octave 2
	volume_envelope 9, 7
	note A#, 6
	octave 3
	note D#, 6
	note A#, 4
;Bar 43
	note G#, 4
	note F#, 4
	note F_, 4
	note D#, 2
	note F_, 2
;Bar 44
	volume_envelope 9, -7
	note F#, 8
	note A#, 8
;Bar 45
	note G#, 8
	note B_, 8
	volume_envelope 9, 7
	sound_loop 0, .loop
	sound_ret

; ============================================================================================================

Music_DV_KantoLegendary_Ch3:
	note_type 12, 1, -1
;Bar 1
	octave 1
	note B_, 1
	octave 2
	note C#, 1 ; WARNING: Auto-Sync says: Rounded up!
	note D#, 1 ; WARNING: Auto-Sync says: Rounded up!
	note C#, 1 ; WARNING: Auto-Sync says: Rounded up!
	note D#, 1 ; WARNING: Auto-Sync says: Rounded up!
	note E_, 1
	note D#, 1
	note E_, 1
	note F#, 1
	note E_, 1
	note F#, 1
	note G#, 1
;Bar 2
	volume_envelope 2, -1
	octave 2
	note C#, 16
	rest 12
;Bar 3
	octave 1
	note B_, 2
	rest 2
;Bar 4
	octave 2
	note C#, 16
	rest 12
;Bar 5
	octave 1
	note B_, 2
	rest 2
;Bar 6
	octave 2
	note C#, 16
	rest 12
;Bar 7
	octave 1
	note B_, 2
	rest 2
;Bar 8
	volume_envelope 1, -1
	note A_, 2
	note A_, 2
	octave 2
	note A_, 2
	octave 1
	note A_, 2
	note A_, 2
	octave 2
	note A_, 2
	octave 3
	note C#, 2
	octave 2
	note A_, 2
;Bar 9
	octave 1
	note B_, 2
	note B_, 2
	octave 2
	note B_, 2
	octave 1
	note B_, 2
	note B_, 2
	octave 2
	note B_, 2
	octave 1
	note B_, 2
	octave 2
	note B_, 2
;Bar 10
.loop:
	note C#, 2
	note C#, 2
	note G#, 2
	note C#, 2
	note C#, 2
	note G#, 2
	note C#, 2
	note G#, 2
;Bar 11
	note C#, 2
	note C#, 2
	note G#, 2
	note C#, 2
	note C#, 2
	note G#, 2
	note C#, 2
	note G#, 2
;Bar 12
	octave 1
	note A_, 2
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
;Bar 13
	octave 1
	note B_, 2
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	note B_, 2
	octave 2
	note C#, 2
	note D#, 2
	note F#, 2
;Bar 14
	note C#, 2
	note C#, 2
	note G#, 2
	note C#, 2
	note C#, 2
	note G#, 2
	note C#, 2
	note G#, 2
;Bar 15
	note C#, 2
	note C#, 2
	note G#, 2
	note C#, 2
	note C#, 2
	note G#, 2
	note C#, 2
	note G#, 2
;Bar 16
	octave 1
	note A_, 2
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	note A_, 2
	octave 2
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
;Bar 17
	octave 1
	note B_, 2
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	note B_, 2
	octave 2
	note C#, 2
	note D#, 2
	note F#, 2
;Bar 18
	note D_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
;Bar 19
	note D_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
;Bar 20
	octave 1
	note A#, 2
	note A#, 2
	octave 2
	note F_, 2
	octave 1
	note A#, 2
	note A#, 2
	octave 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
;Bar 21
	note C_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note C_, 2
	note D_, 2
	note E_, 2
	note G_, 2
;Bar 22
	note D_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
;Bar 23
	note D_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
;Bar 24
	octave 1
	note A#, 2
	note A#, 2
	octave 2
	note F_, 2
	octave 1
	note A#, 2
	note A#, 2
	octave 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
;Bar 25
	note C_, 2
	note C_, 2
	note G_, 2
	note C_, 2
	note C_, 2
	note D_, 2
	note E_, 2
	note G_, 2
;Bar 26
	note D_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note D_, 2
	note A_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 2
;Bar 27
	note D_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note D_, 2
	note A_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 2
;Bar 28
	note D_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note D_, 2
	note A_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 2
;Bar 29
	note D_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note D_, 2
	note A_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 2
;Bar 30
	note D_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note D_, 2
	note A_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 2
;Bar 31
	note D_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note D_, 2
	note A_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 2
;Bar 32
	note D_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note D_, 2
	note A_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 2
;Bar 33
	note D_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note D_, 2
	note A_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 2
;Bar 34
	octave 2
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
;Bar 35
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
	note D_, 2
	note A_, 2
;Bar 36
	note D#, 2
	note A#, 2
	note D#, 2
	note A#, 2
	note D#, 2
	note A#, 2
;Bar 37
	note D#, 2
	note A#, 2
	note D#, 2
	note A#, 2
	note D#, 2
	note A#, 2
;Bar 38
	note D#, 2
	note D#, 2
	note A#, 2
	note D#, 2
	note D#, 2
	note A#, 2
	note D#, 2
	note A#, 2
;Bar 39
	note D#, 2
	note D#, 2
	note A#, 2
	note D#, 2
	note D#, 2
	note A#, 2
	note D#, 2
	note A#, 2
;Bar 40
	octave 1
	note B_, 2
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
;Bar 41
	note C#, 2
	note C#, 2
	note G#, 2
	note C#, 2
	note C#, 2
	note D#, 2
	note F_, 2
	note G#, 2
;Bar 42
	note D#, 2
	note D#, 2
	note A#, 2
	note D#, 2
	note D#, 2
	note A#, 2
	note D#, 2
	note A#, 2
;Bar 43
	note D#, 2
	note D#, 2
	note A#, 2
	note D#, 2
	note D#, 2
	note A#, 2
	note D#, 2
	note A#, 2
;Bar 44
	octave 1
	note B_, 2
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	note B_, 2
	octave 2
	note F#, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
;Bar 45
	note C#, 2
	note C#, 2
	note G#, 2
	note C#, 2
	note C#, 2
	note D#, 2
	note F_, 2
	note G#, 2
	sound_loop 0, .loop
	sound_ret

; ============================================================================================================

Music_DV_KantoLegendary_Ch4:
	toggle_noise 3
	drum_speed 12
;Bar 1
	drum_note 11, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 11, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 11, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 11, 1
	drum_note 3, 1
	drum_note 3, 1
;Bar 2
	drum_note 3, 4
	drum_note 11, 4
	drum_note 3, 4
	drum_note 11, 4
	drum_note 3, 4
	drum_note 11, 4
	drum_note 3, 4
	drum_note 11, 4
	drum_note 3, 4
	drum_note 11, 4
	drum_note 3, 4
	drum_note 11, 4
	drum_note 3, 4
	drum_note 11, 4
	drum_note 3, 4
	drum_note 11, 4
;Bar 6
	drum_note 3, 4
	drum_note 11, 4
	drum_note 3, 4
	drum_note 11, 4
	drum_note 3, 4
	drum_note 11, 4
	drum_note 3, 4
	drum_note 11, 4

;Bar 8
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 1, 2
;Bar 9
	drum_note 1, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
;Bar 10
.loop:
	drum_note 12, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 11
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 12
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 13
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 14
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 15
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 16
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 17
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 18
	drum_note 12, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 19
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 20
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 21
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 22
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 23
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 24
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 25
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 26
	drum_note 12, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 27
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 28
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 29
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 30
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 31
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 32
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 33
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 34
	drum_note 12, 3
	drum_note 3, 6
	drum_note 3, 6
;Bar 35
	drum_note 3, 6
	drum_note 3, 3
;Bar 36
	drum_note 12, 3
	drum_note 3, 6
	drum_note 3, 6
;Bar 37
	drum_note 3, 6
	drum_note 3, 3
;Bar 38
	drum_note 12, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 39
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 40
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 41
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 42
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 43
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 44
	drum_note 11, 4
	drum_note 3, 2
	drum_note 11, 6
	drum_note 3, 4
;Bar 45
	drum_note 3, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	sound_loop 0, .loop
	sound_ret

; ============================================================================================================

