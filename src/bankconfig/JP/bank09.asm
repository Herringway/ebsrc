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

.INCLUDE "bin/JP/text_data/KEYBOARD.ebtxt"

.INCLUDE "data/name_input_window_selection_layout_pointers.asm"

.INCLUDE "bin/JP/text_data/UNKNOWN7.ebtxt"
