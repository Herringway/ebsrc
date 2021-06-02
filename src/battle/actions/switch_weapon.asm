
BTLACT_SWITCH_WEAPONS: ;$C1DE43
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	RESERVE_STACK_SPACE_CLOBBER 30
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::id,X
	STA $1C
	LDA #$0001
	JSR a:.LOWORD(ENABLE_BLINKING_TRIANGLE)
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::current_action_argument,X
	AND #$00FF
	TAX
	LDA $1C
	JSL UNKNOWN_C3EE14
	CMP #$0000
	BNE @DONTDISPLAYTEXT
	JMP a:.LOWORD(@DISPLAYTEXT)
@DONTDISPLAYTEXT:
	LDA $1C
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	CLC
	ADC #.LOWORD(CHAR_STRUCT)
	TAY
	STY $1A
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::base_offense,X
	AND #$00FF
	STA $04
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::offense,X
	SEC
	SBC $04
	STA $02
	STA $18
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::base_guts,X
	AND #$00FF
	STA $02
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::guts,X
	SEC
	SBC $02
	STA $04
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::unknown07,X
	AND #$00FF
	TAX
	LDA $1C
	JSR a:.LOWORD(EQUIP_ITEM)
	LDY $1A
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::offense,Y
	LDX .LOWORD(CURRENT_ATTACKER)
	STA a:battler::base_offense,X
	REP #PROC_FLAGS::ACCUM8
	LDA $18
	STA $02
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:battler::base_offense,X
	AND #$00FF
	CLC
	ADC $02
	LDX .LOWORD(CURRENT_ATTACKER)
	STA a:battler::offense,X
	SEP #PROC_FLAGS::ACCUM8
	LDA a:char_struct::guts,Y
	LDX .LOWORD(CURRENT_ATTACKER)
	STA a:battler::base_guts,X
	LDX .LOWORD(CURRENT_ATTACKER)
	REP #PROC_FLAGS::ACCUM8
	LDA a:battler::base_guts,X
	AND #$00FF
	CLC
	ADC $04
	LDX .LOWORD(CURRENT_ATTACKER)
	STA a:battler::guts,X
	DISPLAY_TEXT_PTR TEXT_BATTLE_EQUIP_X_INSTEAD
	BRA @SKIPTEXT
@DISPLAYTEXT:
	DISPLAY_TEXT_PTR TEXT_BATTLE_COULD_NOT_EQUIP_ATTACK_ANYWAY
@SKIPTEXT:
	LDA $1C
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	STA $16
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+EQUIPMENT_SLOT::WEAPON,X
	AND #$00FF
	DEC
	STA $02
	LDA $16
	CLC
	ADC #.LOWORD(CHAR_STRUCT)+char_struct::items
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(RAM),X
	AND #$00FF
	BEQ @NOTSHOOT
	OPTIMIZED_MULT $04, .SIZEOF(item)
	CLC
	ADC #item::type
	TAX
	LDA f:ITEM_CONFIGURATION_TABLE,X
	AND #$00FF
	AND #$0003
	CMP #$0001
	BNE @NOTSHOOT
	LOADPTR BATTLE_ACTION_TABLE, $06
	MOVE_INT $06, $12
	LDY #$0040
	LDA [$06],Y
	PHA
	INY
	INY
	LDA [$06],Y
	STA $08
	PLA
	STA $06
	STA $0E
	LDA $08
	STA $10
	JSL DISPLAY_TEXT
	MOVE_INT $12, $06
	LDY #$0044
	LDA [$06],Y
	PHA
	INY
	INY
	LDA [$06],Y
	STA $08
	PLA
	STA $06
	PHA
	LDA $06
	STA a:.LOWORD(UNKNOWN_7E00BC)
	LDA $08
	STA a:.LOWORD(UNKNOWN_7E00BE)
	PLA
	JSL UNKNOWN_C09279
	BRA @RETURN
@NOTSHOOT:
	LOADPTR BATTLE_ACTION_TABLE, $06
	MOVE_INT $06, $12
	LDY #$0034
	LDA [$06],Y
	PHA
	INY
	INY
	LDA [$06],Y
	STA $08
	PLA
	STA $06
	STA $0E
	LDA $08
	STA $10
	JSL DISPLAY_TEXT
	MOVE_INT $12, $06
	LDY #$0038
	LDA [$06],Y
	PHA
	INY
	INY
	LDA [$06],Y
	STA $08
	PLA
	STA $06
	PHA
	LDA $06
	STA a:.LOWORD(UNKNOWN_7E00BC)
	LDA $08
	STA a:.LOWORD(UNKNOWN_7E00BE)
	PLA
	JSL UNKNOWN_C09279
@RETURN:
	JSR a:.LOWORD(CLEAR_BLINKING_PROMPT)
	PLD
	RTL
