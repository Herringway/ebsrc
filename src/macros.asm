.INCLUDE "textmacros.asm"

.macro PTR3 addr
    .WORD .LOWORD(addr)
    .BYTE .LOBYTE(.HIWORD(addr))
.endmacro

.macro BYTE3 addr
	.WORD .LOWORD(addr)
	.BYTE .LOBYTE(.HIWORD(addr))
.endmacro

.macro PACKPTR addr
	.BYTE .LOBYTE(.HIWORD(addr))
	.WORD .LOWORD(addr)
.endmacro

.macro DISPLAY_TEXT_PTR addr
	LOADPTR addr, $0E
	JSL DISPLAY_TEXT
.endmacro

.macro DISPLAY_BATTLE_TEXT_PTR addr
    LOADPTR addr, $0E
    JSL DISPLAY_IN_BATTLE_TEXT
.endmacro

.macro LOADPTR ptr, var
    LDA #.LOWORD(ptr)
    STA var
    LDA #.HIWORD(ptr)
    STA var+2
.endmacro

.macro LOADPTRPTR ptr, var
    LDA .LOWORD(ptr)
    STA var
    LDA .LOWORD(ptr)+2
    STA var+2
.endmacro

.macro EBTEXT str
    .repeat .strlen(str), i
        .if .strat(str, i) = ' '
            .BYTE $50
        .elseif .strat(str, i) = '!'
            .BYTE $51
        .elseif .strat(str, i) = '&'
            .BYTE $52
        .elseif .strat(str, i) = '{'
            .BYTE $53
        .elseif .strat(str, i) = '$'
            .BYTE $54
        .elseif .strat(str, i) = '%'
            .BYTE $55
        .elseif .strat(str, i) = '}'
            .BYTE $56
        .elseif .strat(str, i) = $27
            .BYTE $57
        .elseif .strat(str, i) = '('
            .BYTE $58
        .elseif .strat(str, i) = ')'
            .BYTE $59
        .elseif .strat(str, i) = '*'
            .BYTE $5A
        .elseif .strat(str, i) = '+'
            .BYTE $5B
        .elseif .strat(str, i) = ','
            .BYTE $5C
        .elseif .strat(str, i) = '-'
            .BYTE $5D
        .elseif .strat(str, i) = '.'
            .BYTE $5E
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
        .elseif .strat(str, i) = ':'
            .BYTE $6A
        .elseif .strat(str, i) = ';'
            .BYTE $6B
        .elseif .strat(str, i) = '<'
            .BYTE $6C
        .elseif .strat(str, i) = '='
            .BYTE $6D
        .elseif .strat(str, i) = '>'
            .BYTE $6E
        .elseif .strat(str, i) = '?'
            .BYTE $6F
        .elseif .strat(str, i) = '@'
            .BYTE $70
        .elseif .strat(str, i) = 'A'
            .BYTE $71
        .elseif .strat(str, i) = 'B'
            .BYTE $72
        .elseif .strat(str, i) = 'C'
            .BYTE $73
        .elseif .strat(str, i) = 'D'
            .BYTE $74
        .elseif .strat(str, i) = 'E'
            .BYTE $75
        .elseif .strat(str, i) = 'F'
            .BYTE $76
        .elseif .strat(str, i) = 'G'
            .BYTE $77
        .elseif .strat(str, i) = 'H'
            .BYTE $78
        .elseif .strat(str, i) = 'I'
            .BYTE $79
        .elseif .strat(str, i) = 'J'
            .BYTE $7A
        .elseif .strat(str, i) = 'K'
            .BYTE $7B
        .elseif .strat(str, i) = 'L'
            .BYTE $7C
        .elseif .strat(str, i) = 'M'
            .BYTE $7D
        .elseif .strat(str, i) = 'N'
            .BYTE $7E
        .elseif .strat(str, i) = 'O'
            .BYTE $7F
        .elseif .strat(str, i) = 'P'
            .BYTE $80
        .elseif .strat(str, i) = 'Q'
            .BYTE $81
        .elseif .strat(str, i) = 'R'
            .BYTE $82
        .elseif .strat(str, i) = 'S'
            .BYTE $83
        .elseif .strat(str, i) = 'T'
            .BYTE $84
        .elseif .strat(str, i) = 'U'
            .BYTE $85
        .elseif .strat(str, i) = 'V'
            .BYTE $86
        .elseif .strat(str, i) = 'W'
            .BYTE $87
        .elseif .strat(str, i) = 'X'
            .BYTE $88
        .elseif .strat(str, i) = 'Y'
            .BYTE $89
        .elseif .strat(str, i) = 'Z'
            .BYTE $8A
        .elseif .strat(str, i) = '~'
            .BYTE $8B
        .elseif .strat(str, i) = '^'
            .BYTE $8C
        .elseif .strat(str, i) = '['
            .BYTE $8D
        .elseif .strat(str, i) = ']'
            .BYTE $8E
        .elseif .strat(str, i) = '#'
            .BYTE $8F
        .elseif .strat(str, i) = '_'
            .BYTE $90
        .elseif .strat(str, i) = 'a'
            .BYTE $91
        .elseif .strat(str, i) = 'b'
            .BYTE $92
        .elseif .strat(str, i) = 'c'
            .BYTE $93
        .elseif .strat(str, i) = 'd'
            .BYTE $94
        .elseif .strat(str, i) = 'e'
            .BYTE $95
        .elseif .strat(str, i) = 'f'
            .BYTE $96
        .elseif .strat(str, i) = 'g'
            .BYTE $97
        .elseif .strat(str, i) = 'h'
            .BYTE $98
        .elseif .strat(str, i) = 'i'
            .BYTE $99
        .elseif .strat(str, i) = 'j'
            .BYTE $9A
        .elseif .strat(str, i) = 'k'
            .BYTE $9B
        .elseif .strat(str, i) = 'l'
            .BYTE $9C
        .elseif .strat(str, i) = 'm'
            .BYTE $9D
        .elseif .strat(str, i) = 'n'
            .BYTE $9E
        .elseif .strat(str, i) = 'o'
            .BYTE $9F
        .elseif .strat(str, i) = 'p'
            .BYTE $A0
        .elseif .strat(str, i) = 'q'
            .BYTE $A1
        .elseif .strat(str, i) = 'r'
            .BYTE $A2
        .elseif .strat(str, i) = 's'
            .BYTE $A3
        .elseif .strat(str, i) = 't'
            .BYTE $A4
        .elseif .strat(str, i) = 'u'
            .BYTE $A5
        .elseif .strat(str, i) = 'v'
            .BYTE $A6
        .elseif .strat(str, i) = 'w'
            .BYTE $A7
        .elseif .strat(str, i) = 'x'
            .BYTE $A8
        .elseif .strat(str, i) = 'y'
            .BYTE $A9
        .elseif .strat(str, i) = 'z'
            .BYTE $AA
        .elseif .strat(str, i) = '\'
            .BYTE $AC
        .else
            .warning .sprintf("Unknown character %c", .strat(str, i))
        .endif
    .endrepeat
.endmacro

.MACRO PADDEDEBTEXT str, len
    EBTEXT str
    .REPEAT len-.STRLEN(str)
        .BYTE $00
    .ENDREPEAT
.ENDMACRO

.MACRO EBTEXTZ str
    EBTEXT str
    .BYTE $00
.ENDMACRO
