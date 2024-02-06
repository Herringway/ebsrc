
PSI_TARGET_TEXT:
.IF .DEFINED(JPN)
	PADDEDASCII "\x96\x72\x78", 9 ;てきに
	PADDEDASCII "\x96\x72\x20\x79\xA6\x7F\x78", 9 ;てき ひとりに
	PADDEDASCII "\x96\x72\x20\x67\x9F\x62\x78", 9 ;てき だれかに
	PADDEDASCII "\x96\x72\x20\x70\x76\x9F\x86\x78", 9 ;てき いちれつに
	PADDEDASCII "\x96\x72\x20\x95\x9D\x70\x9D\x78", 9 ;てき ぜんいんに
	PADDEDASCII "\x75\x8A\x9D\x78", 9 ;じぶんに
	PADDEDASCII "\x7C\x62\x66\x20\x79\xA6\x7F\x78", 9 ;みかた ひとりに
	PADDEDASCII "\x7C\x62\x66\x20\x67\x9F\x62\x78", 9 ;みかた だれかに
	PADDEDASCII "\x7C\x62\x66\x20\x95\x9D\x70\x9D\x78", 9 ;みかた ぜんいんに
	PADDEDASCII "\x7C\x62\x66\x20\x95\x9D\x70\x9D\x78", 9 ;みかた ぜんいんに
.ELSE
	PADDEDEBTEXT "To enemy", 20
	PADDEDEBTEXT "To one enemy", 20
	PADDEDEBTEXT "to One Enemy", 20
	PADDEDEBTEXT "To row of foes", 20
	PADDEDEBTEXT "To all enemies", 20
	PADDEDEBTEXT "himself", 20
	PADDEDEBTEXT "To one of us", 20
	PADDEDEBTEXT "to One Friend", 20
	PADDEDEBTEXT "To all of us", 20
	PADDEDEBTEXT "To all of us", 20
.ENDIF
