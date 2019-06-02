
SCREEN_TRANSITION_CONFIG_TABLE: ;$D01400
	.BYTE $00 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE SFX::NONE ;Sound effect to play at beginning
	.BYTE $00 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $14 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE SFX::NONE ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $14 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $64 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE SFX::NONE ;Sound effect to play at beginning
	.BYTE $3C ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $14 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE SFX::NONE ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $14 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE SFX::NONE ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::DOOR_CLOSE ;Sound effect to play at end

	.BYTE $1E ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $10 ;Slide speed
	.BYTE $11 ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE $2E ;Sound effect to play at end

	.BYTE $14 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE SFX::NONE ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE $70 ;Sound effect to play at end

	.BYTE $14 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE SFX::DOOR_OPEN ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::DOOR_CLOSE ;Sound effect to play at end

	.BYTE $14 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE SFX::DOOR_OPEN ;Sound effect to play at beginning
	.BYTE $3C ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::DOOR_CLOSE ;Sound effect to play at end

	.BYTE $14 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE SFX::DOOR_OPEN ;Sound effect to play at beginning
	.BYTE $3C ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::DOOR_CLOSE ;Sound effect to play at end

	.BYTE $14 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE SFX::DOOR_OPEN ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $64 ;Duration
	.BYTE $05 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $31 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE SFX::NONE ;Sound effect to play at beginning
	.BYTE $64 ;Secondary duration
	.BYTE $05 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $14 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE $70 ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $14 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE $70 ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE $70 ;Sound effect to play at end

	.BYTE $14 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $64 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE SFX::NONE ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $14 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE $12 ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $FF ;Duration
	.BYTE $02 ;Animation ID
	.BYTE $80 ;Animation flags
	.BYTE $64 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE SFX::NONE ;Sound effect to play at beginning
	.BYTE $3C ;Secondary duration
	.BYTE $02 ;Secondary animation ID
	.BYTE $01 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $3C ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $26 ;Direction
	.BYTE $00
	.BYTE $0C ;Slide speed
	.BYTE $0C ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $3C ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $07 ;Direction
	.BYTE $00
	.BYTE $0C ;Slide speed
	.BYTE $0C ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $3C ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $3B ;Direction
	.BYTE $00
	.BYTE $0C ;Slide speed
	.BYTE $0C ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $3C ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $3D ;Direction
	.BYTE $00
	.BYTE $0C ;Slide speed
	.BYTE $0C ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $3C ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $3D ;Direction
	.BYTE $00
	.BYTE $0C ;Slide speed
	.BYTE $0C ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $3C ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $07 ;Direction
	.BYTE $00
	.BYTE $0C ;Slide speed
	.BYTE $0C ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $3C ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $05 ;Direction
	.BYTE $00
	.BYTE $0C ;Slide speed
	.BYTE $0C ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $3C ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $30 ;Direction
	.BYTE $00
	.BYTE $0C ;Slide speed
	.BYTE $0C ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $3C ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $16 ;Direction
	.BYTE $00
	.BYTE $0C ;Slide speed
	.BYTE $0C ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $3C ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $26 ;Direction
	.BYTE $00
	.BYTE $0C ;Slide speed
	.BYTE $0C ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $3C ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $1B ;Direction
	.BYTE $00
	.BYTE $0C ;Slide speed
	.BYTE $0C ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $14 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE $0C ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $78 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $64 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE SFX::NONE ;Sound effect to play at beginning
	.BYTE $64 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $64 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $64 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $00 ;Slide speed
	.BYTE $64 ;Sound effect to play at beginning
	.BYTE $3C ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end

	.BYTE $64 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $10 ;Direction
	.BYTE $E8
	.BYTE $07 ;Slide speed
	.BYTE $60 ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE $53 ;Sound effect to play at end

	.BYTE $64 ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $30 ;Direction
	.BYTE $E8
	.BYTE $07 ;Slide speed
	.BYTE $60 ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE $53 ;Sound effect to play at end

	.BYTE $1E ;Duration
	.BYTE $00 ;Animation ID
	.BYTE $00 ;Animation flags
	.BYTE $00 ;Fade style
	.BYTE $00 ;Direction
	.BYTE $00
	.BYTE $10 ;Slide speed
	.BYTE $11 ;Sound effect to play at beginning
	.BYTE $14 ;Secondary duration
	.BYTE $00 ;Secondary animation ID
	.BYTE $00 ;Secondary animation flags
	.BYTE SFX::NONE ;Sound effect to play at end
