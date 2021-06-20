
WINDOW_CONFIGURATION_TABLE: ;$C3E250
.IF .DEFINED(JPN)
	.WORD $0001, $0001, $000C, $0008
.ELSE
	.WORD $0001, $0001, $000D, $0008
.ENDIF
	.WORD $000C, $0001, $0013, $0008 ; Out-of-battle text
	.WORD $0007, $0001, $0018, $0010 ; Main inventory window
.IF .DEFINED(JPN)
	.WORD $0001, $0001, $0007, $000A ; Inventory menu
.ELSE
	.WORD $0001, $0001, $0006, $000A ; Inventory menu
.ENDIF
	.WORD $0001, $0003, $000B, $0006
	.WORD $0014, $0001, $000B, $0010 ; Phone menu
.IF .DEFINED(JPN)
	.WORD $0007, $0001, $0011, $000A ; Equip menu
.ELSE
	.WORD $0008, $0001, $0014, $000A ; Equip menu
.ENDIF
	.WORD $0012, $0001, $000D, $0010 ; Item list for equip menu
	.WORD $0001, $0001, $001E, $0012 ; Status menu
	.WORD $000C, $0001, $0013, $0012 ; Used by status screen?
.IF .DEFINED(JPN)
	.WORD $0001, $000A, $0009, $0004 ; Carried money window
.ELSE
	.WORD $0001, $000A, $0008, $0004 ; Carried money window
.ENDIF
	.WORD $0001, $000F, $000B, $0004 ; Used by status screen?
	.WORD $000C, $0001, $0013, $0010
.IF .DEFINED(JPN)
	.WORD $0007, $0001, $0018, $0012
	.WORD $0004, $0001, $0018, $0006 ; In-battle text
	.WORD $0001, $0001, $0011, $0006 ; Normal battle menu
	.WORD $0005, $0001, $0007, $0008
	.WORD $0007, $0001, $000C, $0004
	.WORD $0001, $0001, $000C, $0006 ; Jeff' s Battle menu
	.WORD $0003, $0003, $001A, $0008 ; File Select
	.WORD $0005, $000A, $0016, $0004 ; Overworld Menu
	.WORD $0009, $0010, $000D, $0008 ; Copy Menu (2 choices)
	.WORD $0009, $0010, $000D, $0006 ; Copy Menu (1 choice)
	.WORD $0008, $0010, $0010, $000A ; Delete confirmation
	.WORD $0004, $000F, $000B, $000A ; Text Speed
	.WORD $000A, $0010, $0008, $0008 ; Music Mode
	.WORD $0005, $0002, $0009, $0004 ; Naming Box
	.WORD $000E, $0002, $0010, $0004 ; "Name This Friend"
	.WORD $0001, $0007, $001E, $0014 ; Name input box
	.WORD $0007, $0003, $0006, $0004 ; Ness's Name
	.WORD $0007, $0007, $0006, $0004 ; Paula's Name
	.WORD $0007, $000B, $0006, $0004 ; Jeff's Name
	.WORD $0007, $000F, $0006, $0004 ; Poo's Name
	.WORD $0014, $0003, $0008, $0004 ; King's Name
	.WORD $000E, $0007, $000E, $0006 ; Favourite Food
	.WORD $000E, $000D, $000E, $0006 ; Favourite Thing
	.WORD $0004, $0015, $0018, $0004 ; "Are you sure?"
	.WORD $0014, $0006, $000B, $0008
.ELSE
	.WORD $0007, $0001, $0018, $0010
	.WORD $0004, $0001, $0018, $0006 ; In-battle text
	.WORD $0001, $0001, $0015, $0006 ; Normal battle menu
	.WORD $0004, $0001, $0008, $0008
	.WORD $000C, $0001, $000C, $0004
	.WORD $0001, $0001, $000E, $0006 ; Jeff' s Battle menu
	.WORD $0001, $0002, $001E, $0008 ; File Select
	.WORD $0005, $0009, $0016, $0004 ; Overworld Menu
	.WORD $000A, $0010, $000C, $0008 ; Copy Menu (2 choices)
	.WORD $000A, $0010, $000C, $0006 ; Copy Menu (1 choice)
	.WORD $0006, $0011, $0015, $000A ; Delete confirmation
	.WORD $0003, $000E, $0010, $000A ; Text Speed
	.WORD $0008, $000F, $0012, $0008 ; Music Mode
	.WORD $0005, $0004, $0008, $0004 ; Naming Box
	.WORD $000D, $0004, $0011, $0004 ; "Name This Friend"
	.WORD $0001, $0009, $001E, $0010 ; Name input box
	.WORD $0007, $0003, $0007, $0004 ; Ness's Name
	.WORD $0007, $0007, $0007, $0004 ; Paula's Name
	.WORD $0007, $000B, $0007, $0004 ; Jeff's Name
	.WORD $0007, $000F, $0007, $0004 ; Poo's Name
	.WORD $0014, $0003, $0008, $0004 ; King's Name
	.WORD $000F, $0007, $000D, $0006 ; Favourite Food
	.WORD $000F, $000D, $000D, $0006 ; Favourite Thing
	.WORD $0004, $0015, $0018, $0004 ; "Are you sure?"
	.WORD $0012, $0006, $000D, $0008
.ENDIF
	.WORD $000C, $0001, $000C, $0004
.IF .DEFINED(JPN)
	.WORD $0003, $0001, $001A, $0006
	.WORD $0001, $0001, $0006, $0004
	.WORD $0012, $0006, $000D, $0004
	.WORD $000C, $0006, $0013, $0004
	.WORD $0006, $0006, $0019, $0004
.ELSE
	.WORD $0003, $0003, $001A, $0006
	.WORD $0001, $0001, $0007, $0004
	.IF .DEFINED(PROTOTYPE19950327)
		.WORD $0011, $0008, $000E, $0004
		.WORD $000B, $0008, $0014, $0004
		.WORD $0005, $0008, $001A, $0004
	.ELSE
		.WORD $0010, $0008, $000F, $0004
		.WORD $000A, $0008, $0015, $0004
		.WORD $0004, $0008, $001B, $0004
	.ENDIF
.ENDIF
	.WORD $0008, $0002, $0018, $0010
.IF .DEFINED(JPN)
	.WORD $0002, $000B, $0010, $0006
	.WORD $0005, $0001, $0007, $000A
	.WORD $0001, $0009, $001E, $000A
	.WORD $0001, $0001, $0016, $0006
	.WORD $0009, $0004, $0016, $0004
.ELSE
	.WORD $0003, $000B, $000F, $0006
	.WORD $0004, $0001, $0008, $000A
	.WORD $0001, $0009, $001E, $000A
	.WORD $0001, $0001, $001C, $0006
	.IF .DEFINED(PROTOTYPE19950327)
		.WORD $000C, $0004, $0013, $0004
	.ELSE
		.WORD $000A, $0004, $0014, $0004
	.ENDIF
.ENDIF
.IF .DEFINED(JPN)
	.WORD $0010, $000D, $000C, $000E ; File select: flavour selection
	.WORD $0018, $0006, $0007, $0004
.ELSE
	.WORD $000E, $000B, $000F, $0010 ; File select: flavour selection
	.IF.DEFINED(PROTOTYPE19950327)
		.WORD $0017, $0008, $0008, $0004
	.ELSE
		.WORD $0016, $0008, $0009, $0004
	.ENDIF
	.WORD $0007, $0009, $0012, $0012
.ENDIF
