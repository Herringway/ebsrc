
NAME_REGISTRY_REQUEST_STRING:
.IF .DEFINED(JPN)
	.BYTE "\xDB\xEF\x25\xBD\x25\xA8\x20\x68\x6C\x90\x5B" ;プレーヤーの なまえ:
.ELSE
	EBTEXT "Register your name, please"
.ENDIF
