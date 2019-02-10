.MACRO EBSTAFF_END
	.BYTE $00
.ENDMACRO

.MACRO EBSTAFF_SMALLTEXT str
	.BYTE $01
    .repeat .strlen(str), i
        .if .strat(str, i) = ' '
            .BYTE $40
        .elseif .strat(str, i) = 'A'
            .BYTE $42
        .elseif .strat(str, i) = 'B'
            .BYTE $52
        .elseif .strat(str, i) = 'C'
            .BYTE $44
        .elseif .strat(str, i) = 'D'
            .BYTE $54
        .elseif .strat(str, i) = 'E'
            .BYTE $45
        .elseif .strat(str, i) = 'F'
            .BYTE $55
        .elseif .strat(str, i) = 'G'
            .BYTE $46
        .elseif .strat(str, i) = 'H'
            .BYTE $56
        .elseif .strat(str, i) = 'I'
            .BYTE $48
        .elseif .strat(str, i) = 'J'
            .BYTE $58
        .elseif .strat(str, i) = 'K'
            .BYTE $49
        .elseif .strat(str, i) = 'L'
            .BYTE $59
        .elseif .strat(str, i) = 'M'
            .BYTE $4A
        .elseif .strat(str, i) = 'N'
            .BYTE $5A
        .elseif .strat(str, i) = 'O'
            .BYTE $4B
        .elseif .strat(str, i) = 'P'
            .BYTE $5B
        .elseif .strat(str, i) = 'Q'
            .BYTE $6A
        .elseif .strat(str, i) = 'R'
            .BYTE $7A
        .elseif .strat(str, i) = 'S'
            .BYTE $6B
        .elseif .strat(str, i) = 'T'
            .BYTE $7B
        .elseif .strat(str, i) = 'U'
            .BYTE $6C
        .elseif .strat(str, i) = 'V'
            .BYTE $7C
        .elseif .strat(str, i) = 'W'
            .BYTE $6D
        .elseif .strat(str, i) = 'X'
            .BYTE $7D
        .elseif .strat(str, i) = 'Y'
            .BYTE $6E
        .elseif .strat(str, i) = 'Z'
            .BYTE $7E
        .elseif .strat(str, i) = '_'
            .BYTE $80
        .elseif .strat(str, i) = '.'
            .BYTE $AD
        .else
            .warning .sprintf("Unknown character %c", .strat(str, i))
        .endif
    .endrepeat
    .BYTE $00
.ENDMACRO

.MACRO EBSTAFF_BIGTEXT str
	.BYTE $02
    .repeat .strlen(str), i
        .if .strat(str, i) = ' '
            .BYTE $40
        .elseif .strat(str, i) = '!'
            .BYTE $41
        .elseif .strat(str, i) = '@'
            .BYTE $43
        .elseif .strat(str, i) = $27
            .BYTE $47
        .elseif .strat(str, i) = ','
            .BYTE $4C
        .elseif .strat(str, i) = '-'
            .BYTE $4D
        .elseif .strat(str, i) = '.'
            .BYTE $4E
        .elseif .strat(str, i) = '/'
            .BYTE $4F
        .elseif .strat(str, i) = '0'
            .BYTE $60
        .elseif .strat(str, i) = '1'
            .BYTE $61
        .elseif .strat(str, i) = '2'
            .BYTE $62
        .elseif .strat(str, i) = '3'
            .BYTE $63
        .elseif .strat(str, i) = '4'
            .BYTE $64
        .elseif .strat(str, i) = '5'
            .BYTE $65
        .elseif .strat(str, i) = '6'
            .BYTE $66
        .elseif .strat(str, i) = '7'
            .BYTE $67
        .elseif .strat(str, i) = '8'
            .BYTE $68
        .elseif .strat(str, i) = '9'
            .BYTE $69
        .elseif .strat(str, i) = '?'
            .BYTE $6F
        .elseif .strat(str, i) = '_'
            .BYTE $80
        .elseif .strat(str, i) = 'A'
            .BYTE $81
        .elseif .strat(str, i) = 'B'
            .BYTE $82
        .elseif .strat(str, i) = 'C'
            .BYTE $83
        .elseif .strat(str, i) = 'D'
            .BYTE $84
        .elseif .strat(str, i) = 'E'
            .BYTE $85
        .elseif .strat(str, i) = 'F'
            .BYTE $86
        .elseif .strat(str, i) = 'G'
            .BYTE $87
        .elseif .strat(str, i) = 'H'
            .BYTE $88
        .elseif .strat(str, i) = 'I'
            .BYTE $89
        .elseif .strat(str, i) = 'J'
            .BYTE $8A
        .elseif .strat(str, i) = 'K'
            .BYTE $8B
        .elseif .strat(str, i) = 'L'
            .BYTE $8C
        .elseif .strat(str, i) = 'M'
            .BYTE $8D
        .elseif .strat(str, i) = 'N'
            .BYTE $8E
        .elseif .strat(str, i) = 'O'
            .BYTE $8F
        .elseif .strat(str, i) = 'P'
            .BYTE $A0
        .elseif .strat(str, i) = 'Q'
            .BYTE $A1
        .elseif .strat(str, i) = 'R'
            .BYTE $A2
        .elseif .strat(str, i) = 'S'
            .BYTE $A3
        .elseif .strat(str, i) = 'T'
            .BYTE $A4
        .elseif .strat(str, i) = 'U'
            .BYTE $A5
        .elseif .strat(str, i) = 'V'
            .BYTE $A6
        .elseif .strat(str, i) = 'W'
            .BYTE $A7
        .elseif .strat(str, i) = 'X'
            .BYTE $A8
        .elseif .strat(str, i) = 'Y'
            .BYTE $A9
        .elseif .strat(str, i) = 'Z'
            .BYTE $AA
        .elseif .strat(str, i) = ';'
            .BYTE $AD
        .else
            .warning .sprintf("Unknown character %c", .strat(str, i))
        .endif
    .endrepeat
    .BYTE $00
.ENDMACRO

.MACRO EBSTAFF_VERTICALSPACE arg
	.BYTE $03, arg
.ENDMACRO

.MACRO EBSTAFF_PRINTPLAYER
	.BYTE $04
.ENDMACRO

.MACRO EBSTAFF_ENDCREDITS
	.BYTE $FF
.ENDMACRO
