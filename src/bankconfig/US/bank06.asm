.SEGMENT "BANK06"
.INCLUDE "common.asm"
.INCLUDE "symbols/text.inc.asm"

;$C60000
.INCLUDE "bin/US/text_data/E09DSRT.ebtxt"
;$C62D30
.INCLUDE "bin/US/text_data/ESHOP3.ebtxt"
;$C659C9
.INCLUDE "bin/US/text_data/E01ONET2.ebtxt"

.SEGMENT "BANK06B"
;$C68000
.INCLUDE "bin/US/text_data/EGLOBAL.ebtxt"
;$C6A9F9
.INCLUDE "bin/US/text_data/E06WINS.ebtxt"
;$C6D19C
.INCLUDE "bin/US/text_data/E10FOUR0.ebtxt"
;$C6F8D9
.INCLUDE "bin/US/text_data/EGOODS3.ebtxt"
