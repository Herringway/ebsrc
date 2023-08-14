.SEGMENT "BANK09"
.INCLUDE "common.asm"
.INCLUDE "symbols/bank2f.inc.asm"
.INCLUDE "symbols/misc.inc.asm"
.INCLUDE "symbols/text.inc.asm"

; $C90000
.INCLUDE "bin/JP/text_data/EGLOBAL.ebtxt"

; huh, why is this here?
.BYTE $40

; $C925A1
.INCLUDE "bin/JP/text_data/ESYSTEM.ebtxt"
; $C94173
.INCLUDE "bin/JP/text_data/E11SUMS.ebtxt"
; $C95CEB
.INCLUDE "bin/JP/text_data/EBGMESS.ebtxt"
; $C977B4
.INCLUDE "bin/JP/text_data/E07GPFT.ebtxt"
; $C98000
.INCLUDE "bin/JP/text_data/UNKNOWN_C9992F.ebtxt"
; $C99707
.INCLUDE "bin/JP/text_data/E08DOSEI.ebtxt"
; $C9AB1F
.INCLUDE "bin/JP/text_data/E19MOON.ebtxt"
; $C9B91B
.INCLUDE "bin/JP/text_data/E12RAMA.ebtxt"
; $C9C671
.INCLUDE "bin/JP/text_data/E15GUMI.ebtxt"
; $C9D315
.INCLUDE "bin/JP/text_data/E14MAKYO.ebtxt"

.INCLUDE "data/command_window_text.asm"

.INCLUDE "data/status_window_text.asm"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_0: ;$EFA460
	BINARY "name_input_layouts/0.bin"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_1: ;$EFA4E3
	BINARY "name_input_layouts/1.bin"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_2: ;$EFA566
	BINARY "name_input_layouts/2.bin"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_3: ;$EFA5E9
	BINARY "name_input_layouts/3.bin"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_4: ;$EFA66C
	BINARY "name_input_layouts/4.bin"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_5: ;$EFA6A7
	BINARY "name_input_layouts/5.bin"

.INCLUDE "data/name_input_window_selection_layout_pointers.asm"

; $C9E27C
.INCLUDE "bin/JP/text_data/UNKNOWN7.ebtxt"
