.SEGMENT "BANK09"
.INCLUDE "common.asm"
.INCLUDE "symbols/bank2f.inc.asm"
.INCLUDE "symbols/misc.inc.asm"
.INCLUDE "symbols/text.inc.asm"

.INCLUDE "bin/JP/text_data/EGLOBAL.ebtxt"

; huh, why is this here?
.BYTE $40

.INCLUDE "bin/JP/text_data/ESYSTEM.ebtxt"

.INCLUDE "bin/JP/text_data/E11SUMS.ebtxt"

.INCLUDE "bin/JP/text_data/EBGMESS.ebtxt"

.INCLUDE "bin/JP/text_data/E07GPFT.ebtxt"

.INCLUDE "bin/JP/text_data/UNKNOWN_C9992F.ebtxt"

.INCLUDE "bin/JP/text_data/E08DOSEI.ebtxt"

.INCLUDE "bin/JP/text_data/E19MOON.ebtxt"

.INCLUDE "bin/JP/text_data/E12RAMA.ebtxt"

.INCLUDE "bin/JP/text_data/E15GUMI.ebtxt"

.INCLUDE "bin/JP/text_data/E14MAKYO.ebtxt"

.INCLUDE "data/command_window_text.asm"

.INCLUDE "data/status_window_text.asm"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_0:
	BINARY "name_input_layouts/0.bin"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_1:
	BINARY "name_input_layouts/1.bin"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_2:
	BINARY "name_input_layouts/2.bin"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_3:
	BINARY "name_input_layouts/3.bin"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_4:
	BINARY "name_input_layouts/4.bin"

NAME_INPUT_WINDOW_SELECTION_LAYOUT_5:
	BINARY "name_input_layouts/5.bin"

.INCLUDE "data/name_input_window_selection_layout_pointers.asm"

.INCLUDE "bin/JP/text_data/UNKNOWN7.ebtxt"
