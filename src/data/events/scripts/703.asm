
EVENT_703: ;$C3868F
	EVENT_SET_PHYSICS_CALLBACK .LOWORD(UNKNOWN_C0A37A)
	EVENT_SET_ANIMATION $00
	EVENT_SET_VELOCITIES_ZERO
	EVENT_UNKNOWN_C0A443_ME2
	EVENT_LOOP $08
		EVENT_SET_Y_VELOCITY $FF00
		EVENT_PAUSE 1*FIFTEENTH_OF_A_SECOND
		EVENT_SET_VELOCITIES_ZERO
		EVENT_PAUSE $10*FRAMES
	EVENT_LOOP_END
	EVENT_YIELD_TO_TEXT
	EVENT_HALT
