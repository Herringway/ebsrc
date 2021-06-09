
UNKNOWN_C02C4E: ;$C02C4E (JP)
        REP #%00110001
        PHD
        TDC
        ADC #$FFEA
        TCD
        LDY #$0000
        STY $14
        JMP $2E07
        TYA
        ASL
        ASL
        TAX
        LOADPTR $C3E0A6, $0A
        TXA
        CLC
        ADC $0A
        STA $0A
        LDY #$0002
        LDA [$0A],Y
        TAY
        LDA [$0A]
        STA $06
        STY $08
        MOVE_INT $06, $0E
        MOVE_INT_CONSTANT 0, $06
        LDY $14
        TYA
        ASL
        ASL
        ASL
        ASL
        ASL
        STA $12
        CLC
        ADC #$516C
        TAY
        MOVE_INT_YPTRDEST $06, a:$0000
        LDA $12
        CLC
        ADC #$515C
        TAY
        MOVE_INT_YPTRDEST $06, a:$0000
        LDA $12
        CLC
        ADC #$5334
        TAY
        MOVE_INT_YPTRDEST $06, a:$0000
        LDA $12
        CLC
        ADC #$5324
        TAY
        MOVE_INT_YPTRDEST $06, a:$0000
        MOVE_INT $0E, $06
        LDA $12
        CLC
        ADC #$532C
        TAY
        MOVE_INT_YPTRDEST $06, a:$0000
        LDA $12
        CLC
        ADC #$5164
        TAY
        MOVE_INT_YPTRDEST $06, a:$0000
        MOVE_INT $0E, $06
        SEC
        NEGATE_INT_ASSIGN $06
        LDA $12
        CLC
        ADC #$531C
        TAY
        MOVE_INT_YPTRDEST $06, a:$0000
        LDA $12
        CLC
        ADC #$5174
        TAY
        MOVE_INT_YPTRDEST $06, a:$0000
        LOADPTR $C3E0DE, $0A
        TXA
        CLC
        ADC $0A
        STA $0A
        LDY #$0002
        LDA [$0A],Y
        TAY
        LDA [$0A]
        STA $06
        STY $08
        MOVE_INT $06, $0E
        LDA $12
        CLC
        ADC #$5330
        TAY
        MOVE_INT_YPTRDEST $06, a:$0000
        LDA $12
        CLC
        ADC #$5328
        TAY
        MOVE_INT_YPTRDEST $06, a:$0000
        LDA $12
        CLC
        ADC #$5168
        TAY
        MOVE_INT_YPTRDEST $06, a:$0000
        LDA $12
        CLC
        ADC #$5160
        TAY
        MOVE_INT_YPTRDEST $06, a:$0000
        MOVE_INT $0E, $06
        SEC
        LDA #$0000
        SBC $06
        STA $06
        LDA #$0000
        SBC $08
        STA $08
        LDA $12
        CLC
        ADC #$5338
        TAY
        MOVE_INT_YPTRDEST $06, a:$0000
        LDA $12
        CLC
        ADC #$5320
        TAY
        MOVE_INT_YPTRDEST $06, a:$0000
        LDA $12
        CLC
        ADC #$5170
        TAY
        MOVE_INT_YPTRDEST $06, a:$0000
        LDA $12
        CLC
        ADC #$5178
        TAY
        MOVE_INT_YPTRDEST $06, a:$0000
        LDY $14
        INY
        STY $14
        CPY #$000E
        BCS @UNKNOWN0
        BEQ @UNKNOWN0
        JMP $2C5E
@UNKNOWN0:
        PLD
        RTL
