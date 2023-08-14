.SEGMENT "BANK08"
.INCLUDE "common.asm"
.INCLUDE "symbols/text.inc.asm"

;$C80000
.INCLUDE "bin/US19950327/text_data/E02TWSN0.ebtxt"
;$C820F9
.INCLUDE "bin/US19950327/text_data/ENEWS.ebtxt"
;$C8416A
.INCLUDE "bin/US19950327/text_data/E10FOUR1.ebtxt"
;$C861D7
.INCLUDE "bin/US19950327/text_data/E11SUMS.ebtxt"

.SEGMENT "BANK08B"
;$C88000
.INCLUDE "bin/US19950327/text_data/EEVENT2.ebtxt"
;$C89D7C
.INCLUDE "bin/US19950327/text_data/E05THRK.ebtxt"
;$C8BAF0
.INCLUDE "bin/US19950327/text_data/ESHOP2.ebtxt"
;$C8D73E
.INCLUDE "bin/US19950327/text_data/EBGMESS.ebtxt"
;$C8F30F
.INCLUDE "bin/US19950327/text_data/E15GUMI.ebtxt"
