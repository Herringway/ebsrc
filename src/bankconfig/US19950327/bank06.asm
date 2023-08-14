.SEGMENT "BANK06"
.INCLUDE "common.asm"
.INCLUDE "symbols/text.inc.asm"

;$C60000
.INCLUDE "bin/US19950327/text_data/E09DSRT.ebtxt"
;$C62C9F
.INCLUDE "bin/US19950327/text_data/ESHOP3.ebtxt"
;$C658F1
.INCLUDE "bin/US19950327/text_data/E10FOUR0.ebtxt"

.SEGMENT "BANK06B"
;$C68000
.INCLUDE "bin/US19950327/text_data/EGLOBAL.ebtxt"
;$C6A9E4
.INCLUDE "bin/US19950327/text_data/E06WINS.ebtxt"
;$C6D166
.INCLUDE "bin/US19950327/text_data/EHINT.ebtxt"
;$C6F886
.INCLUDE "bin/US19950327/text_data/EGOODS3.ebtxt"
