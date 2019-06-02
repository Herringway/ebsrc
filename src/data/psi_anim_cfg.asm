
PSI_ANIM_CFG: ;$CCF04D
	.WORD .LOWORD(PSI_ANIM_GFX_SET_3)
	.BYTE $05 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $02
	.BYTE $2F ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $00 ;Time until enemy colour change
	.BYTE $00 ;Duration of enemy colour change
	RGB 0, 0, 0 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_3)
	.BYTE $04 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $1D ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::SINGLE
	.BYTE $32 ;Time until enemy colour change
	.BYTE $50 ;Duration of enemy colour change
	RGB 18, 6, 0 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_3)
	.BYTE $04 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $2F ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $5A ;Time until enemy colour change
	.BYTE $A0 ;Duration of enemy colour change
	RGB 16, 6, 0 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_3)
	.BYTE $03 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $21 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::SINGLE
	.BYTE $00 ;Time until enemy colour change
	.BYTE $00 ;Duration of enemy colour change
	RGB 0, 0, 0 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_3)
	.BYTE $05 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $1C ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::SINGLE
	.BYTE $28 ;Time until enemy colour change
	.BYTE $46 ;Duration of enemy colour change
	RGB 0, 0, 10 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_3)
	.BYTE $05 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $21 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $28 ;Time until enemy colour change
	.BYTE $46 ;Duration of enemy colour change
	RGB 0, 0, 10 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_2)
	.BYTE $05 ;Frame Duration (1/60th of a second)
	.BYTE $02 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $0D ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ROW
	.BYTE $28 ;Time until enemy colour change
	.BYTE $46 ;Duration of enemy colour change
	RGB 31, 0, 0 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_2)
	.BYTE $05 ;Frame Duration (1/60th of a second)
	.BYTE $02 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $10 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ROW
	.BYTE $32 ;Time until enemy colour change
	.BYTE $50 ;Duration of enemy colour change
	RGB 31, 0, 0 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_2)
	.BYTE $05 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $11 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ROW
	.BYTE $32 ;Time until enemy colour change
	.BYTE $50 ;Duration of enemy colour change
	RGB 31, 0, 0 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_2)
	.BYTE $05 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $1B ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ROW
	.BYTE $50 ;Time until enemy colour change
	.BYTE $82 ;Duration of enemy colour change
	RGB 31, 0, 0 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_1)
	.BYTE $05 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $02
	.BYTE $06 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $0A ;Time until enemy colour change
	.BYTE $28 ;Duration of enemy colour change
	RGB 29, 29, 29 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_1)
	.BYTE $05 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $02
	.BYTE $0A ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $14 ;Time until enemy colour change
	.BYTE $32 ;Duration of enemy colour change
	RGB 29, 29, 29 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_1)
	.BYTE $04 ;Frame Duration (1/60th of a second)
	.BYTE $02 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $13 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $1E ;Time until enemy colour change
	.BYTE $3C ;Duration of enemy colour change
	RGB 29, 29, 29 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_2)
	.BYTE $04 ;Frame Duration (1/60th of a second)
	.BYTE $02 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $21 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $4C ;Time until enemy colour change
	.BYTE $7D ;Duration of enemy colour change
	RGB 29, 29, 29 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_1)
	.BYTE $04 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $17 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::SINGLE
	.BYTE $32 ;Time until enemy colour change
	.BYTE $50 ;Duration of enemy colour change
	RGB 0, 0, 31 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_1)
	.BYTE $04 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $16 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::SINGLE
	.BYTE $32 ;Time until enemy colour change
	.BYTE $50 ;Duration of enemy colour change
	RGB 0, 0, 31 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_1)
	.BYTE $04 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $17 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::SINGLE
	.BYTE $32 ;Time until enemy colour change
	.BYTE $50 ;Duration of enemy colour change
	RGB 0, 0, 31 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_1)
	.BYTE $04 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $23 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::SINGLE
	.BYTE $3C ;Time until enemy colour change
	.BYTE $87 ;Duration of enemy colour change
	RGB 0, 0, 31 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_4)
	.BYTE $03 ;Frame Duration (1/60th of a second)
	.BYTE $02 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $1F ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $3F ;Time until enemy colour change
	.BYTE $5C ;Duration of enemy colour change
	RGB 26, 14, 14 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_4)
	.BYTE $03 ;Frame Duration (1/60th of a second)
	.BYTE $02 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $30 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $72 ;Time until enemy colour change
	.BYTE $8F ;Duration of enemy colour change
	RGB 26, 14, 14 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_4)
	.BYTE $03 ;Frame Duration (1/60th of a second)
	.BYTE $02 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $36 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $84 ;Time until enemy colour change
	.BYTE $A1 ;Duration of enemy colour change
	RGB 26, 14, 14 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_4)
	.BYTE $04 ;Frame Duration (1/60th of a second)
	.BYTE $02 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $40 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $8D ;Time until enemy colour change
	.BYTE $FF ;Duration of enemy colour change
	RGB 26, 14, 14 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_3)
	.BYTE $05 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $1A ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::SINGLE
	.BYTE $3C ;Time until enemy colour change
	.BYTE $5A ;Duration of enemy colour change
	RGB 0, 10, 4 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_3)
	.BYTE $05 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $1A ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $3C ;Time until enemy colour change
	.BYTE $5A ;Duration of enemy colour change
	RGB 0, 10, 4 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_3)
	.BYTE $03 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $22 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::SINGLE
	.BYTE $2D ;Time until enemy colour change
	.BYTE $4B ;Duration of enemy colour change
	RGB 18, 18, 18 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_3)
	.BYTE $03 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $1A ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $2D ;Time until enemy colour change
	.BYTE $4B ;Duration of enemy colour change
	RGB 18, 18, 18 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_3)
	.BYTE $07 ;Frame Duration (1/60th of a second)
	.BYTE $04 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $02
	.BYTE $11 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $00 ;Time until enemy colour change
	.BYTE $00 ;Duration of enemy colour change
	RGB 0, 0, 0 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_1)
	.BYTE $05 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $0B ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::SINGLE
	.BYTE $00 ;Time until enemy colour change
	.BYTE $00 ;Duration of enemy colour change
	RGB 0, 0, 0 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_1)
	.BYTE $05 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $11 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $00 ;Time until enemy colour change
	.BYTE $00 ;Duration of enemy colour change
	RGB 0, 0, 0 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_3)
	.BYTE $03 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $21 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $00 ;Time until enemy colour change
	.BYTE $00 ;Duration of enemy colour change
	RGB 0, 0, 0 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_1)
	.BYTE $04 ;Frame Duration (1/60th of a second)
	.BYTE $02 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $21 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $50 ;Time until enemy colour change
	.BYTE $83 ;Duration of enemy colour change
	RGB 18, 18, 31 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_1)
	.BYTE $04 ;Frame Duration (1/60th of a second)
	.BYTE $02 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $2E ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::ALL_ENEMIES
	.BYTE $79 ;Time until enemy colour change
	.BYTE $B7 ;Duration of enemy colour change
	RGB 18, 18, 31 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_1)
	.BYTE $04 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $0F ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::RANDOM
	.BYTE $19 ;Time until enemy colour change
	.BYTE $36 ;Duration of enemy colour change
	RGB 31, 31, 11 ;Colour that enemy will change to

	.WORD .LOWORD(PSI_ANIM_GFX_SET_1)
	.BYTE $04 ;Frame Duration (1/60th of a second)
	.BYTE $03 ;Palette Duration (1/60th of a second)
	.BYTE $01
	.BYTE $03
	.BYTE $13 ;Total frames in animation
	.BYTE PSI_TARGET_ANIM::RANDOM
	.BYTE $31 ;Time until enemy colour change
	.BYTE $4B ;Duration of enemy colour change
	RGB 31, 31, 11 ;Colour that enemy will change to
