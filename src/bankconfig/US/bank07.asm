.SEGMENT "BANK07"
.INCLUDE "common.asm"
.INCLUDE "symbols/text.inc.asm"

;$C70000
.INCLUDE "bin/US/text_data/EHINT.ebtxt"
;$C72709
.INCLUDE "bin/US/text_data/E01ONET1.ebtxt"
;$C74BA9
.INCLUDE "bin/US/text_data/E01ONET0.ebtxt"
;$C76F20
.INCLUDE "bin/US/text_data/E18MGKT.ebtxt"
;$C77DCE
.INCLUDE "bin/US/text_data/EGOODS4.ebtxt"

.SEGMENT "BANK07B"
;$C78000
.INCLUDE "bin/US/text_data/EEVENT1.ebtxt"
;$C7A2F7
.INCLUDE "bin/US/text_data/EEVENT4.ebtxt"
;$C7C588
.INCLUDE "bin/US/text_data/ESYSTEM.ebtxt"
;$C7E797
.INCLUDE "bin/US/text_data/E08DOSEI.ebtxt"
