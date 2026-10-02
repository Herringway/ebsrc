.SEGMENT "BANK09"
.INCLUDE "common.asm"
.INCLUDE "symbols/bank2f.inc.asm"
.INCLUDE "symbols/misc.inc.asm"
.INCLUDE "symbols/text.inc.asm"

LOCALEINCLUDE "text_data/EGLOBAL.ebtxt"

; huh, why is this here?
.BYTE $40

LOCALEINCLUDE "text_data/ESYSTEM.ebtxt"

LOCALEINCLUDE "text_data/E11SUMS.ebtxt"

LOCALEINCLUDE "text_data/EBGMESS.ebtxt"

LOCALEINCLUDE "text_data/E07GPFT.ebtxt"

.SEGMENT "BANK09B"

LOCALEINCLUDE "text_data/UNKNOWN_C9992F.ebtxt"

LOCALEINCLUDE "text_data/E08DOSEI.ebtxt"

LOCALEINCLUDE "text_data/E19MOON.ebtxt"

LOCALEINCLUDE "text_data/E12RAMA.ebtxt"

LOCALEINCLUDE "text_data/E15GUMI.ebtxt"

LOCALEINCLUDE "text_data/E14MAKYO.ebtxt"

.INCLUDE "data/command_window_text.asm"

.INCLUDE "data/status_window_text.asm"

LOCALEINCLUDE "text_data/KEYBOARD.ebtxt"

.INCLUDE "data/name_input_window_selection_layout_pointers.asm"

LOCALEINCLUDE "text_data/UNKNOWN7.ebtxt"
