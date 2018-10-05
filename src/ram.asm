.SEGMENT "RAM"
.INCLUDE "config.asm"
.INCLUDE "enums.asm"
.INCLUDE "structs.asm"
.INCLUDE "symbols.asm"

RAM: ;For pointers.
UNKNOWN_7E0000: ;$7E0000
	.RES 1
UNKNOWN_7E0001: ;$7E0001
	.RES 1
UNKNOWN_7E0002: ;$7E0002
	.RES 1
UNKNOWN_7E0003: ;$7E0003
	.RES 2
UNKNOWN_7E0005: ;$7E0005
	.RES 2
;;Some kind of pointer?
UNKNOWN_7E0007: ;$7E0007
	.RES 2
UNKNOWN_7E0009: ;$7E0009
	.RES 1
UNKNOWN_7E000A: ;$7E000A
	.RES 1
UNKNOWN_7E000B: ;$7E000B
	.RES 1
UNKNOWN_7E000C: ;$7E000C
	.RES 1
INIDISP_MIRROR: ;$7E000D
	.RES 1
OBSEL_MIRROR: ;$7E000E
	.RES 1
UNKNOWN_7E000F: ;$7E000F
	.RES 1
MOSAIC_MIRROR: ;$7E0010
	.RES 1
UNKNOWN_7E0011: ;$7E0011
	.RES 1
UNKNOWN_7E0012: ;$7E0012
	.RES 1
UNKNOWN_7E0013: ;$7E0013
	.RES 1
UNKNOWN_7E0014: ;$7E0014
	.RES 1
BG12NBA_MIRROR: ;$7E0015
	.RES 1
UNKNOWN_7E0016: ;$7E0016
	.RES 1
UNUSED_WH2_MIRROR: ;$7E0017
	.RES 1
UNKNOWN_7E0018: ;$7E0018
	.RES 2
TM_MIRROR: ;$7E001A
	.RES 1
TD_MIRROR: ;$7E001B
	.RES 1

.ORG $7E001D
UNKNOWN_7E001D: ;$7E001D
	.RES 1
UNKNOWN_7E001E: ;$7E001E
	.RES 1
HDMAEN_MIRROR: ;$7E001F
	.RES 1
UNKNOWN_7E0020: ;$7E0020
	.RES 1
UNKNOWN_7E0021: ;$7E0021
	.RES 1
UNKNOWN_7E0022: ;$7E0022
	.RES 1
UNKNOWN_7E0023: ;$7E0023
	.RES 1
RAND_A: ;$7E0024
	.RES 2
RAND_B: ;$7E0026
	.RES 2
UNKNOWN_7E0028: ;$7E0028
	.RES 1
UNKNOWN_7E0029: ;$7E0029
	.RES 1
UNKNOWN_7E002A: ;$7E002A
	.RES 1
UNKNOWN_7E002B: ;$7E002B
	.RES 1
UNKNOWN_7E002C: ;$7E002C
	.RES 1
UNKNOWN_7E002D: ;$7E002D
	.RES 1
UNKNOWN_7E002E: ;$7E002E
	.RES 1
UNKNOWN_7E002F: ;$7E002F
	.RES 1
UNKNOWN_7E0030: ;$7E0030
	.RES 1
BG1_X_POS: ;$7E0031
	.RES 2
BG1_Y_POS: ;$7E0033
	.RES 2
BG2_X_POS: ;$7E0035
	.RES 2
BG2_Y_POS: ;$7E0037
	.RES 2
BG3_X_POS: ;$7E0039
	.RES 2
BG3_Y_POS: ;$7E003B
	.RES 2
BG4_X_POS: ;$7E003D
	.RES 2
BG4_Y_POS: ;$7E003F
	.RES 2
BG1_X_POS_BUF: ;$7E0041
	.RES 4
BG1_Y_POS_BUF: ;$7E0045
	.RES 4
BG2_X_POS_BUF: ;$7E0049
	.RES 4
BG2_Y_POS_BUF: ;$7E004D
	.RES 4
BG3_X_POS_BUF: ;$7E0051
	.RES 4
BG3_Y_POS_BUF: ;$7E0055
	.RES 4
BG4_X_POS_BUF: ;$7E0059
	.RES 4
BG4_Y_POS_BUF: ;$7E005D
	.RES 4
UNKNOWN_7E0061: ;$7E0061
	.RES 2
UNKNOWN_7E0063: ;$7E0063
	.RES 2
PAD_1_STATE: ;$7E0065
	.RES 2
PAD_2_STATE: ;$7E0067
	.RES 2
PAD_1_HELD: ;$7E0069
	.RES 2
PAD_2_HELD: ;$7E006B
	.RES 2
PAD_1_PRESS: ;$7E006D
	.RES 2
PAD_2_PRESS: ;$7E006F
	.RES 2

.ORG $7E0077
UNKNOWN_7E0077: ;$7E0077
	.RES 1
UNKNOWN_7E0078: ;$7E0078
	.RES 1
UNKNOWN_7E0079: ;$7E0079
	.RES 1
UNKNOWN_7E007A: ;$7E007A
	.RES 1
UNKNOWN_7E007B: ;$7E007B
	.RES 1
UNKNOWN_7E007C: ;$7E007C
	.RES 1
UNKNOWN_7E007D: ;$7E007D
	.RES 1
UNKNOWN_7E007E: ;$7E007E
	.RES 1
UNKNOWN_7E007F: ;$7E007F
	.RES 1
UNKNOWN_7E0080: ;$7E0080
	.RES 1
UNKNOWN_7E0081: ;$7E0081
	.RES 2
UNKNOWN_7E0083: ;$7E0083
	.RES 2
UNKNOWN_7E0085: ;$7E0085
	.RES 2
UNKNOWN_7E0087: ;$7E0087
	.RES 2
UNKNOWN_7E0089: ;$7E0089
	.RES 2
UNKNOWN_7E008B: ;$7E008B
	.RES 2
UNKNOWN_7E008D: ;$7E008D
	.RES 2
UNKNOWN_7E008F: ;$7E008F
	.RES 2
UNKNOWN_7E0091: ;$7E0091
	.RES 1
UNKNOWN_7E0092: ;$7E0092
	.RES 2
UNKNOWN_7E0094: ;$7E0094
	.RES 2
UNKNOWN_7E0096: ;$7E0096
	.RES 1
UNKNOWN_7E0097: ;$7E0097
	.RES 2
UNKNOWN_7E0099: ;$7E0099

.ORG $7E009C
UNKNOWN_7E009C: ;$7E009C
	.RES 2
UNKNOWN_7E009E: ;$7E009E
	.RES 2
UNKNOWN_7E00A0: ;$7E00A0
	.RES 1
UNKNOWN_7E00A1: ;$7E00A1
	.RES 1
UNKNOWN_7E00A2: ;$7E00A2
	.RES 1
UNKNOWN_7E00A3: ;$7E00A3
	.RES 1
UNKNOWN_7E00A4: ;$7E00A4
	.RES 1
UNKNOWN_7E00A5: ;$7E00A5
	.RES 1
UNKNOWN_7E00A6: ;$7E00A6
	.RES 1
TIMER: ;$7E00A7
	.RES 4

.ORG $7E00AC
UNKNOWN_7E00AC: ;$7E00AC
.ORG $7E00AE
UNKNOWN_7E00AE: ;$7E00AE

.ORG $7E00B0
UNKNOWN_7E00B0: ;$7E00B0
	.RES 1
UNKNOWN_7E00B1: ;$7E00B1
	.RES 1
UNKNOWN_7E00B2: ;$7E00B2
	.RES 2
TEMP_DIVIDEND: ;$7E00B4
	.RES 1
UNKNOWN_7E00B5: ;$7E00B5
	.RES 1
UNKNOWN_7E00B6: ;$7E00B6
	.RES 1
UNKNOWN_7E00B7: ;$7E00B7
	.RES 1
UNKNOWN_7E00B8: ;$7E00B8
	.RES 1
UNKNOWN_7E00B9: ;$7E00B9
	.RES 1
UNKNOWN_7E00BA: ;$7E00BA
	.RES 2
UNKNOWN_7E00BC: ;$7E00BC
	.RES 2
UNKNOWN_7E00BE: ;$7E00BE
	.RES 2
UNKNOWN_7E00C0: ;$7E00C0

.ORG $7E00C4
UNKNOWN_7E00C4: ;$7E00C4
	.RES 2
SPC_DATA_PTR: ;$7E00C6
	.RES 2
UNKNOWN_7E00C8: ;$7E00C8
	.RES 2
UNKNOWN_7E00CA: ;$7E00CA
	.RES 2
UNKNOWN_7E00CC: ;$7E00CC
	.RES 2
UNKNOWN_7E00CE: ;$7E00CE
	.RES 1
UNKNOWN_7E00CF: ;$7E00CF

.ORG $7E0200
CUR_TEXT_PAL: ;$7E0200

.ORG $7E0240
CUR_MAP_PAL: ;$7E0240

.ORG $7E03A0
CUR_PARTY_PAL: ;$7E03A0

.ORG $7E0400
UNKNOWN_7E0400: ;$7E0400

.ORG $7E0A34
UNKNOWN_7E0A34: ;$7E0A34
	.RES 2
UNKNOWN_7E0A36: ;$7E0A36
	.RES 2
UNKNOWN_7E0A38: ;$7E0A38
	.RES 2
UNKNOWN_7E0A3A: ;$7E0A3A
	.RES 2
UNKNOWN_7E0A3C: ;$7E0A3C
	.RES 2
UNKNOWN_7E0A3E: ;$7E0A3E
	.RES 2
UNKNOWN_7E0A40: ;$7E0A40
	.RES 2
UNKNOWN_7E0A42: ;$7E0A42
	.RES 2
UNKNOWN_7E0A44: ;$7E0A44
	.RES 2
UNKNOWN_7E0A46: ;$7E0A46
	.RES 2
UNKNOWN_7E0A48: ;$7E0A48
	.RES 2
UNKNOWN_7E0A4A: ;$7E0A4A
	.RES 2
UNKNOWN_7E0A4C: ;$7E0A4C
	.RES 2
UNKNOWN_7E0A4E: ;$7E0A4E
	.RES 2
UNKNOWN_7E0A50: ;$7E0A50
	.RES 2
UNKNOWN_7E0A52: ;$7E0A52
	.RES 2
UNKNOWN_7E0A54: ;$7E0A54

.ORG $7E0A58
UNKNOWN_7E0A58: ;$7E0A58
	.RES 2
MOVEMENT_42_LOADED_PTR: ;$7E0A5A
	.RES 4
UNKNOWN_7E0A5E: ;$7E0A5E
	.RES 2
UNKNOWN_7E0A60: ;$7E0A60
	.RES 2
LOADED_SPRITE_MOVEMENT_CODES_TABLE: ;$7E0A62

.ORG $7E0A9E
UNKNOWN_30X2_TABLE_1: ;$7E0A9E
	.RES 30*2
UNKNOWN_30X2_TABLE_2: ;$7E0ADA
	.RES 30*2
SPRITE_SCREEN_X_TABLE: ;$7E0B16
	.RES 30*2
SPRITE_SCREEN_Y_TABLE: ;$7E0B52
	.RES 30*2
SPRITE_ABS_X_TABLE: ;$7E0B8E
	.RES 30*2
SPRITE_ABS_Y_TABLE: ;$7E0BCA
	.RES 30*2
SPRITE_ABS_Z_TABLE: ;$7E0C06
	.RES 30*2
SPRITE_ABS_X_FRACTION_TABLE: ;$7E0C42
	.RES 30*2
SPRITE_ABS_Y_FRACTION_TABLE: ;$7E0C7E
	.RES 30*2
SPRITE_ABS_Z_FRACTION_TABLE: ;$7E0CBA
	.RES 30*2
SPRITE_DELTA_X_TABLE: ;$7E0CF6
	.RES 30*2
SPRITE_DELTA_Y_TABLE: ;$7E0D32
	.RES 30*2
SPRITE_DELTA_Z_TABLE: ;$7E0D6E
	.RES 30*2
SPRITE_DELTA_X_FRACTION_TABLE: ;$7E0DAA
	.RES 30*2
SPRITE_DELTA_Y_FRACTION_TABLE: ;$7E0DE6
	.RES 30*2
SPRITE_DELTA_Z_FRACTION_TABLE: ;$7E0E22
	.RES 30*2
UNKNOWN_30X2_TABLE_3: ;$7E0E5E
	.RES 30*2
UNKNOWN_30X2_TABLE_4: ;$7E0E9A
	.RES 30*2
UNKNOWN_30X2_TABLE_5: ;$7E0ED6
	.RES 30*2
UNKNOWN_30X2_TABLE_6: ;$7E0F12
	.RES 30*2
UNKNOWN_30X2_TABLE_7: ;$7E0F4E
	.RES 30*2
UNKNOWN_30X2_TABLE_8: ;$7E0F8A
	.RES 30*2
UNKNOWN_30X2_TABLE_9: ;$7E0FC6
	.RES 30*2
UNKNOWN_30X2_TABLE_10: ;$7E1002
	.RES 30*2
UNKNOWN_30X2_TABLE_11: ;$7E103E
	.RES 30*2
UNKNOWN_30X2_TABLE_12: ;$7E107A
	.RES 30*2
UNKNOWN_30X2_TABLE_13: ;$7E10B6
	.RES 30*2
UNKNOWN_30X2_TABLE_14: ;$7E10F2
	.RES 30*2
UNKNOWN_30X2_TABLE_15: ;$7E112E
	.RES 30*2
UNKNOWN_30X2_TABLE_16: ;$7E116A
	.RES 30*2
UNKNOWN_30X2_TABLE_17: ;$7E11A6
	.RES 30*2
UNKNOWN_30X2_TABLE_18: ;$7E11E2
	.RES 30*2
UNKNOWN_30X2_TABLE_19: ;$7E121E
	.RES 30*2
UNKNOWN_7E125A: ;$7E125A

.ORG $7E12E6
UNKNOWN_7E12E6: ;$7E12E6

.ORG $7E1372
UNKNOWN_30X2_TABLE_20: ;$7E1372

.ORG $7E13FE
UNKNOWN_30X2_TABLE_21: ;$7E13FE

.ORG $7E148A
UNKNOWN_30X2_TABLE_22: ;$7E148A

.ORG $7E1516
UNKNOWN_30X2_TABLE_23: ;$7E1516

.ORG $7E1A02
UNKNOWN_7E1A02: ;$7E1A02
	.RES 8
UNKNOWN_7E1A0A: ;$7E1A0A
	.RES 8
UNKNOWN_7E1A12: ;$7E1A12
	.RES 8
UNKNOWN_7E1A1A: ;$7E1A1A
	.RES 8
UNKNOWN_7E1A22: ;$7E1A22
	.RES 8
UNKNOWN_7E1A2A: ;$7E1A2A
	.RES 8
UNKNOWN_7E1A32: ;$7E1A32
	.RES 8
UNKNOWN_7E1A3A: ;$7E1A3A
	.RES 8
UNKNOWN_7E1A42: ;$7E1A42
	.RES 2
UNKNOWN_7E1A44: ;$7E1A44
	.RES 2
UNKNOWN_7E1A46: ;$7E1A46
	.RES 2
UNKNOWN_7E1A48: ;$7E1A48
	.RES 2
UNKNOWN_7E1A4A: ;$7E1A4A

.ORG $7E1A86
UNKNOWN_7E1A86: ;$7E1A86

.ORG $7E1AC2
UNKNOWN_7E1AC2: ;$7E1AC2

.ORG $7E1ACA
UNKNOWN_7E1ACA: ;$7E1ACA
	.RES 1
UNKNOWN_7E1ACB: ;$7E1ACB
	.RES 1
UNKNOWN_7E1ACC: ;$7E1ACC
	.RES 2
UNKNOWN_7E1ACE: ;$7E1ACE

.ORG $7E1AD2
UNKNOWN_7E1AD2: ;$7E1AD2
	.RES 2
UNKNOWN_7E1AD4: ;$7E1AD4
	.RES 2
UNKNOWN_7E1AD6: ;$7E1AD6

.ORG $7E1B56
UNKNOWN_7E1B56: ;$7E1B56

.ORG $7E1B6E
UNKNOWN_7E1B6E: ;$7E1B6E
	.RES 24
UNKNOWN_7E1B86: ;$7E1B86
	.RES 24
UNKNOWN_7E1B9E: ;$7E1B9E
	.RES 2
UNKNOWN_7E1BA0: ;$7E1BA0
	.RES 1
UNKNOWN_7E1BA1: ;$7E1BA1
	.RES 2
UNKNOWN_7E1BA3: ;$7E1BA3
	.RES 2
UNKNOWN_7E1BA5: ;$7E1BA5
	.RES 1
UNKNOWN_7E1BA6: ;$7E1BA6
	.RES 1
UNKNOWN_7E1BA7: ;$7E1BA7
	.RES 1
UNKNOWN_7E1BA8: ;$7E1BA8
	.RES 1
UNKNOWN_7E1BA9: ;$7E1BA9
	.RES 1
UNKNOWN_7E1BAA: ;$7E1BAA

.ORG $7E1BCA
UNKNOWN_7E1BCA: ;$7E1BCA
	.RES 2
UNKNOWN_7E1BCC: ;$7E1BCC
	.RES 2
UNKNOWN_7E1BCE: ;$7E1BCE
	.RES 2
UNKNOWN_7E1BD0: ;$7E1BD0
	.RES 2
UNKNOWN_7E1BD2: ;$7E1BD2
	.RES 2
UNKNOWN_7E1BD4: ;$7E1BD4

.ORG $7E1F00
STACK: ;$7E1F00

.ORG $7E2400
UNKNOWN_7E2400: ;$7E2400
	.RES 2
UNKNOWN_7E2402: ;$7E2402
	.RES 2
UNKNOWN_7E2404: ;$7E2404

.ORG $7E2444
UNKNOWN_7E2444: ;$7E2444

.ORG $7E2484
UNKNOWN_7E2484: ;$7E2484

.ORG $7E24C4
UNKNOWN_7E24C4: ;$7E24C4

.ORG $7E2504
UNKNOWN_7E2504: ;$7E2504
	.RES 2
UNKNOWN_7E2506: ;$7E2506

.ORG $7E2546
UNKNOWN_7E2546: ;$7E2546

.ORG $7E2586
UNKNOWN_7E2586: ;$7E2586

.ORG $7E25C6
UNKNOWN_7E25C6: ;$7E25C6

.ORG $7E2606
UNKNOWN_7E2606: ;$7E2606
	.RES 2
UNKNOWN_7E2608: ;$7E2608

.ORG $7E2648
UNKNOWN_7E2648: ;$7E2648

.ORG $7E2688
UNKNOWN_7E2688: ;$7E2688

.ORG $7E26C8
UNKNOWN_7E26C8: ;$7E26C8

.ORG $7E2708
UNKNOWN_7E2708: ;$7E2708

.ORG $7E270A
UNKNOWN_7E270A: ;$7E270A

.ORG $7E274A
UNKNOWN_7E274A: ;$7E274A

.ORG $7E278A
UNKNOWN_7E278A: ;$7E278A

.ORG $7E27CA
UNKNOWN_7E27CA: ;$7E27CA

.ORG $7E280A
UNKNOWN_7E280A: ;$7E280A
	.RES 2
UNKNOWN_30X2_TABLE_23_: ;$7E280C
	.RES 30*2
UNKNOWN_7E2848: ;$7E2848
	.RES 2
UNKNOWN_7E284A: ;$7E284A
	.RES 2
UNKNOWN_7E284C: ;$7E284C
	.RES 30*2
UNKNOWN_7E2888: ;$7E2888
	.RES 2
UNKNOWN_7E288A: ;$7E288A
	.RES 2
UNKNOWN_7E288C: ;$7E288C
	.RES 2
UNKNOWN_7E288E: ;$7E288E
	.RES 2
UNKNOWN_7E2890: ;$7E2890
	.RES 2
UNKNOWN_7E2892: ;$7E2892
	.RES 2
UNKNOWN_7E2894: ;$7E2894
	.RES 2
UNKNOWN_7E2896: ;$7E2896
	.RES 2
UNKNOWN_7E2898: ;$7E2898
	.RES 2
UNKNOWN_7E289A: ;$7E289A
	.RES 2
UNKNOWN_7E289C: ;$7E289C
	.RES 2
UNKNOWN_30X2_TABLE_24: ;$7E289E
	.RES 30*2
UNKNOWN_30X2_TABLE_25: ;$7E28DA
	.RES 30*2
UNKNOWN_30X2_TABLE_26: ;$7E2916
	.RES 30*2
UNKNOWN_30X2_TABLE_27: ;$7E2952
	.RES 30*2
UNKNOWN_30X2_TABLE_28: ;$7E298E
	.RES 30*2
UNKNOWN_30X2_TABLE_29: ;$7E29CA
	.RES 30*2
UNKNOWN_30X2_TABLE_30: ;$7E2A06
	.RES 30*2
UNKNOWN_30X2_TABLE_31: ;$7E2A42
	.RES 30*2
UNKNOWN_30X2_TABLE_32: ;$7E2A7E
	.RES 30*2
UNKNOWN_30X2_TABLE_33: ;$7E2ABA
	.RES 30*2
UNKNOWN_30X2_TABLE_34: ;$7E2AF6
	.RES 30*2
UNKNOWN_30X2_TABLE_35: ;$7E2B32
	.RES 30*2
UNKNOWN_30X2_TABLE_36: ;$7E2B6E
	.RES 30*2
UNKNOWN_30X2_TABLE_37: ;$7E2BAA
	.RES 30*2
UNKNOWN_30X2_TABLE_38: ;$7E2BE6
	.RES 30*2
UNKNOWN_30X2_TABLE_40: ;$7E2C22
	.RES 30*2
UNKNOWN_30X2_TABLE_41: ;$7E2C5E
	.RES 30*2
LOADED_TPT_ENTRIES: ;$7E2C9A
	.RES 30*2
LOADED_TPT_ENTRIES_SPRITES: ;$7E2CD6
	.RES 30*2
UNKNOWN_30X2_TABLE_42: ;$7E2D12
	.RES 30*2
UNKNOWN_30X2_TABLE_43: ;$7E2D4E
	.RES 30*2
UNKNOWN_30X2_TABLE_44: ;$7E2D8A
	.RES 30*2
UNKNOWN_30X2_TABLE_45: ;$7E2DC6
	.RES 30*2
UNKNOWN_30X2_TABLE_46: ;$7E2E02
	.RES 30*2
UNKNOWN_7E2E3E: ;$7E2E3E
	.RES 30*2
UNKNOWN_7E2E7A: ;$7E2E7A
	.RES 30*2
UNKNOWN_7E2EB6: ;$7E2EB6
	.RES 30*2
UNKNOWN_7E2EF2: ;$7E2EF2
	.RES 30*2
UNKNOWN_7E2F2E: ;$7E2F2E
	.RES 30*2
UNKNOWN_7E2F6A: ;$7E2F6A
	.RES 30*2
UNKNOWN_7E2FA6: ;$7E2FA6
	.RES 30*2
UNKNOWN_7E2FE2: ;$7E2FE2
	.RES 30*2
UNKNOWN_7E301E: ;$7E301E
	.RES 30*2
UNKNOWN_7E305A: ;$7E305A
	.RES 30*2
UNKNOWN_7E3096: ;$7E3096
	.RES 30*2
UNKNOWN_7E30D2: ;$7E30D2
	.RES 30*2
UNKNOWN_7E310E: ;$7E310E
	.RES 30*2
UNKNOWN_7E314A: ;$7E314A
	.RES 30*2
UNKNOWN_7E3186: ;$7E3186

.ORG $7E3492
UNKNOWN_7E3492: ;$7E3492
	.RES 1664
UNKNOWN_7E3B12: ;$7E3B12
	.RES 8*3

.ORG $7E436C
DEBUG: ;$7E436C
	.RES 2
UNKNOWN_7E436E: ;$7E436E
	.RES 2
UNKNOWN_7E4370: ;$7E4370
	.RES 2
UNKNOWN_7E4372: ;$7E4372

.ORG $7E4380
UNKNOWN_7E4380: ;$7E4380
	.RES 2
UNKNOWN_7E4382: ;$7E4382

.ORG $7E438A
UNKNOWN_7E438A: ;$7E438A
	.RES 2
UNKNOWN_7E438C: ;$7E438C
	.RES 2
CURRENT_SECTOR_ATTRIBUTES: ;$7E438E

.ORG $7E43D0
UNKNOWN_7E43D0: ;$7E43D0
	.RES 2
UNKNOWN_7E43D2: ;$7E43D2
	.RES 2
UNKNOWN_7E43D4: ;$7E43D4
	.RES 2
UNKNOWN_7E43D6: ;$7E43D6
	.RES 2
UNKNOWN_7E43D8: ;$7E43D8
	.RES 2
UNKNOWN_7E43DA: ;$7E43DA

.ORG $7E445C
UNKNOWN_7E445C: ;$7E445C
	.RES 2
UNKNOWN_7E445E: ;$7E445E
	.RES 2
UNKNOWN_7E4460: ;$7E4460

.ORG $7E4472
UNKNOWN_7E4472: ;$7E4472
	.RES 2
UNKNOWN_7E4474: ;$7E4474

.ORG $7E4676
UNKNOWN_7E4676: ;$7E4676

.ORG $7E467A
UNKNOWN_7E467A: ;$7E467A
	.RES 2
UNKNOWN_7E467C: ;$7E467C
	.RES 2
SPRITE_TABLE_7E467E: ;$7E467E

.ORG $7E4A00
UNKNOWN_7E4A00: ;$7E4A00

.ORG $7E4A58
UNKNOWN_7E4A58: ;$7E4A58
	.RES 2
UNKNOWN_7E4A5A: ;$7E4A5A
	.RES 2
UNKNOWN_7E4A5C: ;$7E4A5C
	.RES 2
UNKNOWN_7E4A5E: ;$7E4A5E
	.RES 2
MAGIC_BUTTERFLY: ;$7E4A60

.ORG $7E4A66
SHOW_NPC_FLAG: ;$7E4A66
	.RES 2
UNKNOWN_7E4A68: ;$7E4A68

.ORG $7E4A8C
CURRENT_BATTLE_GROUP: ;$7E4A8C

.ORG $7E4DBA
UNKNOWN_7E4DBA: ;$7E4DBA
	.RES 2
UNKNOWN_7E4DBC: ;$7E4DBC

.ORG $7E4DC2
BATTLE_DEBUG: ;$7E4DC2
	.RES 2
UNKNOWN_7E4DC4: ;$7E4DC4
	.RES 2
UNKNOWN_7E4DC6: ;$7E4DC6
	.RES 2
CHOSEN_FOUR_PTRS: ;$7E4DC8

.ORG $7E4DD4
UNKNOWN_7E4DD4: ;$7E4DD4
	.RES 2
UNKNOWN_7E4DD6: ;$7E4DD6

.ORG $7E5156
PLAYER_POSITION_BUFFER: ;$7E5156
	.RES $C00
MISC_DEBUG_FLAGS: ;$7E5D56
	.RES 2
UNKNOWN_7E5D58: ;$7E5D58
	.RES 2
UNKNOWN_7E5D5A: ;$7E5D5A
	.RES 2
UNKNOWN_7E5D5C: ;$7E5D5C
	.RES 2
UNKNOWN_7E5D5E: ;$7E5D5E
	.RES 2
BATTLE_SWIRL_COUNTDOWN: ;$7E5D60
	.RES 2
CURRENT_TPT_ENTRY: ;$7E5D62
	.RES 2
UNKNOWN_7E5D64: ;$7E5D64
	.RES 2
UNKNOWN_7E5D66: ;$7E5D66
	.RES 12
UNKNOWN_7E5D72: ;$7E5D72
	.RES 2
UNKNOWN_7E5D74: ;$7E5D74
	.RES 2
UNKNOWN_7E5D76: ;$7E5D76
	.RES 2
UNKNOWN_7E5D78: ;$7E5D78

.ORG $7E5D98
UNKNOWN_7E5D98: ;$7E5D98
	.RES 2
UNKNOWN_7E5D9A: ;$7E5D9A

.ORG $7E5DA0
MUSHROOMIZED_WALKING_FLAG: ;$7E5DA0

.ORG $7E5DA8
UNKNOWN_7E5DA8: ;$7E5DA8

.ORG $7E5DAA
UNKNOWN_7E5DAA: ;$7E5DAA

.ORG $7E5DBA
UNKNOWN_7E5DBA: ;$7E5DBA

.ORG $7E5DC0
UNKNOWN_7E5DC0: ;$7E5DC0
	.RES 2
UNKNOWN_7E5DC2: ;$7E5DC2
	.RES 2
UNKNOWN_7E5DC4: ;$7E5DC4
	.RES 2
UNKNOWN_7E5DC6: ;$7E5DC6

.ORG $7E5DCA
UNKNOWN_7E5DCA: ;$7E5DCA
	.RES 2
UNKNOWN_7E5DCC: ;$7E5DCC
	.RES 2
UNKNOWN_7E5DCE: ;$7E5DCE
	.RES 2
UNKNOWN_7E5DD0: ;$7E5DD0
	.RES 2
UNKNOWN_7E5DD2: ;$7E5DD2
	.RES 2
UNKNOWN_7E5DD4: ;$7E5DD4
	.RES 2
UNKNOWN_7E5DD6: ;$7E5DD6
	.RES 2
UNKNOWN_7E5DD8: ;$7E5DD8
	.RES 2
UNKNOWN_7E5DDA: ;$7E5DDA
	.RES 2
UNKNOWN_7E5DDC: ;$7E5DDC
	.RES 2
UNKNOWN_7E5DDE: ;$7E5DDE
	.RES 2
UNKNOWN_7E5DE0: ;$7E5DE0

.ORG $7E5DEA
UNKNOWN_7E5DEA: ;$7E5DEA

.ORG $7E5E02
UNKNOWN_7E5E02: ;$7E5E02
	.RES 2
UNKNOWN_7E5E04: ;$7E5E04

.ORG $7E5E38
UNKNOWN_7E5E38: ;$7E5E38
	.RES 4

.ORG $7E5E6D
UNKNOWN_7E5E6D: ;$7E5E6D
	.RES 1
UNKNOWN_7E5E6E: ;$7E5E6E
	.RES 2
UNKNOWN_7E5E70: ;$7E5E70
	.RES 1
UNKNOWN_7E5E71: ;$7E5E71
	.RES 2
UNKNOWN_7E5E73: ;$7E5E73
	.RES 2
UNKNOWN_7E5E75: ;$7E5E75
	.RES 1
UNKNOWN_7E5E76: ;$7E5E76
	.RES 1
UNKNOWN_7E5E77: ;$7E5E77
	.RES 1
UNKNOWN_7E5E78: ;$7E5E78
	.RES 1
UNKNOWN_7E5E79: ;$7E5E79
	.RES 1
UNKNOWN_7E5E7A: ;$7E5E7A
	.RES 2
UNKNOWN_7E5E7C: ;$7E5E7C

.ORG $7E8000
UNKNOWN_7E8000: ;$7E8000

.ORG $7E8650
WINDOW_STATS_TABLE: ;$7E8650
	.RES 656
UNKNOWN_7E88E0: ;$7E88E0
	.RES 2
UNKNOWN_7E88E2: ;$7E88E2
	.RES 2
WINDOW_EXISTENCE_TABLE: ;$7E88E4
	.RES 116
CURRENT_FOCUS_WINDOW: ;$7E8958
	.RES 2
UNKNOWN_7E895A: ;$7E895A

.ORG $7E8960
UNKNOWN_7E8960: ;$7E8960

.ORG $7E89C9
UNKNOWN_7E89C9: ;$7E89C9
	.RES 1
PSI_WINDOW_CHARACTER: ;$7E89CA
	.RES 2
UNKNOWN_7E89CC: ;$7E89CC
	.RES 2
UNKNOWN_7E89CE: ;$7E89CE
	.RES 2
UNKNOWN_7E89D0: ;$7E89D0
	.RES 2
UNKNOWN_7E89D2: ;$7E89D2
	.RES 2
UNKNOWN_7E89D4: ;$7E89D4
	.RES NUM_89D4_ENTRIES*45
UNKNOWN_7E9622: ;$7E9622
	.RES 1
UNKNOWN_7E9623: ;$7E9623
	.RES 1
UNKNOWN_7E9624: ;$7E9624
	.RES 1
SELECTED_TEXT_SPEED: ;$7E9625
	.RES 2
UNKNOWN_7E9627: ;$7E9627
	.RES 2
UNKNOWN_7E9629: ;$7E9629

.ORG $7E9641
UNKNOWN_7E9641: ;$7E9641
	.RES 2
BATTLE_MODE_FLAG: ;$7E9643
	.RES 2
INPUT_LOCK_FLAG: ;$7E9645
	.RES 2
UNKNOWN_7E9647: ;$7E9647
	.RES 2
UNKNOWN_7E9649: ;$7E9649
	.RES 2
UNKNOWN_7E964B: ;$7E964B
	.RES 2
BLINKING_TRIANGLE_FLAG: ;$7E964D
	.RES 2
UNKNOWN_7E964F: ;$7E964F

.ORG $7E9652
UNKNOWN_7E9652: ;$7E9652
	.RES 2
UNKNOWN_7E9654: ;$7E9654

.ORG $7E9658
UNKNOWN_7E9658: ;$7E9658
	.RES 2
UNKNOWN_7E965A: ;$7E965A

.ORG $7E9662
UNKNOWN_7E9662: ;$7E9662

.ORG $7E9684
UNKNOWN_7E9684: ;$7E9684
	.RES 2
UNKNOWN_7E9686: ;$7E9686
	.RES 2
UNKNOWN_7E9688: ;$7E9688
	.RES 2
UNKNOWN_7E968A: ;$7E968A

.ORG $7E9695
UNKNOWN_7E9695: ;$7E9695
	.RES 2
UNKNOWN_7E9697: ;$7E9697

.ORG $7E96AA
UNKNOWN_7E96AA: ;$7E96AA

.ORG $7E97B8
UNKNOWN_7E97B8: ;$7E97B8
	.RES 2
CC_ARGUMENT_STORAGE: ;$7E97BA

.ORG $7E97CA
CC_ARGUMENT_GATHERING_LOOP_COUNTER: ;$7E97CA

.ORG $7E97DA
UNKNOWN_7E97DA: ;$7E97DA

.ORG $7E97F5
GAME_STATE: ;$7E97F5
	.RES .SIZEOF(game_state)
CHAR_STRUCT: ;$7E99CE
	.RES .SIZEOF(char_struct) * (TOTAL_PARTY_COUNT)
EVENT_FLAG: ;$7E9B48
	.RES (EVENT_FLAG_COUNT/8)
CURRENT_INTERACTING_EVENT_FLAG: ;$7E9BC8

.ORG $7E9C08
UNKNOWN_7E9C08: ;$7E9C08
	.RES $80

.ORG $7E9C9F
UNKNOWN_7E9C9F: ;$7E9C9F
	.RES 1
UNKNOWN_7E9CA0: ;$7E9CA0
	.RES 1
UNKNOWN_7E9CA1: ;$7E9CA1
	.RES 1
UNKNOWN_7E9CA2: ;$7E9CA2

.ORG $7E9CA5
UNKNOWN_7E9CA5: ;$7E9CA5

.ORG $7E9CAA
UNKNOWN_7E9CAA: ;$7E9CAA

.ORG $7E9CB0
UNKNOWN_7E9CB0: ;$7E9CB0

.ORG $7E9D1F
RESPAWN_X: ;$7E9D1F
	.RES 2
RESPAWN_Y: ;$7E9D21

.ORG $7E9E23
UNKNOWN_7E9E23: ;$7E9E23
	.RES 2
UNKNOWN_7E9E25: ;$7E9E25

.ORG $7E9E2B
DMA_TRANSFER_FLAG: ;$7E9E2B

.ORG $7E9E54
DAD_PHONE_TIMER: ;$7E9E54
	.RES 2
UNKNOWN_7E9E56: ;$7E9E56

.ORG $7E9F33
UNKNOWN_7E9F33: ;$7E9F33
	.RES 2
UNKNOWN_7E9F35: ;$7E9F35

.ORG $7E9F39
UNKNOWN_7E9F39: ;$7E9F39
	.RES 2
UNKNOWN_7E9F3B: ;$7E9F3B
	.RES 2
UNKNOWN_7E9F3D: ;$7E9F3D
	.RES 2
TELEPORT_DESTINATION: ;$7E9F3F
	.RES 2
TELEPORT_STYLE: ;$7E9F41
	.RES 2
UNKNOWN_7E9F43: ;$7E9F43
	.RES 2
UNKNOWN_7E9F45: ;$7E9F45
	.RES 2
UNKNOWN_7E9F47: ;$7E9F47

.ORG $7E9F6B
UNKNOWN_7E9F6B: ;$7E9F6B

.ORG $7E9F71
PAJAMA_FLAG: ;$7E9F71
	.RES 2
UNKNOWN_7E9F73: ;$7E9F73
	.RES 2
UNKNOWN_7E9F75: ;$7E9F75
	.RES 2
UNKNOWN_7E9F77: ;$7E9F77
	.RES 2
UNKNOWN_7E9F79: ;$7E9F79
	.RES 1
UNKNOWN_7E9F7A: ;$7E9F7A
	.RES 2
UNKNOWN_7E9F7C: ;$7E9F7C
	.RES 2
UNKNOWN_7E9F7E: ;$7E9F7E
	.RES 2
UNKNOWN_7E9F80: ;$7E9F80
	.RES 2
UNKNOWN_7E9F82: ;$7E9F82
	.RES 2
UNKNOWN_7E9F84: ;$7E9F84
	.RES 2
UNKNOWN_7E9F86: ;$7E9F86
	.RES 2
UNKNOWN_7E9F88: ;$7E9F88
	.RES 2
ENEMIES_IN_BATTLE: ;$7E9F8A
	.RES 2
UNKNOWN_7E9F8C: ;$7E9F8C

.ORG $7E9FAC
BATTLERS_TABLE: ;$7E9FAC
	.RES .SIZEOF(battler) * 32
BATTLER_TARGET_FLAGS: ;$7EA96C
	.RES 4
CURRENT_ATTACKER: ;$7EA970
	.RES 2
CURRENT_TARGET: ;$7EA972
	.RES 2
BATTLE_EXP_SCRATCH: ;$7EA974
	.RES 4
BATTLE_MONEY_SCRATCH: ;$7EA978
	.RES 2
GIYGAS_PHASE: ;$7EA97A
	.RES 2
UNKNOWN_7EA97C: ;$7EA97C

.ORG $7EA983
ATTACKER_NAME_ADJUST_SCRATCH: ;$7EA983

.ORG $7EA99E
TARGET_NAME_ADJUST_SCRATCH: ;$7EA99E

.ORG $7EAA0C
UNKNOWN_7EAA0C: ;$7EAA0C
	.RES 2
UNKNOWN_7EAA0E: ;$7EAA0E
	.RES 2
ITEM_DROPPED: ;$7EAA10
	.RES 2
MIRROR_ENEMY: ;$7EAA12

.ORG $7EAA62
MIRROR_TURN_TIMER: ;$7EAA64

.ORG $7EAA70
UNKNOWN_7EAA70: ;$7EAA70
	.RES 2
UNKNOWN_7EAA72: ;$7EAA72
	.RES 2
UNKNOWN_7EAA74: ;$7EAA74

.ORG $7EAD86
UNKNOWN_7EAD86: ;$7EAD86

.ORG $7EAD8A
UNKNOWN_7EAD8A: ;$7EAD8A
	.RES 2
VERTICAL_SHAKE_DURATION: ;$7EAD8C
	.RES 2
VERTICAL_SHAKE_HOLD_DURATION: ;$7EAD8E
	.RES 2
UNKNOWN_7EAD90: ;$7EAD90
	.RES 2
WOBBLE_DURATION: ;$7EAD92
	.RES 2
SHAKE_DURATION: ;$7EAD94
	.RES 2
UNKNOWN_7EAD96: ;$7EAD96
	.RES 2
UNKNOWN_7EAD98: ;$7EAD98

.ORG $7EAD9E
GREEN_FLASH_DURATION: ;$7EAD9E
	.RES 2
RED_FLASH_DURATION: ;$7EADA0
	.RES 2
UNKNOWN_7EADA2: ;$7EADA2
	.RES 2
HP_PP_BOX_BLINK_DURATION: ;$7EADA4
	.RES 2
HP_PP_BOX_BLINK_TARGET: ;$7EADA6
	.RES 2
UNKNOWN_7EADA8: ;$7EADA8
	.RES 2
UNKNOWN_7EADAA: ;$7EADAA
	.RES 2
UNKNOWN_7EADAC: ;$7EADAC
	.RES 2
UNKNOWN_7EADAE: ;$7EADAE
	.RES 2
UNKNOWN_7EADB0: ;$7EADB0
	.RES 2
UNKNOWN_7EADB2: ;$7EADB2
	.RES 2
UNKNOWN_7EADB4: ;$7EADB4
	.RES 2
UNKNOWN_7EADB6: ;$7EADB6

.ORG $7EADCC
UNKNOWN_7EADCC: ;$7EADCC

.ORG $7EADCE
UNKNOWN_7EADCE: ;$7EADCE
	.RES 2
UNKNOWN_7EADD0: ;$7EADD0
	.RES 2
UNKNOWN_7EADD2: ;$7EADD2

.ORG $7EADD5
UNKNOWN_7EADD5: ;$7EADD5

.ORG $7EAECC
UNKNOWN_7EAECC: ;$7EAECC

.ORG $7EB37C
UNKNOWN_7EB37C: ;$7EB37C

.ORG $7EB49D
UNKNOWN_7EB49D: ;$7EB49D
	.RES 1
UNKNOWN_7EB49E: ;$7EB49E

.ORG $7EB4A1
CURRENT_SAVE_SLOT: ;$7EB4A1
	.RES 1
UNKNOWN_7EB4A2: ;$7EB4A2

.ORG $7EB4A8
UNKNOWN_7EB4A8: ;$7EB4A8

.ORG $7EB4B6
UNKNOWN_7EB4B6: ;$7EB4B6

.ORG $7EB4CE
UNKNOWN_7EB4CE: ;$7EB4CE

.ORG $7EB4E3
UNKNOWN_7EB4E3: ;$7EB4E3

.ORG $7EB4EF
UNKNOWN_7EB4EF: ;$7EB4EF

.ORG $7EB4F1
CUR_PHOTO_DISPLAY: ;$7EB4F1

.ORG $7EB539
PIRACY_FLAG: ;$7EB539
	.RES 2

; Audio stuff
CURRENT_MUSIC_TRACK: ;$7EB53B
	.RES 2
CURRENT_PRIMARY_SAMPLE_PACK: ;$7EB53D
	.RES 2
CURRENT_SECONDARY_SAMPLE_PACK: ;$7EB53F
	.RES 2
CURRENT_SEQUENCE_PACK: ;$7EB541
	.RES 2

UNKNOWN_7EB543: ;$7EB543
	.RES 2
UNKNOWN_7EB545: ;$7EB545
	.RES 2
UNKNOWN_7EB547: ;$7EB547
	.RES 2
SECTOR_BOUNDARY_BEHAVIOUR_FLAG: ;$7EB549
	.RES 2
UNKNOWN_7EB54B: ;$7EB54B
	.RES 2
UNKNOWN_7EB54D: ;$7EB54D
	.RES 2
UNKNOWN_7EB54F: ;$7EB54F
	.RES 2
UNKNOWN_7EB551: ;$7EB551
	.RES 2
UNKNOWN_7EB553: ;$7EB553
	.RES 2
DEBUG_MENU_CURSOR_POSITION: ;$7EB555
	.RES 2
UNKNOWN_7EB557: ;$7EB557
	.RES 2
DEBUG_MODE_NUMBER: ;$7EB559

.ORG $7EB55D
UNKNOWN_7EB55D: ;$7EB55D
	.RES 2
UNKNOWN_7EB55F: ;$7EB55F
	.RES 2
DEBUG_START_POSITION_X: ;$7EB561
	.RES 2
DEBUG_START_POSITION_Y: ;$7EB563
	.RES 2
DEBUG_UNKNOWN_B565: ;$7EB565
	.RES 2
UNKNOWN_7EB567: ;$7EB567
	.RES 2
UNKNOWN_7EB569: ;$7EB569
	.RES 2
UNKNOWN_7EB56B: ;$7EB56B
	.RES 2
UNKNOWN_7EB56D: ;$7EB56D
	.RES 2
UNKNOWN_7EB56F: ;$7EB56F
	.RES 2
UNKNOWN_7EB571: ;$7EB571
	.RES 2
UNKNOWN_7EB573: ;$7EB573
	.RES 2
UNKNOWN_7EB575: ;$7EB575

.ORG $7EB800
UNKNOWN_7EB800: ;$7EB800

.ORG $7EC000
UNKNOWN_7EC000: ;$7EC000

; Memory bank 2

.ORG $7F0000
UNKNOWN_7F0000: ;$7F0000
	.RES $40
UNKNOWN_7F0040: ;$7F0040
	.RES $30
UNKNOWN_7F0070: ;$7F0070
	.RES $90
UNKNOWN_7F0100: ;$7F0100
	.RES $100
UNKNOWN_7F0200: ;$7F0200
	.RES $2F0
UNKNOWN_7F04F0: ;$7F04F0
	.RES $100
UNKNOWN_7F05F0: ;$7F05F0
	.RES $10
UNKNOWN_7F0600: ;$7F0600
	.RES $100
UNKNOWN_7F0700: ;$7F0700
	.RES $100
UNKNOWN_7F0800: ;$7F0800
	.RES $40
UNKNOWN_7F0840: ;$7F0840
	.RES $C0
UNKNOWN_7F0900: ;$7F0900
	.RES $700
UNKNOWN_7F1000: ;$7F1000
	.RES $1000
UNKNOWN_7F2000: ;$7F2000
	.RES $A00
UNKNOWN_7F2A00: ;$7F2A00
	.RES $200
UNKNOWN_7F2C00: ;$7F2C00
	.RES $400
UNKNOWN_7F3000: ;$7F3000
	.RES $200
UNKNOWN_7F3200: ;$7F3200
	.RES $E00
UNKNOWN_7F4000: ;$7F4000
	.RES $3000
UNKNOWN_7F7000: ;$7F7000
	.RES $800
UNKNOWN_7F7800: ;$7F7800
	.RES $400
UNKNOWN_7F7C00: ;$7F7C00
	.RES $100
UNKNOWN_7F7D00: ;$7F7D00
	.RES $100
UNKNOWN_7F7E00: ;$7F7E00
	.RES $100
UNKNOWN_7F7F00: ;$7F7F00
	.RES $100
UNKNOWN_7F8000: ;$7F8000
	.RES $7800
TILE_COLLISION_BUFFER: ;$7FF800
	.RES $800

