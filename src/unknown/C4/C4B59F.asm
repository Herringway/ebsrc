
UNKNOWN_C4B59F:
	BEGIN_C_FUNCTION_FAR
	STACK_RESERVE_VARS
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT32
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_PARAM_INT16
	STACK_RESERVE_RETURN_INT16
	END_STACK_VARS
	STY @VIRTUAL04
	STX @VIRTUAL02
	STA @LOCAL12
	LDA @PARAM0B
	STA @LOCAL11
	LDY @PARAM0A
	STY @LOCAL10
	LDA @PARAM09
	STA @LOCAL0F
	LDA @PARAM08
	STA @LOCAL0E
	LDX @PARAM07
	STX @LOCAL0D
	LDA @PARAM06
	STA @LOCAL0C
	LDA @PARAM05
	STA @LOCAL0B
	LDX @PARAM04
	STX @LOCAL0A
	MOVE_INT @PARAM03, @VIRTUAL06
	STZ @LOCAL09
	LDA @VIRTUAL02
	STA PATH_HEAP_START
	LDA @VIRTUAL02
	STA PATH_HEAP_CURRENT
	LDA @VIRTUAL02
	CLC
	ADC @LOCAL12
	STA PATH_HEAP_END
	LDX @VIRTUAL04
	LDA __BSS_START__,X
	STA PATH_MATRIX_ROWS
	LDX @VIRTUAL04
	LDY __BSS_START__+2,X
	STY PATH_MATRIX_COLUMNS
	LDX @LOCAL0A
	STX PATH_MATRIX_BORDER
	JSL MULT16
	STA PATH_MATRIX_SIZE
	MOVE_INT @VIRTUAL06, PATH_MATRIX_BUFFER
	LDA @LOCAL11
	ASL
	STA @VIRTUAL02
	INC
	INC
	JSR UNKNOWN_C4B587
	STA @LOCAL08
	STA PATH_SEARCH_TEMP_START
	CLC
	ADC @VIRTUAL02
	STA PATH_SEARCH_TEMP_END
	LDA @LOCAL08
	STA PATH_SEARCH_TEMP_B
	STA PATH_SEARCH_TEMP_A
	LDA PATH_MATRIX_COLUMNS
	EOR #$FFFF
	INC
	STA PATH_CARDINAL_OFFSET
	LDA #1
	STA PATH_CARDINAL_OFFSET+2
	LDA PATH_MATRIX_COLUMNS
	STA PATH_CARDINAL_OFFSET+4
	LDA #.LOWORD(-1)
	STA PATH_CARDINAL_OFFSET+6
	STA PATH_CARDINAL_INDEX + .SIZEOF(pathfinder_coords) * 0 + pathfinder_coords::y_coord
	STZ PATH_CARDINAL_INDEX + .SIZEOF(pathfinder_coords) * 0 + pathfinder_coords::x_coord
	STZ PATH_CARDINAL_INDEX + .SIZEOF(pathfinder_coords) * 1 + pathfinder_coords::y_coord
	LDA #1
	STA PATH_CARDINAL_INDEX + .SIZEOF(pathfinder_coords) * 1 + pathfinder_coords::x_coord
	STA PATH_CARDINAL_INDEX + .SIZEOF(pathfinder_coords) * 2 + pathfinder_coords::y_coord
	STZ PATH_CARDINAL_INDEX + .SIZEOF(pathfinder_coords) * 2 + pathfinder_coords::x_coord
	STZ PATH_CARDINAL_INDEX + .SIZEOF(pathfinder_coords) * 3 + pathfinder_coords::y_coord
	LDA #.LOWORD(-1)
	STA PATH_CARDINAL_INDEX + .SIZEOF(pathfinder_coords) * 3 + pathfinder_coords::x_coord
	STA PATH_DIAGONAL_INDEX + .SIZEOF(pathfinder_coords) * 0 + pathfinder_coords::y_coord
	LDA #1
	STA PATH_DIAGONAL_INDEX + .SIZEOF(pathfinder_coords) * 0 + pathfinder_coords::x_coord
	STA PATH_DIAGONAL_INDEX + .SIZEOF(pathfinder_coords) * 1 + pathfinder_coords::y_coord
	STA PATH_DIAGONAL_INDEX + .SIZEOF(pathfinder_coords) * 1 + pathfinder_coords::x_coord
	STA PATH_DIAGONAL_INDEX + .SIZEOF(pathfinder_coords) * 2 + pathfinder_coords::y_coord
	LDA #.LOWORD(-1)
	STA PATH_DIAGONAL_INDEX + .SIZEOF(pathfinder_coords) * 2 + pathfinder_coords::x_coord
	STA PATH_DIAGONAL_INDEX + .SIZEOF(pathfinder_coords) * 3 + pathfinder_coords::y_coord
	STA PATH_DIAGONAL_INDEX + .SIZEOF(pathfinder_coords) * 3 + pathfinder_coords::x_coord
	LDA @LOCAL10
	CMP #251
	BCC @UNKNOWN0
	LDA #251
	STA @LOCAL10
@UNKNOWN0:
	LDA @LOCAL0D
	ASL
	JSR UNKNOWN_C4B587
	STA @LOCAL07
	LDY @LOCAL07
	LDX @LOCAL0E
	LDA @LOCAL0D
	JSR UNKNOWN_C4B859
	LDA @LOCAL10
	ASL
	ASL
	JSR UNKNOWN_C4B587
	STA @LOCAL0E
	JSR UNKNOWN_C4B7A5
	STZ @LOCAL06
	STZ @LOCAL05
	LDA #0
	STA @VIRTUAL04
	JMP @UNKNOWN10
@UNKNOWN1:
	LDA @VIRTUAL04
	ASL
	TAY
	LDA (@LOCAL07),Y
	STA @VIRTUAL02
	STA @LOCAL12
	LDX @VIRTUAL02
	LDA __BSS_START__+2,X
	CMP @LOCAL06
	BNE @UNKNOWN2
	LDX @VIRTUAL02
	LDA __BSS_START__+4,X
	CMP @LOCAL05
	BEQ @UNKNOWN6
@UNKNOWN2:
	LDY #1
	STY @LOCAL04
	LDX @VIRTUAL02
	LDA __BSS_START__+2,X
	STA @LOCAL06
	LDX @VIRTUAL02
	LDA __BSS_START__+4,X
	STA @LOCAL05
	LDA @VIRTUAL04
	INC
	STA @LOCAL08
	BRA @UNKNOWN4
@UNKNOWN3:
	ASL
	TAY
	LDA (@LOCAL07),Y
	TAX
	LDA __BSS_START__+2,X
	CMP @LOCAL06
	BNE @UNKNOWN5
	LDA __BSS_START__+4,X
	CMP @LOCAL05
	BNE @UNKNOWN5
	LDY @LOCAL04
	INY
	STY @LOCAL04
	LDA @LOCAL08
	INC
	STA @LOCAL08
@UNKNOWN4:
	CMP @LOCAL0D
	BCC @UNKNOWN3
@UNKNOWN5:
	LDA @VIRTUAL04
	ASL
	CLC
	ADC @LOCAL07
	TAX
	LDY @LOCAL04
	TYA
	JSR UNKNOWN_C4B923
	LDY @LOCAL04
	STY @LOCAL00
	LDA @LOCAL10
	STA @LOCAL01
	LDA @LOCAL0F
	STA @LOCAL02
	LDY @VIRTUAL02
	LDX @LOCAL0C
	LDA @LOCAL0B
	JSR UNKNOWN_C4BAF6
@UNKNOWN6:
	LDY @LOCAL0E
	LDX @LOCAL10
	LDA @VIRTUAL02
	CLC
	ADC #6
	JSR UNKNOWN_C4BD9A
	LDX @VIRTUAL02
	STA __BSS_START__+14,X
	LDX @LOCAL0E
	JSR UNKNOWN_C4BF7F
	STA @LOCAL03
	ASL
	ASL
	JSR UNKNOWN_C4B587
	STA @LOCAL0A
	STZ @LOCAL08
	BRA @UNKNOWN8
@UNKNOWN7:
	LDA @LOCAL08
	ASL
	ASL
	TAX
	STX @VIRTUAL02
	LDA @LOCAL0A
	CLC
	ADC @VIRTUAL02
	TAY
	TXA
	CLC
	ADC @LOCAL0E
	TAX
	MOVE_INT_XPTRSRC_YPTRDEST __BSS_START__, __BSS_START__
	INC @LOCAL08
@UNKNOWN8:
	LDA @LOCAL08
	CMP @LOCAL03
	BCC @UNKNOWN7
	LDA @LOCAL03
	LDX @LOCAL12
	STX @VIRTUAL02
	STA __BSS_START__+10,X
	LDA @LOCAL0A
	LDX @VIRTUAL02
	STA __BSS_START__+12,X
	LDA @LOCAL03
	BEQ @UNKNOWN9
	INC @LOCAL09
@UNKNOWN9:
	INC @VIRTUAL04
@UNKNOWN10:
	LDA @VIRTUAL04
	CMP @LOCAL0D
	BCCL @UNKNOWN1
	LDA @LOCAL09
	END_C_FUNCTION
