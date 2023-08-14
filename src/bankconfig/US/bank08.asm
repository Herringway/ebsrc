.SEGMENT "BANK08"
.INCLUDE "common.asm"
.INCLUDE "symbols/text.inc.asm"

;$C80000
.INCLUDE "bin/US/text_data/E02TWSN0.ebtxt"
;$C82105
.INCLUDE "bin/US/text_data/E10FOUR1.ebtxt"
;$C841DE
.INCLUDE "bin/US/text_data/ENEWS.ebtxt"
;$C86279
.INCLUDE "bin/US/text_data/EBGMESS.ebtxt"

.SEGMENT "BANK08B"
;$C88000
.INCLUDE "bin/US/text_data/EEVENT2.ebtxt"
;$C89E1B
.INCLUDE "bin/US/text_data/E11SUMS.ebtxt"

.INCLUDE "data/text/compressed_text_data.asm"

.INCLUDE "data/text/compressed_text_pointers.asm"

;$C8D9ED
.INCLUDE "bin/US/text_data/E05THRK.ebtxt"
;$C8F77D
.INCLUDE "bin/US/text_data/EBATTLE6.ebtxt"
