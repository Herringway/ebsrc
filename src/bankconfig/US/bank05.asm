.SEGMENT "BANK05"
.INCLUDE "common.asm"
.INCLUDE "symbols/text.inc.asm"

;$C50000
.INCLUDE "bin/US/text_data/ESHOP0.ebtxt"
;$C53711
.INCLUDE "bin/US/text_data/EEXPLGDS.ebtxt"
;$C56DF3
.INCLUDE "bin/US/text_data/E13SKRB.ebtxt"
;$C57E1C
.INCLUDE "bin/US/text_data/E17PAST.ebtxt"

.SEGMENT "BANK05B"
;$C58000
.INCLUDE "bin/US/text_data/EDEBUG.ebtxt"
;$C5B3BA
.INCLUDE "bin/US/text_data/ESHOP1.ebtxt"
;$C5E5BC
.INCLUDE "bin/US/text_data/EEVENT0.ebtxt"
