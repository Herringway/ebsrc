.SEGMENT "BANK03"
.ORG $C30000


SPRITE_GROUP_PALETTES: ;$C30000
	.INCBIN "src/bin/unknowns/C30000.bin"

DISPLAY_ANTI_PIRACY_SCREEN: ;$C30100
	REP #%00110001
	PHD
	TDC
	ADC #$FFEA
	TCD
	JSL UNKNOWN_C40B51
	LOADPTR ANTI_PIRACY_NOTICE_GRAPHICS, $0E
	LOADPTR UNKNOWN_7F0000, $12
	JSL DECOMP
	LOADPTR ANTI_PIRACY_NOTICE_ARRANGEMENT, $0E
	LOADPTR UNKNOWN_7F4000, $12
	JSL DECOMP
	JSL UNKNOWN_C40B75
	PLD
	RTL

DISPLAY_FAULTY_GAMEPAK_SCREEN: ;$C30142
	REP #%00110001
	PHD
	TDC
	ADC #$FFEA
	TCD
	JSL UNKNOWN_C40B51
	LOADPTR FAULTY_GAME_PAK_GRAPHICS, $0E
	LOADPTR UNKNOWN_7F0000, $12
	JSL DECOMP
	LOADPTR FAULTY_GAME_PAK_ARRANGEMENT, $0E
	LOADPTR UNKNOWN_7F4000, $12
	JSL DECOMP
	JSL UNKNOWN_C40B75
	PLD
	RTL

EVENT_FLAG_NOCONTINUE_SELECTED: ;$C30184
	.WORD $01DB

NESS_PAJAMA_FLAG: ;$C30186
	.WORD $02ED

UNKNOWN_C30188: ;$C30188
	.INCBIN "src/bin/unknowns/C30188.bin"

MOVEMENT_221: ;$C30195
	.INCBIN "src/bin/movements/221.bin"

MOVEMENT_222: ;$C30235
	.INCBIN "src/bin/movements/222.bin"

MOVEMENT_223: ;$C3024A
	.INCBIN "src/bin/movements/223.bin"

MOVEMENT_224: ;$C30260
	.INCBIN "src/bin/movements/224.bin"

UNKNOWN_C30295: ;$C30295
	.INCBIN "src/bin/unknowns/C30295.bin"

MOVEMENT_225_226_227: ;$C302AC
	.INCBIN "src/bin/movements/225_226_227.bin"

MOVEMENT_228: ;$C302D7
	.INCBIN "src/bin/movements/228.bin"

MOVEMENT_229: ;$C302EF
	.INCBIN "src/bin/movements/229.bin"

MOVEMENT_230: ;$C30303
	.INCBIN "src/bin/movements/230.bin"

MOVEMENT_231: ;$C30317
	.INCBIN "src/bin/movements/231.bin"

MOVEMENT_232: ;$C3032B
	.INCBIN "src/bin/movements/232.bin"

UNKNOWN_C3033F: ;$C3033F
	.INCBIN "src/bin/unknowns/C3033F.bin"

MOVEMENT_233_234_235_236_237: ;$C3036F
	.INCBIN "src/bin/movements/233_234_235_236_237.bin"

MOVEMENT_238: ;$C30394
	.INCBIN "src/bin/movements/238.bin"

MOVEMENT_239: ;$C303C0
	.INCBIN "src/bin/movements/239.bin"

MOVEMENT_240: ;$C303E5
	.INCBIN "src/bin/movements/240.bin"

UNKNOWN_C30440: ;$C30440
	.INCBIN "src/bin/unknowns/C30440.bin"

UNKNOWN_C30467: ;$C30467
	.INCBIN "src/bin/unknowns/C30467.bin"

UNKNOWN_C3046C: ;$C3046C
	.INCBIN "src/bin/unknowns/C3046C.bin"

MOVEMENT_241: ;$C30478
	.INCBIN "src/bin/movements/241.bin"

MOVEMENT_242_243: ;$C304FA
	.INCBIN "src/bin/movements/242_243.bin"

MOVEMENT_244: ;$C30520
	.INCBIN "src/bin/movements/244.bin"

MOVEMENT_245: ;$C3053A
	.INCBIN "src/bin/movements/245.bin"

MOVEMENT_246: ;$C30550
	.INCBIN "src/bin/movements/246.bin"

MOVEMENT_247_248: ;$C3056E
	.INCBIN "src/bin/movements/247_248.bin"

MOVEMENT_249: ;$C30590
	.INCBIN "src/bin/movements/249.bin"

MOVEMENT_250: ;$C305EF
	.INCBIN "src/bin/movements/250.bin"

MOVEMENT_251: ;$C30671
	.INCBIN "src/bin/movements/251.bin"

MOVEMENT_252: ;$C3069F
	.INCBIN "src/bin/movements/252.bin"

MOVEMENT_253: ;$C306BA
	.INCBIN "src/bin/movements/253.bin"

MOVEMENT_254: ;$C306DA
	.INCBIN "src/bin/movements/254.bin"

MOVEMENT_255: ;$C30704
	.INCBIN "src/bin/movements/255.bin"

MOVEMENT_256: ;$C30716
	.INCBIN "src/bin/movements/256.bin"

MOVEMENT_257: ;$C30776
	.INCBIN "src/bin/movements/257.bin"

MOVEMENT_258: ;$C30796
	.INCBIN "src/bin/movements/258.bin"

MOVEMENT_259: ;$C307AB
	.INCBIN "src/bin/movements/259.bin"

MOVEMENT_260: ;$C30832
	.INCBIN "src/bin/movements/260.bin"

MOVEMENT_261: ;$C30869
	.INCBIN "src/bin/movements/261.bin"

MOVEMENT_262: ;$C308BB
	.INCBIN "src/bin/movements/262.bin"

MOVEMENT_263: ;$C308E5
	.INCBIN "src/bin/movements/263.bin"

MOVEMENT_264: ;$C30962
	.INCBIN "src/bin/movements/264.bin"

MOVEMENT_265: ;$C30979
	.INCBIN "src/bin/movements/265.bin"

UNKNOWN_C3098B: ;$C3098B
	.INCBIN "src/bin/unknowns/C3098B.bin"

MOVEMENT_266: ;$C30993
	.INCBIN "src/bin/movements/266.bin"

MOVEMENT_267: ;$C309B0
	.INCBIN "src/bin/movements/267.bin"

UNKNOWN_C30A1F: ;$C30A1F
	.INCBIN "src/bin/unknowns/C30A1F.bin"

MOVEMENT_268: ;$C30A32
	.INCBIN "src/bin/movements/268.bin"

MOVEMENT_269: ;$C30A76
	.INCBIN "src/bin/movements/269.bin"

MOVEMENT_270: ;$C30A91
	.INCBIN "src/bin/movements/270.bin"

MOVEMENT_271: ;$C30ACB
	.INCBIN "src/bin/movements/271.bin"

MOVEMENT_272: ;$C30AF8
	.INCBIN "src/bin/movements/272.bin"

MOVEMENT_273: ;$C30B4E
	.INCBIN "src/bin/movements/273.bin"

MOVEMENT_274_275_276: ;$C30BEA
	.INCBIN "src/bin/movements/274_275_276.bin"

MOVEMENT_277: ;$C30C09
	.INCBIN "src/bin/movements/277.bin"

MOVEMENT_278: ;$C30C20
	.INCBIN "src/bin/movements/278.bin"

MOVEMENT_279: ;$C30C37
	.INCBIN "src/bin/movements/279.bin"

MOVEMENT_280: ;$C30C3D
	.INCBIN "src/bin/movements/280.bin"

MOVEMENT_281: ;$C30C43
	.INCBIN "src/bin/movements/281.bin"

MOVEMENT_282: ;$C30C49
	.INCBIN "src/bin/movements/282.bin"

MOVEMENT_283: ;$C30C4F
	.INCBIN "src/bin/movements/283.bin"

UNKNOWN_C30C55: ;$C30C55
	.INCBIN "src/bin/unknowns/C30C55.bin"

UNKNOWN_C30C67: ;$C30C67
	.INCBIN "src/bin/unknowns/C30C67.bin"

MOVEMENT_284: ;$C30CE2
	.INCBIN "src/bin/movements/284.bin"

MOVEMENT_285: ;$C30D1E
	.INCBIN "src/bin/movements/285.bin"

UNKNOWN_C30D3C: ;$C30D3C
	.INCBIN "src/bin/unknowns/C30D3C.bin"

MOVEMENT_286: ;$C30DB6
	.INCBIN "src/bin/movements/286.bin"

MOVEMENT_287: ;$C30DCD
	.INCBIN "src/bin/movements/287.bin"

MOVEMENT_288: ;$C30E21
	.INCBIN "src/bin/movements/288.bin"

MOVEMENT_289: ;$C30E52
	.INCBIN "src/bin/movements/289.bin"

MOVEMENT_290: ;$C30E7F
	.INCBIN "src/bin/movements/290.bin"

MOVEMENT_291: ;$C30E99
	.INCBIN "src/bin/movements/291.bin"

MOVEMENT_292: ;$C30EB9
	.INCBIN "src/bin/movements/292.bin"

MOVEMENT_293: ;$C30F20
	.INCBIN "src/bin/movements/293.bin"

MOVEMENT_294: ;$C30F9C
	.INCBIN "src/bin/movements/294.bin"

UNKNOWN_C31055: ;$C31055
	.INCBIN "src/bin/unknowns/C31055.bin"

MOVEMENT_295: ;$C31068
	.INCBIN "src/bin/movements/295.bin"

MOVEMENT_296: ;$C310B1
	.INCBIN "src/bin/movements/296.bin"

MOVEMENT_297: ;$C31115
	.INCBIN "src/bin/movements/297.bin"

MOVEMENT_298: ;$C31140
	.INCBIN "src/bin/movements/298.bin"

MOVEMENT_299: ;$C31182
	.INCBIN "src/bin/movements/299.bin"

MOVEMENT_300: ;$C311B4
	.INCBIN "src/bin/movements/300.bin"

MOVEMENT_301: ;$C311DF
	.INCBIN "src/bin/movements/301.bin"

MOVEMENT_302: ;$C31221
	.INCBIN "src/bin/movements/302.bin"

MOVEMENT_303: ;$C3126E
	.INCBIN "src/bin/movements/303.bin"

MOVEMENT_304: ;$C312AD
	.INCBIN "src/bin/movements/304.bin"

MOVEMENT_305: ;$C312C2
	.INCBIN "src/bin/movements/305.bin"

MOVEMENT_306: ;$C312E7
	.INCBIN "src/bin/movements/306.bin"

MOVEMENT_307: ;$C3131B
	.INCBIN "src/bin/movements/307.bin"

MOVEMENT_308: ;$C3133A
	.INCBIN "src/bin/movements/308.bin"

MOVEMENT_309: ;$C31359
	.INCBIN "src/bin/movements/309.bin"

MOVEMENT_310: ;$C3137E
	.INCBIN "src/bin/movements/310.bin"

MOVEMENT_311: ;$C31389
	.INCBIN "src/bin/movements/311.bin"

MOVEMENT_312: ;$C313A9
	.INCBIN "src/bin/movements/312.bin"

MOVEMENT_314: ;$C313D5
	.INCBIN "src/bin/movements/314.bin"

MOVEMENT_313: ;$C313F7
	.INCBIN "src/bin/movements/313.bin"

MOVEMENT_315: ;$C3141E
	.INCBIN "src/bin/movements/315.bin"

MOVEMENT_316: ;$C31427
	.INCBIN "src/bin/movements/316.bin"

MOVEMENT_317: ;$C31452
	.INCBIN "src/bin/movements/317.bin"

UNKNOWN_C31476: ;$C31476
	.INCBIN "src/bin/unknowns/C31476.bin"

MOVEMENT_318: ;$C31485
	.INCBIN "src/bin/movements/318.bin"

MOVEMENT_319: ;$C31529
	.INCBIN "src/bin/movements/319.bin"

MOVEMENT_320: ;$C31556
	.INCBIN "src/bin/movements/320.bin"

MOVEMENT_321: ;$C3155C
	.INCBIN "src/bin/movements/321.bin"

UNKNOWN_C31566: ;$C31566
	.INCBIN "src/bin/unknowns/C31566.bin"

MOVEMENT_322: ;$C315CC
	.INCBIN "src/bin/movements/322.bin"

MOVEMENT_323: ;$C315F8
	.INCBIN "src/bin/movements/323.bin"

MOVEMENT_324: ;$C31626
	.INCBIN "src/bin/movements/324.bin"

MOVEMENT_325: ;$C31651
	.INCBIN "src/bin/movements/325.bin"

MOVEMENT_326: ;$C31689
	.INCBIN "src/bin/movements/326.bin"

MOVEMENT_327: ;$C316BC
	.INCBIN "src/bin/movements/327.bin"

MOVEMENT_328: ;$C316E4
	.INCBIN "src/bin/movements/328.bin"

MOVEMENT_329: ;$C31717
	.INCBIN "src/bin/movements/329.bin"

MOVEMENT_330: ;$C31743
	.INCBIN "src/bin/movements/330.bin"

MOVEMENT_331: ;$C3176F
	.INCBIN "src/bin/movements/331.bin"

MOVEMENT_332: ;$C3179B
	.INCBIN "src/bin/movements/332.bin"

MOVEMENT_333: ;$C317C7
	.INCBIN "src/bin/movements/333.bin"

MOVEMENT_334: ;$C317FC
	.INCBIN "src/bin/movements/334.bin"

MOVEMENT_335: ;$C31831
	.INCBIN "src/bin/movements/335.bin"

MOVEMENT_336: ;$C31869
	.INCBIN "src/bin/movements/336.bin"

MOVEMENT_337: ;$C3189A
	.INCBIN "src/bin/movements/337.bin"

MOVEMENT_338: ;$C318A5
	.INCBIN "src/bin/movements/338.bin"

MOVEMENT_339: ;$C318D0
	.INCBIN "src/bin/movements/339.bin"

MOVEMENT_340: ;$C318FD
	.INCBIN "src/bin/movements/340.bin"

UNKNOWN_C31931: ;$C31931
	.INCBIN "src/bin/unknowns/C31931.bin"

UNKNOWN_C31957: ;$C31957
	.INCBIN "src/bin/unknowns/C31957.bin"

UNKNOWN_C3199E: ;$C3199E
	.INCBIN "src/bin/unknowns/C3199E.bin"

UNKNOWN_C31A17: ;$C31A17
	.INCBIN "src/bin/unknowns/C31A17.bin"

MOVEMENT_341: ;$C31A42
	.INCBIN "src/bin/movements/341.bin"

MOVEMENT_342: ;$C31A83
	.INCBIN "src/bin/movements/342.bin"

MOVEMENT_343: ;$C31AB1
	.INCBIN "src/bin/movements/343.bin"

MOVEMENT_344: ;$C31ABD
	.INCBIN "src/bin/movements/344.bin"

MOVEMENT_345: ;$C31B14
	.INCBIN "src/bin/movements/345.bin"

MOVEMENT_346: ;$C31B4B
	.INCBIN "src/bin/movements/346.bin"

UNKNOWN_C31BD9: ;$C31BD9
	.INCBIN "src/bin/unknowns/C31BD9.bin"

MOVEMENT_347: ;$C31BED
	.INCBIN "src/bin/movements/347.bin"

MOVEMENT_348_349: ;$C31BFD
	.INCBIN "src/bin/movements/348_349.bin"

MOVEMENT_350: ;$C31C23
	.INCBIN "src/bin/movements/350.bin"

MOVEMENT_351: ;$C31C49
	.INCBIN "src/bin/movements/351.bin"

UNKNOWN_C31C90: ;$C31C90
	.INCBIN "src/bin/unknowns/C31C90.bin"

MOVEMENT_352: ;$C31CA4
	.INCBIN "src/bin/movements/352.bin"

MOVEMENT_353: ;$C31CFB
	.INCBIN "src/bin/movements/353.bin"

MOVEMENT_354: ;$C31D15
	.INCBIN "src/bin/movements/354.bin"

UNKNOWN_C31D2D: ;$C31D2D
	.INCBIN "src/bin/unknowns/C31D2D.bin"

UNKNOWN_C31D4A: ;$C31D4A
	.INCBIN "src/bin/unknowns/C31D4A.bin"

UNKNOWN_C31D4F: ;$C31D4F
	.INCBIN "src/bin/unknowns/C31D4F.bin"

MOVEMENT_355: ;$C31D61
	.INCBIN "src/bin/movements/355.bin"

MOVEMENT_356: ;$C31D6A
	.INCBIN "src/bin/movements/356.bin"

MOVEMENT_357: ;$C31D89
	.INCBIN "src/bin/movements/357.bin"

MOVEMENT_369: ;$C31DB5
	.INCBIN "src/bin/movements/369.bin"

UNKNOWN_C31DF4: ;$C31DF4
	.INCBIN "src/bin/unknowns/C31DF4.bin"

UNKNOWN_C31E14: ;$C31E14
	.INCBIN "src/bin/unknowns/C31E14.bin"

UNKNOWN_C31E2D: ;$C31E2D
	.INCBIN "src/bin/unknowns/C31E2D.bin"

UNKNOWN_C31E4D: ;$C31E4D
	.INCBIN "src/bin/unknowns/C31E4D.bin"

MOVEMENT_360: ;$C31E66
	.INCBIN "src/bin/movements/360.bin"

MOVEMENT_361: ;$C31E79
	.INCBIN "src/bin/movements/361.bin"

MOVEMENT_362: ;$C31E89
	.INCBIN "src/bin/movements/362.bin"

MOVEMENT_358: ;$C31E92
	.INCBIN "src/bin/movements/358.bin"

MOVEMENT_359: ;$C31EA6
	.INCBIN "src/bin/movements/359.bin"

MOVEMENT_363: ;$C31EAF
	.INCBIN "src/bin/movements/363.bin"

MOVEMENT_364: ;$C31EB8
	.INCBIN "src/bin/movements/364.bin"

UNKNOWN_C31EC1: ;$C31EC1
	.INCBIN "src/bin/unknowns/C31EC1.bin"

UNKNOWN_C31ED8: ;$C31ED8
	.INCBIN "src/bin/unknowns/C31ED8.bin"

UNKNOWN_C31EEF: ;$C31EEF
	.INCBIN "src/bin/unknowns/C31EEF.bin"

MOVEMENT_368: ;$C31FE8
	.INCBIN "src/bin/movements/368.bin"

UNKNOWN_C32138: ;$C32138
	.INCBIN "src/bin/unknowns/C32138.bin"

MOVEMENT_365: ;$C32149
	.INCBIN "src/bin/movements/365.bin"

MOVEMENT_367: ;$C322B3
	.INCBIN "src/bin/movements/367.bin"

MOVEMENT_366: ;$C32342
	.INCBIN "src/bin/movements/366.bin"

MOVEMENT_370: ;$C323D1
	.INCBIN "src/bin/movements/370.bin"

MOVEMENT_371: ;$C3240A
	.INCBIN "src/bin/movements/371.bin"

MOVEMENT_372: ;$C32454
	.INCBIN "src/bin/movements/372.bin"

MOVEMENT_400: ;$C32486
	.INCBIN "src/bin/movements/400.bin"

MOVEMENT_373: ;$C324A8
	.INCBIN "src/bin/movements/373.bin"

MOVEMENT_374: ;$C324B1
	.INCBIN "src/bin/movements/374.bin"

MOVEMENT_375_404: ;$C324BA
	.INCBIN "src/bin/movements/375_404.bin"

MOVEMENT_376_405: ;$C324CE
	.INCBIN "src/bin/movements/376_405.bin"

MOVEMENT_377_406: ;$C324D7
	.INCBIN "src/bin/movements/377_406.bin"

MOVEMENT_378_407: ;$C324E0
	.INCBIN "src/bin/movements/378_407.bin"

MOVEMENT_379_408: ;$C324E9
	.INCBIN "src/bin/movements/379_408.bin"

MOVEMENT_380: ;$C324F2
	.INCBIN "src/bin/movements/380.bin"

MOVEMENT_381: ;$C324F9
	.INCBIN "src/bin/movements/381.bin"

MOVEMENT_382: ;$C32507
	.INCBIN "src/bin/movements/382.bin"

MOVEMENT_383: ;$C32520
	.INCBIN "src/bin/movements/383.bin"

MOVEMENT_385: ;$C32534
	.INCBIN "src/bin/movements/385.bin"

MOVEMENT_397: ;$C327AA
	.INCBIN "src/bin/movements/397.bin"

MOVEMENT_387: ;$C32818
	.INCBIN "src/bin/movements/387.bin"

MOVEMENT_389_393: ;$C32860
	.INCBIN "src/bin/movements/389_393.bin"

MOVEMENT_391: ;$C32878
	.INCBIN "src/bin/movements/391.bin"

MOVEMENT_395: ;$C32890
	.INCBIN "src/bin/movements/395.bin"

MOVEMENT_384: ;$C328A8
	.INCBIN "src/bin/movements/384.bin"

MOVEMENT_386: ;$C328B1
	.INCBIN "src/bin/movements/386.bin"

MOVEMENT_398: ;$C32B9B
	.INCBIN "src/bin/movements/398.bin"

MOVEMENT_388: ;$C32C46
	.INCBIN "src/bin/movements/388.bin"

MOVEMENT_390_394: ;$C32C8A
	.INCBIN "src/bin/movements/390_394.bin"

MOVEMENT_392: ;$C32CA2
	.INCBIN "src/bin/movements/392.bin"

MOVEMENT_396: ;$C32CBA
	.INCBIN "src/bin/movements/396.bin"

UNKNOWN_C32CD2: ;$C32CD2
	.INCBIN "src/bin/unknowns/C32CD2.bin"

MOVEMENT_399: ;$C32CF0
	.INCBIN "src/bin/movements/399.bin"

MOVEMENT_401: ;$C32DFE
	.INCBIN "src/bin/movements/401.bin"

MOVEMENT_437: ;$C32E34
	.INCBIN "src/bin/movements/437.bin"

MOVEMENT_402: ;$C32E56
	.INCBIN "src/bin/movements/402.bin"

MOVEMENT_403: ;$C32E5F
	.INCBIN "src/bin/movements/403.bin"

MOVEMENT_409: ;$C32E68
	.INCBIN "src/bin/movements/409.bin"

MOVEMENT_411: ;$C32E75
	.INCBIN "src/bin/movements/411.bin"

MOVEMENT_410: ;$C33063
	.INCBIN "src/bin/movements/410.bin"

MOVEMENT_412: ;$C331ED
	.INCBIN "src/bin/movements/412.bin"

MOVEMENT_413: ;$C33205
	.INCBIN "src/bin/movements/413.bin"

MOVEMENT_414: ;$C3320E
	.INCBIN "src/bin/movements/414.bin"

MOVEMENT_415: ;$C33217
	.INCBIN "src/bin/movements/415.bin"

MOVEMENT_416: ;$C33220
	.INCBIN "src/bin/movements/416.bin"

MOVEMENT_417: ;$C33229
	.INCBIN "src/bin/movements/417.bin"

MOVEMENT_418: ;$C33232
	.INCBIN "src/bin/movements/418.bin"

MOVEMENT_419: ;$C3324E
	.INCBIN "src/bin/movements/419.bin"

MOVEMENT_420: ;$C3326A
	.INCBIN "src/bin/movements/420.bin"

MOVEMENT_422: ;$C33283
	.INCBIN "src/bin/movements/422.bin"

MOVEMENT_424: ;$C33299
	.INCBIN "src/bin/movements/424.bin"

MOVEMENT_426: ;$C332C1
	.INCBIN "src/bin/movements/426.bin"

MOVEMENT_428: ;$C332D7
	.INCBIN "src/bin/movements/428.bin"

MOVEMENT_421: ;$C332FA
	.INCBIN "src/bin/movements/421.bin"

MOVEMENT_423: ;$C33310
	.INCBIN "src/bin/movements/423.bin"

MOVEMENT_425: ;$C3332C
	.INCBIN "src/bin/movements/425.bin"

MOVEMENT_427: ;$C33342
	.INCBIN "src/bin/movements/427.bin"

MOVEMENT_429: ;$C3335E
	.INCBIN "src/bin/movements/429.bin"

MOVEMENT_430: ;$C3337D
	.INCBIN "src/bin/movements/430.bin"

MOVEMENT_431_432_433_434: ;$C3338F
	.INCBIN "src/bin/movements/431_432_433_434.bin"

UNKNOWN_C33399: ;$C33399
	.INCBIN "src/bin/unknowns/C33399.bin"

UNKNOWN_C333AA: ;$C333AA
	.INCBIN "src/bin/unknowns/C333AA.bin"

UNKNOWN_C333BB: ;$C333BB
	.INCBIN "src/bin/unknowns/C333BB.bin"

UNKNOWN_C333CC: ;$C333CC
	.INCBIN "src/bin/unknowns/C333CC.bin"

UNKNOWN_C333DD: ;$C333DD
	.INCBIN "src/bin/unknowns/C333DD.bin"

MOVEMENT_435: ;$C33424
	.INCBIN "src/bin/movements/435.bin"

MOVEMENT_436: ;$C334CF
	.INCBIN "src/bin/movements/436.bin"

MOVEMENT_438: ;$C334FF
	.INCBIN "src/bin/movements/438.bin"

MOVEMENT_439: ;$C33535
	.INCBIN "src/bin/movements/439.bin"

UNKNOWN_C33549: ;$C33549
	.INCBIN "src/bin/unknowns/C33549.bin"

MOVEMENT_440: ;$C33572
	.INCBIN "src/bin/movements/440.bin"

MOVEMENT_441: ;$C33595
	.INCBIN "src/bin/movements/441.bin"

MOVEMENT_442: ;$C335B5
	.INCBIN "src/bin/movements/442.bin"

MOVEMENT_443: ;$C33980
	.INCBIN "src/bin/movements/443.bin"

MOVEMENT_444: ;$C339D2
	.INCBIN "src/bin/movements/444.bin"

MOVEMENT_446: ;$C33A88
	.INCBIN "src/bin/movements/446.bin"

MOVEMENT_445: ;$C33AB5
	.INCBIN "src/bin/movements/445.bin"

MOVEMENT_447: ;$C33AED
	.INCBIN "src/bin/movements/447.bin"

MOVEMENT_448: ;$C33B0F
	.INCBIN "src/bin/movements/448.bin"

UNKNOWN_C33B77: ;$C33B77
	.INCBIN "src/bin/unknowns/C33B77.bin"

MOVEMENT_449: ;$C33B8B
	.INCBIN "src/bin/movements/449.bin"

MOVEMENT_450: ;$C33B9E
	.INCBIN "src/bin/movements/450.bin"

MOVEMENT_451: ;$C33BB2
	.INCBIN "src/bin/movements/451.bin"

MOVEMENT_452: ;$C33BB7
	.INCBIN "src/bin/movements/452.bin"

UNKNOWN_C33BFB: ;$C33BFB
	.INCBIN "src/bin/unknowns/C33BFB.bin"

UNKNOWN_C33C18: ;$C33C18
	.INCBIN "src/bin/unknowns/C33C18.bin"

UNKNOWN_C33C1D: ;$C33C1D
	.INCBIN "src/bin/unknowns/C33C1D.bin"

MOVEMENT_467: ;$C33C30
	.INCBIN "src/bin/movements/467.bin"

MOVEMENT_465: ;$C33C6C
	.INCBIN "src/bin/movements/465.bin"

MOVEMENT_466: ;$C33CDA
	.INCBIN "src/bin/movements/466.bin"

UNKNOWN_C33DBE: ;$C33DBE
	.INCBIN "src/bin/unknowns/C33DBE.bin"

MOVEMENT_479: ;$C33DD4
	.INCBIN "src/bin/movements/479.bin"

UNKNOWN_C33E30: ;$C33E30
	.INCBIN "src/bin/unknowns/C33E30.bin"

MOVEMENT_481: ;$C33E42
	.INCBIN "src/bin/movements/481.bin"

UNKNOWN_C33EB6: ;$C33EB6
	.INCBIN "src/bin/unknowns/C33EB6.bin"

MOVEMENT_482: ;$C33EC4
	.INCBIN "src/bin/movements/482.bin"

UNKNOWN_C33EFF: ;$C33EFF
	.INCBIN "src/bin/unknowns/C33EFF.bin"

MOVEMENT_480: ;$C33F0C
	.INCBIN "src/bin/movements/480.bin"

UNKNOWN_C34014: ;$C34014
	.INCBIN "src/bin/unknowns/C34014.bin"

MOVEMENT_483: ;$C34029
	.INCBIN "src/bin/movements/483.bin"

MOVEMENT_484: ;$C34097
	.INCBIN "src/bin/movements/484.bin"

MOVEMENT_485: ;$C340CE
	.INCBIN "src/bin/movements/485.bin"

MOVEMENT_486: ;$C3410B
	.INCBIN "src/bin/movements/486.bin"

MOVEMENT_487: ;$C34114
	.INCBIN "src/bin/movements/487.bin"

MOVEMENT_488: ;$C3411D
	.INCBIN "src/bin/movements/488.bin"

MOVEMENT_489: ;$C34126
	.INCBIN "src/bin/movements/489.bin"

MOVEMENT_490: ;$C3412F
	.INCBIN "src/bin/movements/490.bin"

MOVEMENT_491: ;$C34138
	.INCBIN "src/bin/movements/491.bin"

MOVEMENT_492: ;$C3415D
	.INCBIN "src/bin/movements/492.bin"

MOVEMENT_493: ;$C34182
	.INCBIN "src/bin/movements/493.bin"

MOVEMENT_494: ;$C341A7
	.INCBIN "src/bin/movements/494.bin"

MOVEMENT_495: ;$C341CC
	.INCBIN "src/bin/movements/495.bin"

UNKNOWN_C341E9: ;$C341E9
	.INCBIN "src/bin/unknowns/C341E9.bin"

UNKNOWN_C34233: ;$C34233
	.INCBIN "src/bin/unknowns/C34233.bin"

MOVEMENT_496: ;$C34249
	.INCBIN "src/bin/movements/496.bin"

MOVEMENT_497: ;$C3426E
	.INCBIN "src/bin/movements/497.bin"

MOVEMENT_498: ;$C342B1
	.INCBIN "src/bin/movements/498.bin"

MOVEMENT_501: ;$C342F4
	.INCBIN "src/bin/movements/501.bin"

MOVEMENT_531: ;$C34301
	.INCBIN "src/bin/movements/531.bin"

UNKNOWN_C3430E: ;$C3430E
	.INCBIN "src/bin/unknowns/C3430E.bin"

UNKNOWN_C3436D: ;$C3436D
	.INCBIN "src/bin/unknowns/C3436D.bin"

MOVEMENT_532: ;$C34378
	.INCBIN "src/bin/movements/532.bin"

MOVEMENT_533: ;$C34385
	.INCBIN "src/bin/movements/533.bin"

UNKNOWN_C34392: ;$C34392
	.INCBIN "src/bin/unknowns/C34392.bin"

UNKNOWN_C343AE: ;$C343AE
	.INCBIN "src/bin/unknowns/C343AE.bin"

UNKNOWN_C343DB: ;$C343DB
	.INCBIN "src/bin/unknowns/C343DB.bin"

MOVEMENT_500: ;$C34402
	.INCBIN "src/bin/movements/500.bin"

MOVEMENT_499: ;$C3441A
	.INCBIN "src/bin/movements/499.bin"

UNKNOWN_C3443E: ;$C3443E
	.INCBIN "src/bin/unknowns/C3443E.bin"

UNKNOWN_C34457: ;$C34457
	.INCBIN "src/bin/unknowns/C34457.bin"

UNKNOWN_C3447A: ;$C3447A
	.INCBIN "src/bin/unknowns/C3447A.bin"

UNKNOWN_C34488: ;$C34488
	.INCBIN "src/bin/unknowns/C34488.bin"

UNKNOWN_C344A8: ;$C344A8
	.INCBIN "src/bin/unknowns/C344A8.bin"

UNKNOWN_C344D2: ;$C344D2
	.INCBIN "src/bin/unknowns/C344D2.bin"

UNKNOWN_C344DE: ;$C344DE
	.INCBIN "src/bin/unknowns/C344DE.bin"

UNKNOWN_C344FF: ;$C344FF
	.INCBIN "src/bin/unknowns/C344FF.bin"

MOVEMENT_547: ;$C34508
	.INCBIN "src/bin/movements/547.bin"

UNKNOWN_C34555: ;$C34555
	.INCBIN "src/bin/unknowns/C34555.bin"

MOVEMENT_550: ;$C3456F
	.INCBIN "src/bin/movements/550.bin"

MOVEMENT_548: ;$C34572
	.INCBIN "src/bin/movements/548.bin"

MOVEMENT_549: ;$C3459E
	.INCBIN "src/bin/movements/549.bin"

MOVEMENT_551: ;$C345CA
	.INCBIN "src/bin/movements/551.bin"

MOVEMENT_552: ;$C34635
	.INCBIN "src/bin/movements/552.bin"

MOVEMENT_553: ;$C34693
	.INCBIN "src/bin/movements/553.bin"

MOVEMENT_554: ;$C346F1
	.INCBIN "src/bin/movements/554.bin"

MOVEMENT_555: ;$C3474E
	.INCBIN "src/bin/movements/555.bin"

MOVEMENT_559: ;$C34767
	.INCBIN "src/bin/movements/559.bin"

MOVEMENT_558: ;$C347C1
	.INCBIN "src/bin/movements/558.bin"

MOVEMENT_557: ;$C34810
	.INCBIN "src/bin/movements/557.bin"

MOVEMENT_556: ;$C3486A
	.INCBIN "src/bin/movements/556.bin"

UNKNOWN_C348C4: ;$C348C4
	.INCBIN "src/bin/unknowns/C348C4.bin"

MOVEMENT_563: ;$C348FC
	.INCBIN "src/bin/movements/563.bin"

UNKNOWN_C34964: ;$C34964
	.INCBIN "src/bin/unknowns/C34964.bin"

MOVEMENT_562: ;$C34975
	.INCBIN "src/bin/movements/562.bin"

UNKNOWN_C34A61: ;$C34A61
	.INCBIN "src/bin/unknowns/C34A61.bin"

MOVEMENT_561: ;$C34A6C
	.INCBIN "src/bin/movements/561.bin"

MOVEMENT_560: ;$C34AF6
	.INCBIN "src/bin/movements/560.bin"

UNKNOWN_C34B62: ;$C34B62
	.INCBIN "src/bin/unknowns/C34B62.bin"

MOVEMENT_564: ;$C34BAB
	.INCBIN "src/bin/movements/564.bin"

MOVEMENT_565: ;$C34BCD
	.INCBIN "src/bin/movements/565.bin"

MOVEMENT_566: ;$C34BF7
	.INCBIN "src/bin/movements/566.bin"

MOVEMENT_567: ;$C34C3A
	.INCBIN "src/bin/movements/567.bin"

MOVEMENT_568: ;$C34C86
	.INCBIN "src/bin/movements/568.bin"

MOVEMENT_569: ;$C34CE0
	.INCBIN "src/bin/movements/569.bin"

UNKNOWN_C34D39: ;$C34D39
	.INCBIN "src/bin/unknowns/C34D39.bin"

MOVEMENT_570: ;$C34D5C
	.INCBIN "src/bin/movements/570.bin"

MOVEMENT_571: ;$C34D65
	.INCBIN "src/bin/movements/571.bin"

MOVEMENT_572: ;$C34D6E
	.INCBIN "src/bin/movements/572.bin"

MOVEMENT_573: ;$C34D77
	.INCBIN "src/bin/movements/573.bin"

MOVEMENT_574: ;$C34D92
	.INCBIN "src/bin/movements/574.bin"

MOVEMENT_575: ;$C34D9B
	.INCBIN "src/bin/movements/575.bin"

MOVEMENT_576: ;$C34DA4
	.INCBIN "src/bin/movements/576.bin"

MOVEMENT_577: ;$C34DA7
	.INCBIN "src/bin/movements/577.bin"

MOVEMENT_578: ;$C34DB0
	.INCBIN "src/bin/movements/578.bin"

MOVEMENT_579: ;$C34DB9
	.INCBIN "src/bin/movements/579.bin"

MOVEMENT_580: ;$C34DC2
	.INCBIN "src/bin/movements/580.bin"

MOVEMENT_581: ;$C34DCB
	.INCBIN "src/bin/movements/581.bin"

MOVEMENT_582: ;$C34DE0
	.INCBIN "src/bin/movements/582.bin"

MOVEMENT_583: ;$C34DEA
	.INCBIN "src/bin/movements/583.bin"

UNKNOWN_C34E66: ;$C34E66
	.INCBIN "src/bin/unknowns/C34E66.bin"

UNKNOWN_C34E73: ;$C34E73
	.INCBIN "src/bin/unknowns/C34E73.bin"

MOVEMENT_535: ;$C34E85
	.INCBIN "src/bin/movements/535.bin"

MOVEMENT_536: ;$C34EC8
	.INCBIN "src/bin/movements/536.bin"

MOVEMENT_537: ;$C34F31
	.INCBIN "src/bin/movements/537.bin"

MOVEMENT_538: ;$C34F9B
	.INCBIN "src/bin/movements/538.bin"

MOVEMENT_539: ;$C34FC7
	.INCBIN "src/bin/movements/539.bin"

MOVEMENT_540: ;$C34FF8
	.INCBIN "src/bin/movements/540.bin"

MOVEMENT_541: ;$C3500E
	.INCBIN "src/bin/movements/541.bin"

UNKNOWN_C3504A: ;$C3504A
	.INCBIN "src/bin/unknowns/C3504A.bin"

MOVEMENT_542: ;$C35056
	.INCBIN "src/bin/movements/542.bin"

MOVEMENT_543: ;$C350B0
	.INCBIN "src/bin/movements/543.bin"

MOVEMENT_544: ;$C350F4
	.INCBIN "src/bin/movements/544.bin"

MOVEMENT_545: ;$C35154
	.INCBIN "src/bin/movements/545.bin"

MOVEMENT_546: ;$C35198
	.INCBIN "src/bin/movements/546.bin"

MOVEMENT_799: ;$C351FD
	.INCBIN "src/bin/movements/799.bin"

MOVEMENT_800: ;$C35214
	.INCBIN "src/bin/movements/800.bin"

UNKNOWN_C35231: ;$C35231
	.INCBIN "src/bin/unknowns/C35231.bin"

MOVEMENT_801: ;$C3523F
	.INCBIN "src/bin/movements/801.bin"

UNKNOWN_C35F8B: ;$C35F8B
	.INCBIN "src/bin/unknowns/C35F8B.bin"

UNKNOWN_C35FB6: ;$C35FB6
	.INCBIN "src/bin/unknowns/C35FB6.bin"

UNKNOWN_C35FCD: ;$C35FCD
	.INCBIN "src/bin/unknowns/C35FCD.bin"

MOVEMENT_802: ;$C35FE2
	.INCBIN "src/bin/movements/802.bin"

MOVEMENT_803: ;$C35FF1
	.INCBIN "src/bin/movements/803.bin"

MOVEMENT_809: ;$C36000
	.INCBIN "src/bin/movements/809.bin"

MOVEMENT_810: ;$C36073
	.INCBIN "src/bin/movements/810.bin"

MOVEMENT_811: ;$C36093
	.INCBIN "src/bin/movements/811.bin"

MOVEMENT_812: ;$C360B3
	.INCBIN "src/bin/movements/812.bin"

MOVEMENT_813: ;$C360EC
	.INCBIN "src/bin/movements/813.bin"

MOVEMENT_814: ;$C3610A
	.INCBIN "src/bin/movements/814.bin"

MOVEMENT_815: ;$C36144
	.INCBIN "src/bin/movements/815.bin"

MOVEMENT_816: ;$C36169
	.INCBIN "src/bin/movements/816.bin"

MOVEMENT_817: ;$C361AA
	.INCBIN "src/bin/movements/817.bin"

MOVEMENT_818: ;$C361BB
	.INCBIN "src/bin/movements/818.bin"

MOVEMENT_819: ;$C361CC
	.INCBIN "src/bin/movements/819.bin"

MOVEMENT_820: ;$C361DB
	.INCBIN "src/bin/movements/820.bin"

MOVEMENT_821: ;$C361FB
	.INCBIN "src/bin/movements/821.bin"

MOVEMENT_822: ;$C36219
	.INCBIN "src/bin/movements/822.bin"

MOVEMENT_823: ;$C36239
	.INCBIN "src/bin/movements/823.bin"

MOVEMENT_824: ;$C3626E
	.INCBIN "src/bin/movements/824.bin"

MOVEMENT_825: ;$C3629F
	.INCBIN "src/bin/movements/825.bin"

UNKNOWN_C362C0: ;$C362C0
	.INCBIN "src/bin/unknowns/C362C0.bin"

MOVEMENT_826: ;$C362E1
	.INCBIN "src/bin/movements/826.bin"

MOVEMENT_827: ;$C36311
	.INCBIN "src/bin/movements/827.bin"

MOVEMENT_828: ;$C36320
	.INCBIN "src/bin/movements/828.bin"

MOVEMENT_829: ;$C36338
	.INCBIN "src/bin/movements/829.bin"

MOVEMENT_804: ;$C36356
	.INCBIN "src/bin/movements/804.bin"

MOVEMENT_805: ;$C3639E
	.INCBIN "src/bin/movements/805.bin"

MOVEMENT_806: ;$C363C6
	.INCBIN "src/bin/movements/806.bin"

MOVEMENT_808: ;$C36405
	.INCBIN "src/bin/movements/808.bin"

MOVEMENT_807: ;$C36447
	.INCBIN "src/bin/movements/807.bin"

MOVEMENT_836: ;$C36474
	.INCBIN "src/bin/movements/836.bin"

MOVEMENT_837: ;$C364B1
	.INCBIN "src/bin/movements/837.bin"

MOVEMENT_838: ;$C3652A
	.INCBIN "src/bin/movements/838.bin"

MOVEMENT_839: ;$C365A3
	.INCBIN "src/bin/movements/839.bin"

MOVEMENT_831: ;$C3661C
	.INCBIN "src/bin/movements/831.bin"

MOVEMENT_832: ;$C36647
	.INCBIN "src/bin/movements/832.bin"

MOVEMENT_833: ;$C36692
	.INCBIN "src/bin/movements/833.bin"

MOVEMENT_830: ;$C366BF
	.INCBIN "src/bin/movements/830.bin"

MOVEMENT_834: ;$C366DC
	.INCBIN "src/bin/movements/834.bin"

MOVEMENT_835: ;$C36726
	.INCBIN "src/bin/movements/835.bin"

MOVEMENT_840: ;$C3675D
	.INCBIN "src/bin/movements/840.bin"

MOVEMENT_841: ;$C3678E
	.INCBIN "src/bin/movements/841.bin"

MOVEMENT_842: ;$C367A4
	.INCBIN "src/bin/movements/842.bin"

MOVEMENT_843: ;$C367E6
	.INCBIN "src/bin/movements/843.bin"

MOVEMENT_844: ;$C36814
	.INCBIN "src/bin/movements/844.bin"

UNKNOWN_C36834: ;$C36834
	.INCBIN "src/bin/unknowns/C36834.bin"

MOVEMENT_845: ;$C3683F
	.INCBIN "src/bin/movements/845.bin"

MOVEMENT_846: ;$C36852
	.INCBIN "src/bin/movements/846.bin"

MOVEMENT_847: ;$C36867
	.INCBIN "src/bin/movements/847.bin"

MOVEMENT_848: ;$C3687C
	.INCBIN "src/bin/movements/848.bin"

MOVEMENT_849: ;$C36891
	.INCBIN "src/bin/movements/849.bin"

MOVEMENT_850: ;$C368A6
	.INCBIN "src/bin/movements/850.bin"

MOVEMENT_851: ;$C368CF
	.INCBIN "src/bin/movements/851.bin"

MOVEMENT_852: ;$C368F8
	.INCBIN "src/bin/movements/852.bin"

MOVEMENT_853: ;$C3699B
	.INCBIN "src/bin/movements/853.bin"

MOVEMENT_854: ;$C369BA
	.INCBIN "src/bin/movements/854.bin"

MOVEMENT_855: ;$C369C9
	.INCBIN "src/bin/movements/855.bin"

MOVEMENT_856: ;$C369E2
	.INCBIN "src/bin/movements/856.bin"

MOVEMENT_857: ;$C369FB
	.INCBIN "src/bin/movements/857.bin"

MOVEMENT_858: ;$C36A2A
	.INCBIN "src/bin/movements/858.bin"

UNKNOWN_C36A3E: ;$C36A3E
	.INCBIN "src/bin/unknowns/C36A3E.bin"

UNKNOWN_C36A41: ;$C36A41
	.INCBIN "src/bin/unknowns/C36A41.bin"

MOVEMENT_584: ;$C36A53
	.INCBIN "src/bin/movements/584.bin"

MOVEMENT_585: ;$C36A98
	.INCBIN "src/bin/movements/585.bin"

MOVEMENT_586: ;$C36ABF
	.INCBIN "src/bin/movements/586.bin"

MOVEMENT_587: ;$C36AE6
	.INCBIN "src/bin/movements/587.bin"

MOVEMENT_588: ;$C36AFF
	.INCBIN "src/bin/movements/588.bin"

MOVEMENT_589: ;$C36B18
	.INCBIN "src/bin/movements/589.bin"

MOVEMENT_590: ;$C36B4B
	.INCBIN "src/bin/movements/590.bin"

UNKNOWN_C36B60: ;$C36B60
	.INCBIN "src/bin/unknowns/C36B60.bin"

UNKNOWN_C36BB4: ;$C36BB4
	.INCBIN "src/bin/unknowns/C36BB4.bin"

MOVEMENT_591: ;$C36BC6
	.INCBIN "src/bin/movements/591.bin"

UNKNOWN_C36BEA: ;$C36BEA
	.INCBIN "src/bin/unknowns/C36BEA.bin"

MOVEMENT_592: ;$C36BEB
	.INCBIN "src/bin/movements/592.bin"

MOVEMENT_593: ;$C36C00
	.INCBIN "src/bin/movements/593.bin"

MOVEMENT_594: ;$C36C4A
	.INCBIN "src/bin/movements/594.bin"

MOVEMENT_595: ;$C36C94
	.INCBIN "src/bin/movements/595.bin"

MOVEMENT_596: ;$C36CDB
	.INCBIN "src/bin/movements/596.bin"

UNKNOWN_C36D18: ;$C36D18
	.INCBIN "src/bin/unknowns/C36D18.bin"

MOVEMENT_597: ;$C36D29
	.INCBIN "src/bin/movements/597.bin"

MOVEMENT_598: ;$C36D40
	.INCBIN "src/bin/movements/598.bin"

MOVEMENT_599: ;$C36D53
	.INCBIN "src/bin/movements/599.bin"

MOVEMENT_600: ;$C36D5C
	.INCBIN "src/bin/movements/600.bin"

MOVEMENT_601: ;$C36D7B
	.INCBIN "src/bin/movements/601.bin"

MOVEMENT_602: ;$C36D9F
	.INCBIN "src/bin/movements/602.bin"

MOVEMENT_603: ;$C36DBE
	.INCBIN "src/bin/movements/603.bin"

MOVEMENT_604: ;$C36DD9
	.INCBIN "src/bin/movements/604.bin"

UNKNOWN_C36DF6: ;$C36DF6
	.INCBIN "src/bin/unknowns/C36DF6.bin"

MOVEMENT_605: ;$C36E19
	.INCBIN "src/bin/movements/605.bin"

MOVEMENT_606: ;$C36E2D
	.INCBIN "src/bin/movements/606.bin"

UNKNOWN_C36E41: ;$C36E41
	.INCBIN "src/bin/unknowns/C36E41.bin"

MOVEMENT_607: ;$C36E52
	.INCBIN "src/bin/movements/607.bin"

MOVEMENT_608: ;$C36E5E
	.INCBIN "src/bin/movements/608.bin"

MOVEMENT_609: ;$C36E6A
	.INCBIN "src/bin/movements/609.bin"

MOVEMENT_610: ;$C36E76
	.INCBIN "src/bin/movements/610.bin"

MOVEMENT_611: ;$C36E82
	.INCBIN "src/bin/movements/611.bin"

MOVEMENT_612: ;$C36EB7
	.INCBIN "src/bin/movements/612.bin"

MOVEMENT_613: ;$C36ED4
	.INCBIN "src/bin/movements/613.bin"

MOVEMENT_614: ;$C36F08
	.INCBIN "src/bin/movements/614.bin"

MOVEMENT_615: ;$C36F33
	.INCBIN "src/bin/movements/615.bin"

MOVEMENT_616: ;$C36F68
	.INCBIN "src/bin/movements/616.bin"

MOVEMENT_617: ;$C36F85
	.INCBIN "src/bin/movements/617.bin"

MOVEMENT_618: ;$C36FB9
	.INCBIN "src/bin/movements/618.bin"

MOVEMENT_619: ;$C36FE4
	.INCBIN "src/bin/movements/619.bin"

MOVEMENT_620: ;$C37010
	.INCBIN "src/bin/movements/620.bin"

MOVEMENT_621: ;$C37098
	.INCBIN "src/bin/movements/621.bin"

UNKNOWN_C370A2: ;$C370A2
	.INCBIN "src/bin/unknowns/C370A2.bin"

MOVEMENT_622: ;$C370FD
	.INCBIN "src/bin/movements/622.bin"

MOVEMENT_623: ;$C3715D
	.INCBIN "src/bin/movements/623.bin"

MOVEMENT_624: ;$C371F4
	.INCBIN "src/bin/movements/624.bin"

MOVEMENT_625: ;$C371FA
	.INCBIN "src/bin/movements/625.bin"

MOVEMENT_626: ;$C37245
	.INCBIN "src/bin/movements/626.bin"

MOVEMENT_627: ;$C37276
	.INCBIN "src/bin/movements/627.bin"

MOVEMENT_628: ;$C37287
	.INCBIN "src/bin/movements/628.bin"

MOVEMENT_629: ;$C372B0
	.INCBIN "src/bin/movements/629.bin"

UNKNOWN_C37377: ;$C37377
	.INCBIN "src/bin/unknowns/C37377.bin"

MOVEMENT_630: ;$C373C2
	.INCBIN "src/bin/movements/630.bin"

MOVEMENT_631: ;$C37409
	.INCBIN "src/bin/movements/631.bin"

MOVEMENT_632: ;$C3740F
	.INCBIN "src/bin/movements/632.bin"

UNKNOWN_C37439: ;$C37439
	.INCBIN "src/bin/unknowns/C37439.bin"

MOVEMENT_633: ;$C37456
	.INCBIN "src/bin/movements/633.bin"

MOVEMENT_634: ;$C37479
	.INCBIN "src/bin/movements/634.bin"

MOVEMENT_635: ;$C3749C
	.INCBIN "src/bin/movements/635.bin"

MOVEMENT_636: ;$C374B0
	.INCBIN "src/bin/movements/636.bin"

MOVEMENT_637: ;$C374E4
	.INCBIN "src/bin/movements/637.bin"

UNKNOWN_C37545: ;$C37545
	.INCBIN "src/bin/unknowns/C37545.bin"

UNKNOWN_C37559: ;$C37559
	.INCBIN "src/bin/unknowns/C37559.bin"

MOVEMENT_638: ;$C3756D
	.INCBIN "src/bin/movements/638.bin"

MOVEMENT_639: ;$C37596
	.INCBIN "src/bin/movements/639.bin"

MOVEMENT_640: ;$C375C5
	.INCBIN "src/bin/movements/640.bin"

MOVEMENT_641: ;$C375EE
	.INCBIN "src/bin/movements/641.bin"

MOVEMENT_642: ;$C3763B
	.INCBIN "src/bin/movements/642.bin"

MOVEMENT_643: ;$C3765F
	.INCBIN "src/bin/movements/643.bin"

MOVEMENT_644: ;$C37698
	.INCBIN "src/bin/movements/644.bin"

MOVEMENT_645: ;$C376D8
	.INCBIN "src/bin/movements/645.bin"

MOVEMENT_646: ;$C37711
	.INCBIN "src/bin/movements/646.bin"

MOVEMENT_647: ;$C37751
	.INCBIN "src/bin/movements/647.bin"

MOVEMENT_648: ;$C37778
	.INCBIN "src/bin/movements/648.bin"

MOVEMENT_649: ;$C377D2
	.INCBIN "src/bin/movements/649.bin"

MOVEMENT_650: ;$C377F4
	.INCBIN "src/bin/movements/650.bin"

MOVEMENT_651: ;$C37814
	.INCBIN "src/bin/movements/651.bin"

MOVEMENT_652: ;$C3786F
	.INCBIN "src/bin/movements/652.bin"

MOVEMENT_655: ;$C37891
	.INCBIN "src/bin/movements/655.bin"

MOVEMENT_653: ;$C378B6
	.INCBIN "src/bin/movements/653.bin"

MOVEMENT_656: ;$C378D8
	.INCBIN "src/bin/movements/656.bin"

MOVEMENT_654: ;$C378FD
	.INCBIN "src/bin/movements/654.bin"

MOVEMENT_657: ;$C3791D
	.INCBIN "src/bin/movements/657.bin"

MOVEMENT_658: ;$C3793F
	.INCBIN "src/bin/movements/658.bin"

MOVEMENT_660: ;$C37987
	.INCBIN "src/bin/movements/660.bin"

MOVEMENT_659: ;$C379C0
	.INCBIN "src/bin/movements/659.bin"

MOVEMENT_661: ;$C37A0B
	.INCBIN "src/bin/movements/661.bin"

MOVEMENT_662: ;$C37A55
	.INCBIN "src/bin/movements/662.bin"

MOVEMENT_663: ;$C37A5D
	.INCBIN "src/bin/movements/663.bin"

MOVEMENT_664: ;$C37A66
	.INCBIN "src/bin/movements/664.bin"

UNKNOWN_C37A7C: ;$C37A7C
	.INCBIN "src/bin/unknowns/C37A7C.bin"

MOVEMENT_665: ;$C37A8A
	.INCBIN "src/bin/movements/665.bin"

MOVEMENT_666: ;$C37AB5
	.INCBIN "src/bin/movements/666.bin"

MOVEMENT_667: ;$C37B0B
	.INCBIN "src/bin/movements/667.bin"

MOVEMENT_668: ;$C37B5A
	.INCBIN "src/bin/movements/668.bin"

MOVEMENT_669: ;$C37B7E
	.INCBIN "src/bin/movements/669.bin"

MOVEMENT_670: ;$C37BFE
	.INCBIN "src/bin/movements/670.bin"

UNKNOWN_C37CD8: ;$C37CD8
	.INCBIN "src/bin/unknowns/C37CD8.bin"

UNKNOWN_C37CEA: ;$C37CEA
	.INCBIN "src/bin/unknowns/C37CEA.bin"

MOVEMENT_671: ;$C37CFD
	.INCBIN "src/bin/movements/671.bin"

MOVEMENT_672: ;$C37D33
	.INCBIN "src/bin/movements/672.bin"

MOVEMENT_673: ;$C37D92
	.INCBIN "src/bin/movements/673.bin"

MOVEMENT_674: ;$C37DF1
	.INCBIN "src/bin/movements/674.bin"

UNKNOWN_C37E50: ;$C37E50
	.INCBIN "src/bin/unknowns/C37E50.bin"

UNKNOWN_C37E66: ;$C37E66
	.INCBIN "src/bin/unknowns/C37E66.bin"

UNKNOWN_C37EAE: ;$C37EAE
	.INCBIN "src/bin/unknowns/C37EAE.bin"

MOVEMENT_675: ;$C37EC1
	.INCBIN "src/bin/movements/675.bin"

UNKNOWN_C37F1F: ;$C37F1F
	.INCBIN "src/bin/unknowns/C37F1F.bin"

MOVEMENT_676: ;$C37F65
	.INCBIN "src/bin/movements/676.bin"

MOVEMENT_677: ;$C37F71
	.INCBIN "src/bin/movements/677.bin"

MOVEMENT_678: ;$C37F7D
	.INCBIN "src/bin/movements/678.bin"

UNKNOWN_C37F89: ;$C37F89
	.INCBIN "src/bin/unknowns/C37F89.bin"

UNKNOWN_C37FA5: ;$C37FA5
	.INCBIN "src/bin/unknowns/C37FA5.bin"

MOVEMENT_679: ;$C37FCD
	.INCBIN "src/bin/movements/679.bin"

MOVEMENT_680: ;$C3801C
	.INCBIN "src/bin/movements/680.bin"

MOVEMENT_681: ;$C3804C
	.INCBIN "src/bin/movements/681.bin"

MOVEMENT_682: ;$C3809C
	.INCBIN "src/bin/movements/682.bin"

MOVEMENT_683: ;$C380C0
	.INCBIN "src/bin/movements/683.bin"

UNKNOWN_C38106: ;$C38106
	.INCBIN "src/bin/unknowns/C38106.bin"

UNKNOWN_C3811A: ;$C3811A
	.INCBIN "src/bin/unknowns/C3811A.bin"

UNKNOWN_C38135: ;$C38135
	.INCBIN "src/bin/unknowns/C38135.bin"

MOVEMENT_684: ;$C38146
	.INCBIN "src/bin/movements/684.bin"

UNKNOWN_C3818C: ;$C3818C
	.INCBIN "src/bin/unknowns/C3818C.bin"

UNKNOWN_C381A7: ;$C381A7
	.INCBIN "src/bin/unknowns/C381A7.bin"

MOVEMENT_685: ;$C381B8
	.INCBIN "src/bin/movements/685.bin"

MOVEMENT_686: ;$C381E0
	.INCBIN "src/bin/movements/686.bin"

MOVEMENT_687: ;$C38208
	.INCBIN "src/bin/movements/687.bin"

MOVEMENT_688: ;$C38230
	.INCBIN "src/bin/movements/688.bin"

MOVEMENT_689: ;$C38264
	.INCBIN "src/bin/movements/689.bin"

MOVEMENT_690: ;$C38298
	.INCBIN "src/bin/movements/690.bin"

MOVEMENT_691: ;$C382CC
	.INCBIN "src/bin/movements/691.bin"

MOVEMENT_692: ;$C38309
	.INCBIN "src/bin/movements/692.bin"

UNKNOWN_C3835D: ;$C3835D
	.INCBIN "src/bin/unknowns/C3835D.bin"

UNKNOWN_C38370: ;$C38370
	.INCBIN "src/bin/unknowns/C38370.bin"

UNKNOWN_C38383: ;$C38383
	.INCBIN "src/bin/unknowns/C38383.bin"

UNKNOWN_C38396: ;$C38396
	.INCBIN "src/bin/unknowns/C38396.bin"

UNKNOWN_C383A9: ;$C383A9
	.INCBIN "src/bin/unknowns/C383A9.bin"

UNKNOWN_C383BC: ;$C383BC
	.INCBIN "src/bin/unknowns/C383BC.bin"

MOVEMENT_693: ;$C383D2
	.INCBIN "src/bin/movements/693.bin"

MOVEMENT_694: ;$C3840A
	.INCBIN "src/bin/movements/694.bin"

MOVEMENT_695: ;$C38442
	.INCBIN "src/bin/movements/695.bin"

MOVEMENT_696: ;$C384D8
	.INCBIN "src/bin/movements/696.bin"

MOVEMENT_697: ;$C384E3
	.INCBIN "src/bin/movements/697.bin"

MOVEMENT_698: ;$C384EE
	.INCBIN "src/bin/movements/698.bin"

UNKNOWN_C384F9: ;$C384F9
	.INCBIN "src/bin/unknowns/C384F9.bin"

MOVEMENT_699: ;$C38515
	.INCBIN "src/bin/movements/699.bin"

MOVEMENT_700: ;$C38544
	.INCBIN "src/bin/movements/700.bin"

UNKNOWN_C385D7: ;$C385D7
	.INCBIN "src/bin/unknowns/C385D7.bin"

MOVEMENT_701: ;$C385E2
	.INCBIN "src/bin/movements/701.bin"

MOVEMENT_702: ;$C38678
	.INCBIN "src/bin/movements/702.bin"

MOVEMENT_703: ;$C3868F
	.INCBIN "src/bin/movements/703.bin"

MOVEMENT_704: ;$C386A9
	.INCBIN "src/bin/movements/704.bin"

MOVEMENT_705: ;$C386B2
	.INCBIN "src/bin/movements/705.bin"

MOVEMENT_706: ;$C386FA
	.INCBIN "src/bin/movements/706.bin"

UNKNOWN_C38751: ;$C38751
	.INCBIN "src/bin/unknowns/C38751.bin"

MOVEMENT_707: ;$C38771
	.INCBIN "src/bin/movements/707.bin"

MOVEMENT_708: ;$C3877A
	.INCBIN "src/bin/movements/708.bin"

MOVEMENT_709: ;$C38783
	.INCBIN "src/bin/movements/709.bin"

MOVEMENT_710: ;$C3878C
	.INCBIN "src/bin/movements/710.bin"

UNKNOWN_C38795: ;$C38795
	.INCBIN "src/bin/unknowns/C38795.bin"

MOVEMENT_712: ;$C387B6
	.INCBIN "src/bin/movements/712.bin"

MOVEMENT_711: ;$C3886C
	.INCBIN "src/bin/movements/711.bin"

MOVEMENT_713: ;$C388C3
	.INCBIN "src/bin/movements/713.bin"

MOVEMENT_714: ;$C38939
	.INCBIN "src/bin/movements/714.bin"

UNKNOWN_C38978: ;$C38978
	.INCBIN "src/bin/unknowns/C38978.bin"

UNKNOWN_C3898C: ;$C3898C
	.INCBIN "src/bin/unknowns/C3898C.bin"

UNKNOWN_C38992: ;$C38992
	.INCBIN "src/bin/unknowns/C38992.bin"

UNKNOWN_C3899E: ;$C3899E
	.INCBIN "src/bin/unknowns/C3899E.bin"

MOVEMENT_715: ;$C389BD
	.INCBIN "src/bin/movements/715.bin"

MOVEMENT_716: ;$C389DD
	.INCBIN "src/bin/movements/716.bin"

MOVEMENT_717: ;$C389FB
	.INCBIN "src/bin/movements/717.bin"

MOVEMENT_718: ;$C38AB1
	.INCBIN "src/bin/movements/718.bin"

MOVEMENT_719: ;$C38ADC
	.INCBIN "src/bin/movements/719.bin"

UNKNOWN_C38B29: ;$C38B29
	.INCBIN "src/bin/unknowns/C38B29.bin"

MOVEMENT_720: ;$C38B3A
	.INCBIN "src/bin/movements/720.bin"

MOVEMENT_721: ;$C38B5D
	.INCBIN "src/bin/movements/721.bin"

MOVEMENT_722: ;$C38B7F
	.INCBIN "src/bin/movements/722.bin"

MOVEMENT_723: ;$C38BC5
	.INCBIN "src/bin/movements/723.bin"

MOVEMENT_724: ;$C38BFC
	.INCBIN "src/bin/movements/724.bin"

MOVEMENT_725: ;$C38C7C
	.INCBIN "src/bin/movements/725.bin"

MOVEMENT_726: ;$C38CB0
	.INCBIN "src/bin/movements/726.bin"

MOVEMENT_727: ;$C38CE4
	.INCBIN "src/bin/movements/727.bin"

MOVEMENT_728: ;$C38D18
	.INCBIN "src/bin/movements/728.bin"

MOVEMENT_729: ;$C38D50
	.INCBIN "src/bin/movements/729.bin"

MOVEMENT_730: ;$C38DB3
	.INCBIN "src/bin/movements/730.bin"

MOVEMENT_731: ;$C38DD8
	.INCBIN "src/bin/movements/731.bin"

MOVEMENT_732: ;$C38DFC
	.INCBIN "src/bin/movements/732.bin"

MOVEMENT_733: ;$C38E32
	.INCBIN "src/bin/movements/733.bin"

MOVEMENT_734: ;$C38E61
	.INCBIN "src/bin/movements/734.bin"

MOVEMENT_735: ;$C38E89
	.INCBIN "src/bin/movements/735.bin"

MOVEMENT_736: ;$C38EB9
	.INCBIN "src/bin/movements/736.bin"

MOVEMENT_737: ;$C38EEA
	.INCBIN "src/bin/movements/737.bin"

MOVEMENT_738: ;$C38EF1
	.INCBIN "src/bin/movements/738.bin"

MOVEMENT_739: ;$C38EF8
	.INCBIN "src/bin/movements/739.bin"

MOVEMENT_740: ;$C38EFF
	.INCBIN "src/bin/movements/740.bin"

UNKNOWN_C38F06: ;$C38F06
	.INCBIN "src/bin/unknowns/C38F06.bin"

MOVEMENT_741: ;$C38F1B
	.INCBIN "src/bin/movements/741.bin"

MOVEMENT_742: ;$C38F39
	.INCBIN "src/bin/movements/742.bin"

UNKNOWN_C38F86: ;$C38F86
	.INCBIN "src/bin/unknowns/C38F86.bin"

MOVEMENT_743: ;$C38F91
	.INCBIN "src/bin/movements/743.bin"

UNKNOWN_C38FCE: ;$C38FCE
	.INCBIN "src/bin/unknowns/C38FCE.bin"

MOVEMENT_744: ;$C38FDF
	.INCBIN "src/bin/movements/744.bin"

MOVEMENT_745: ;$C39022
	.INCBIN "src/bin/movements/745.bin"

MOVEMENT_746: ;$C39025
	.INCBIN "src/bin/movements/746.bin"

MOVEMENT_747: ;$C39030
	.INCBIN "src/bin/movements/747.bin"

MOVEMENT_749: ;$C39053
	.INCBIN "src/bin/movements/749.bin"

MOVEMENT_755: ;$C39072
	.INCBIN "src/bin/movements/755.bin"

MOVEMENT_756: ;$C39080
	.INCBIN "src/bin/movements/756.bin"

MOVEMENT_748: ;$C390B3
	.INCBIN "src/bin/movements/748.bin"

MOVEMENT_750: ;$C390E6
	.INCBIN "src/bin/movements/750.bin"

MOVEMENT_751: ;$C39155
	.INCBIN "src/bin/movements/751.bin"

MOVEMENT_752: ;$C3918A
	.INCBIN "src/bin/movements/752.bin"

MOVEMENT_753: ;$C391AE
	.INCBIN "src/bin/movements/753.bin"

MOVEMENT_754: ;$C391E3
	.INCBIN "src/bin/movements/754.bin"

MOVEMENT_757: ;$C39213
	.INCBIN "src/bin/movements/757.bin"

UNKNOWN_C39244: ;$C39244
	.INCBIN "src/bin/unknowns/C39244.bin"

MOVEMENT_758: ;$C3924D
	.INCBIN "src/bin/movements/758.bin"

MOVEMENT_759: ;$C3928F
	.INCBIN "src/bin/movements/759.bin"

MOVEMENT_760: ;$C392AB
	.INCBIN "src/bin/movements/760.bin"

MOVEMENT_761: ;$C393C7
	.INCBIN "src/bin/movements/761.bin"

MOVEMENT_762: ;$C393DD
	.INCBIN "src/bin/movements/762.bin"

MOVEMENT_763: ;$C393FC
	.INCBIN "src/bin/movements/763.bin"

MOVEMENT_764: ;$C39440
	.INCBIN "src/bin/movements/764.bin"

UNKNOWN_C39481: ;$C39481
	.INCBIN "src/bin/unknowns/C39481.bin"

MOVEMENT_862: ;$C3949B
	.INCBIN "src/bin/movements/862.bin"

MOVEMENT_863: ;$C394CC
	.INCBIN "src/bin/movements/863.bin"

MOVEMENT_864: ;$C394FD
	.INCBIN "src/bin/movements/864.bin"

MOVEMENT_865: ;$C3952E
	.INCBIN "src/bin/movements/865.bin"

MOVEMENT_866: ;$C3955F
	.INCBIN "src/bin/movements/866.bin"

MOVEMENT_867: ;$C39590
	.INCBIN "src/bin/movements/867.bin"

MOVEMENT_868: ;$C395C1
	.INCBIN "src/bin/movements/868.bin"

MOVEMENT_869: ;$C395F2
	.INCBIN "src/bin/movements/869.bin"

MOVEMENT_870: ;$C39623
	.INCBIN "src/bin/movements/870.bin"

MOVEMENT_871: ;$C39654
	.INCBIN "src/bin/movements/871.bin"

MOVEMENT_872: ;$C39685
	.INCBIN "src/bin/movements/872.bin"

MOVEMENT_873: ;$C396B6
	.INCBIN "src/bin/movements/873.bin"

MOVEMENT_874: ;$C396E7
	.INCBIN "src/bin/movements/874.bin"

MOVEMENT_875: ;$C39718
	.INCBIN "src/bin/movements/875.bin"

MOVEMENT_876: ;$C39749
	.INCBIN "src/bin/movements/876.bin"

MOVEMENT_877: ;$C3977A
	.INCBIN "src/bin/movements/877.bin"

MOVEMENT_878: ;$C397AB
	.INCBIN "src/bin/movements/878.bin"

MOVEMENT_879: ;$C397DC
	.INCBIN "src/bin/movements/879.bin"

MOVEMENT_880: ;$C3980D
	.INCBIN "src/bin/movements/880.bin"

MOVEMENT_881: ;$C3983E
	.INCBIN "src/bin/movements/881.bin"

MOVEMENT_882: ;$C3986F
	.INCBIN "src/bin/movements/882.bin"

MOVEMENT_883: ;$C398A0
	.INCBIN "src/bin/movements/883.bin"

MOVEMENT_884: ;$C398D1
	.INCBIN "src/bin/movements/884.bin"

MOVEMENT_885: ;$C39902
	.INCBIN "src/bin/movements/885.bin"

MOVEMENT_886: ;$C39933
	.INCBIN "src/bin/movements/886.bin"

MOVEMENT_887: ;$C39964
	.INCBIN "src/bin/movements/887.bin"

MOVEMENT_888: ;$C39995
	.INCBIN "src/bin/movements/888.bin"

MOVEMENT_889: ;$C399C6
	.INCBIN "src/bin/movements/889.bin"

MOVEMENT_890: ;$C399F7
	.INCBIN "src/bin/movements/890.bin"

MOVEMENT_891: ;$C39A28
	.INCBIN "src/bin/movements/891.bin"

MOVEMENT_892: ;$C39A59
	.INCBIN "src/bin/movements/892.bin"

MOVEMENT_893: ;$C39A8A
	.INCBIN "src/bin/movements/893.bin"

UNKNOWN_C39ABB: ;$C39ABB
	.INCBIN "src/bin/unknowns/C39ABB.bin"

UNKNOWN_C39AC7: ;$C39AC7
	.INCBIN "src/bin/unknowns/C39AC7.bin"

MOVEMENT_765: ;$C39AD9
	.INCBIN "src/bin/movements/765.bin"

MOVEMENT_766: ;$C39AFA
	.INCBIN "src/bin/movements/766.bin"

MOVEMENT_767: ;$C39B25
	.INCBIN "src/bin/movements/767.bin"

MOVEMENT_768: ;$C39B86
	.INCBIN "src/bin/movements/768.bin"

MOVEMENT_769: ;$C39CD7
	.INCBIN "src/bin/movements/769.bin"

MOVEMENT_770: ;$C39D3D
	.INCBIN "src/bin/movements/770.bin"

MOVEMENT_771: ;$C39D85
	.INCBIN "src/bin/movements/771.bin"

MOVEMENT_772: ;$C39DCF
	.INCBIN "src/bin/movements/772.bin"

UNKNOWN_C39E01: ;$C39E01
	.INCBIN "src/bin/unknowns/C39E01.bin"

UNKNOWN_C39E0E: ;$C39E0E
	.INCBIN "src/bin/unknowns/C39E0E.bin"

MOVEMENT_773: ;$C39E13
	.INCBIN "src/bin/movements/773.bin"

MOVEMENT_774: ;$C39E22
	.INCBIN "src/bin/movements/774.bin"

MOVEMENT_775: ;$C39E50
	.INCBIN "src/bin/movements/775.bin"

UNKNOWN_C39E78: ;$C39E78
	.INCBIN "src/bin/unknowns/C39E78.bin"

MOVEMENT_777: ;$C39E7B
	.INCBIN "src/bin/movements/777.bin"

MOVEMENT_778: ;$C39E83
	.INCBIN "src/bin/movements/778.bin"

MOVEMENT_776: ;$C39E8B
	.INCBIN "src/bin/movements/776.bin"

MOVEMENT_779: ;$C39EB6
	.INCBIN "src/bin/movements/779.bin"

MOVEMENT_780: ;$C39ECA
	.INCBIN "src/bin/movements/780.bin"

MOVEMENT_781: ;$C39EDE
	.INCBIN "src/bin/movements/781.bin"

MOVEMENT_782: ;$C39EF2
	.INCBIN "src/bin/movements/782.bin"

UNKNOWN_C39F3F: ;$C39F3F
	.INCBIN "src/bin/unknowns/C39F3F.bin"

UNKNOWN_C39F67: ;$C39F67
	.INCBIN "src/bin/unknowns/C39F67.bin"

UNKNOWN_C39F7A: ;$C39F7A
	.INCBIN "src/bin/unknowns/C39F7A.bin"

UNKNOWN_C39F8D: ;$C39F8D
	.INCBIN "src/bin/unknowns/C39F8D.bin"

MOVEMENT_783: ;$C39FA0
	.INCBIN "src/bin/movements/783.bin"

MOVEMENT_784: ;$C39FBA
	.INCBIN "src/bin/movements/784.bin"

UNKNOWN_C39FF2: ;$C39FF2
	.WORD $A010
	.WORD $A010
	.WORD $A010
	.WORD $A01B
	.WORD $A026
	.WORD $A026
	.WORD $A026
	.WORD $A02D
	.WORD $A02D
	.WORD $A026
	.WORD $A010
	.WORD $A026
	.WORD $A026
	.WORD $A010
	.WORD $A038

UNKNOWN_C3A010: ;$C3A010
	.INCBIN "src/bin/unknowns/C3A010.bin"

MOVEMENT_1: ;$C3A043
	.INCBIN "src/bin/movements/1.bin"

MOVEMENT_2: ;$C3A05E
	.INCBIN "src/bin/movements/2.bin"

UNKNOWN_C3A07F: ;$C3A07F
	.INCBIN "src/bin/unknowns/C3A07F.bin"

MOVEMENT_3: ;$C3A080
	.INCBIN "src/bin/movements/3.bin"

MOVEMENT_894: ;$C3A099
	.INCBIN "src/bin/movements/894.bin"

UNKNOWN_C3A09F: ;$C3A09F
	.INCBIN "src/bin/unknowns/C3A09F.bin"

UNKNOWN_C3A0B2: ;$C3A0B2
	.INCBIN "src/bin/unknowns/C3A0B2.bin"

UNKNOWN_C3A0C5: ;$C3A0C5
	.INCBIN "src/bin/unknowns/C3A0C5.bin"

UNKNOWN_C3A0D8: ;$C3A0D8
	.INCBIN "src/bin/unknowns/C3A0D8.bin"

UNKNOWN_C3A12E: ;$C3A12E
	.INCBIN "src/bin/unknowns/C3A12E.bin"

UNKNOWN_C3A159: ;$C3A159
	.INCBIN "src/bin/unknowns/C3A159.bin"

UNKNOWN_C3A15E: ;$C3A15E
	.INCBIN "src/bin/unknowns/C3A15E.bin"

UNKNOWN_C3A17B: ;$C3A17B
	.INCBIN "src/bin/unknowns/C3A17B.bin"

UNKNOWN_C3A18F: ;$C3A18F
	.INCBIN "src/bin/unknowns/C3A18F.bin"

UNKNOWN_C3A1A3: ;$C3A1A3
	.INCBIN "src/bin/unknowns/C3A1A3.bin"

UNKNOWN_C3A1B7: ;$C3A1B7
	.INCBIN "src/bin/unknowns/C3A1B7.bin"

UNKNOWN_C3A1CB: ;$C3A1CB
	.INCBIN "src/bin/unknowns/C3A1CB.bin"

UNKNOWN_C3A1DF: ;$C3A1DF
	.INCBIN "src/bin/unknowns/C3A1DF.bin"

UNKNOWN_C3A1F3: ;$C3A1F3
	.INCBIN "src/bin/unknowns/C3A1F3.bin"

MOVEMENT_35: ;$C3A204
	.INCBIN "src/bin/movements/35.bin"

UNKNOWN_C3A209: ;$C3A209
	.INCBIN "src/bin/unknowns/C3A209.bin"

UNKNOWN_C3A20E: ;$C3A20E
	.INCBIN "src/bin/unknowns/C3A20E.bin"

UNKNOWN_C3A222: ;$C3A222
	.INCBIN "src/bin/unknowns/C3A222.bin"

UNKNOWN_C3A22C: ;$C3A22C
	.INCBIN "src/bin/unknowns/C3A22C.bin"

UNKNOWN_C3A23D: ;$C3A23D
	.INCBIN "src/bin/unknowns/C3A23D.bin"

UNKNOWN_C3A24E: ;$C3A24E
	.INCBIN "src/bin/unknowns/C3A24E.bin"

UNKNOWN_C3A25F: ;$C3A25F
	.INCBIN "src/bin/unknowns/C3A25F.bin"

UNKNOWN_C3A262: ;$C3A262
	.INCBIN "src/bin/unknowns/C3A262.bin"

UNKNOWN_C3A271: ;$C3A271
	.INCBIN "src/bin/unknowns/C3A271.bin"

UNKNOWN_C3A272: ;$C3A272
	.INCBIN "src/bin/unknowns/C3A272.bin"

MOVEMENT_4: ;$C3A273
	.INCBIN "src/bin/movements/4.bin"

MOVEMENT_7: ;$C3A287
	.INCBIN "src/bin/movements/7.bin"

MOVEMENT_9: ;$C3A299
	.INCBIN "src/bin/movements/9.bin"

MOVEMENT_8: ;$C3A2AA
	.INCBIN "src/bin/movements/8.bin"

MOVEMENT_861: ;$C3A2C6
	.INCBIN "src/bin/movements/861.bin"

MOVEMENT_10_11: ;$C3A2D3
	.INCBIN "src/bin/movements/10_11.bin"

MOVEMENT_6_12: ;$C3A2E4
	.INCBIN "src/bin/movements/6_12.bin"

MOVEMENT_13: ;$C3A33B
	.INCBIN "src/bin/movements/13.bin"

MOVEMENT_14: ;$C3A349
	.INCBIN "src/bin/movements/14.bin"

MOVEMENT_15: ;$C3A357
	.INCBIN "src/bin/movements/15.bin"

MOVEMENT_16: ;$C3A365
	.INCBIN "src/bin/movements/16.bin"

MOVEMENT_17: ;$C3A373
	.INCBIN "src/bin/movements/17.bin"

MOVEMENT_18: ;$C3A381
	.INCBIN "src/bin/movements/18.bin"

UNKNOWN_C3A3A1: ;$C3A3A1
	.INCBIN "src/bin/unknowns/C3A3A1.bin"

UNKNOWN_C3A3B7: ;$C3A3B7
	.INCBIN "src/bin/unknowns/C3A3B7.bin"

UNKNOWN_C3A3C9: ;$C3A3C9
	.INCBIN "src/bin/unknowns/C3A3C9.bin"

UNKNOWN_C3A401: ;$C3A401
	.INCBIN "src/bin/unknowns/C3A401.bin"

UNKNOWN_C3A426: ;$C3A426
	.INCBIN "src/bin/unknowns/C3A426.bin"

UNKNOWN_C3A42D: ;$C3A42D
	.INCBIN "src/bin/unknowns/C3A42D.bin"

UNKNOWN_C3A434: ;$C3A434
	.INCBIN "src/bin/unknowns/C3A434.bin"

UNKNOWN_C3A448: ;$C3A448
	.INCBIN "src/bin/unknowns/C3A448.bin"

UNKNOWN_C3A45C: ;$C3A45C
	.INCBIN "src/bin/unknowns/C3A45C.bin"

MOVEMENT_5: ;$C3A481
	.INCBIN "src/bin/movements/5.bin"

MOVEMENT_19: ;$C3A48A
	.INCBIN "src/bin/movements/19.bin"

UNKNOWN_C3A4AC: ;$C3A4AC
	.INCBIN "src/bin/unknowns/C3A4AC.bin"

MOVEMENT_20: ;$C3A4C9
	.INCBIN "src/bin/movements/20.bin"

UNKNOWN_C3A500: ;$C3A500
	.INCBIN "src/bin/unknowns/C3A500.bin"

UNKNOWN_C3A528: ;$C3A528
	.INCBIN "src/bin/unknowns/C3A528.bin"

MOVEMENT_21: ;$C3A549
	.INCBIN "src/bin/movements/21.bin"

UNKNOWN_C3A592: ;$C3A592
	.INCBIN "src/bin/unknowns/C3A592.bin"

UNKNOWN_C3A59F: ;$C3A59F
	.INCBIN "src/bin/unknowns/C3A59F.bin"

MOVEMENT_22: ;$C3A5C9
	.INCBIN "src/bin/movements/22.bin"

UNKNOWN_C3A606: ;$C3A606
	.INCBIN "src/bin/unknowns/C3A606.bin"

UNKNOWN_C3A61F: ;$C3A61F
	.INCBIN "src/bin/unknowns/C3A61F.bin"

MOVEMENT_23: ;$C3A643
	.INCBIN "src/bin/movements/23.bin"

UNKNOWN_C3A677: ;$C3A677
	.INCBIN "src/bin/unknowns/C3A677.bin"

UNKNOWN_C3A68D: ;$C3A68D
	.INCBIN "src/bin/unknowns/C3A68D.bin"

UNKNOWN_C3A6B1: ;$C3A6B1
	.INCBIN "src/bin/unknowns/C3A6B1.bin"

MOVEMENT_24: ;$C3A6C4
	.INCBIN "src/bin/movements/24.bin"

UNKNOWN_C3A6F0: ;$C3A6F0
	.INCBIN "src/bin/unknowns/C3A6F0.bin"

MOVEMENT_25: ;$C3A714
	.INCBIN "src/bin/movements/25.bin"

UNKNOWN_C3A749: ;$C3A749
	.INCBIN "src/bin/unknowns/C3A749.bin"

UNKNOWN_C3A76D: ;$C3A76D
	.INCBIN "src/bin/unknowns/C3A76D.bin"

MOVEMENT_26: ;$C3A780
	.INCBIN "src/bin/movements/26.bin"

MOVEMENT_27: ;$C3A7F8
	.INCBIN "src/bin/movements/27.bin"

UNKNOWN_C3A830: ;$C3A830
	.INCBIN "src/bin/unknowns/C3A830.bin"

UNKNOWN_C3A83D: ;$C3A83D
	.INCBIN "src/bin/unknowns/C3A83D.bin"

UNKNOWN_C3A851: ;$C3A851
	.INCBIN "src/bin/unknowns/C3A851.bin"

MOVEMENT_28: ;$C3A874
	.INCBIN "src/bin/movements/28.bin"

UNKNOWN_C3A8AC: ;$C3A8AC
	.INCBIN "src/bin/unknowns/C3A8AC.bin"

MOVEMENT_29: ;$C3A8D2
	.INCBIN "src/bin/movements/29.bin"

UNKNOWN_C3A922: ;$C3A922
	.INCBIN "src/bin/unknowns/C3A922.bin"

UNKNOWN_C3A92B: ;$C3A92B
	.INCBIN "src/bin/unknowns/C3A92B.bin"

MOVEMENT_30: ;$C3A953
	.INCBIN "src/bin/movements/30.bin"

UNKNOWN_C3A9A9: ;$C3A9A9
	.INCBIN "src/bin/unknowns/C3A9A9.bin"

MOVEMENT_31: ;$C3A9DA
	.INCBIN "src/bin/movements/31.bin"

UNKNOWN_C3A9FF: ;$C3A9FF
	.INCBIN "src/bin/unknowns/C3A9FF.bin"

UNKNOWN_C3AA1E: ;$C3AA1E
	.INCBIN "src/bin/unknowns/C3AA1E.bin"

UNKNOWN_C3AA2B: ;$C3AA2B
	.INCBIN "src/bin/unknowns/C3AA2B.bin"

UNKNOWN_C3AA38: ;$C3AA38
	.INCBIN "src/bin/unknowns/C3AA38.bin"

UNKNOWN_C3AA46: ;$C3AA46
	.INCBIN "src/bin/unknowns/C3AA46.bin"

UNKNOWN_C3AA5A: ;$C3AA5A
	.INCBIN "src/bin/unknowns/C3AA5A.bin"

UNKNOWN_C3AA6E: ;$C3AA6E
	.INCBIN "src/bin/unknowns/C3AA6E.bin"

UNKNOWN_C3AA82: ;$C3AA82
	.INCBIN "src/bin/unknowns/C3AA82.bin"

UNKNOWN_C3AA96: ;$C3AA96
	.INCBIN "src/bin/unknowns/C3AA96.bin"

UNKNOWN_C3AAAA: ;$C3AAAA
	.INCBIN "src/bin/unknowns/C3AAAA.bin"

UNKNOWN_C3AAB8: ;$C3AAB8
	.INCBIN "src/bin/unknowns/C3AAB8.bin"

UNKNOWN_C3AAC2: ;$C3AAC2
	.INCBIN "src/bin/unknowns/C3AAC2.bin"

UNKNOWN_C3AAD6: ;$C3AAD6
	.INCBIN "src/bin/unknowns/C3AAD6.bin"

UNKNOWN_C3AAEA: ;$C3AAEA
	.INCBIN "src/bin/unknowns/C3AAEA.bin"

UNKNOWN_C3AAFE: ;$C3AAFE
	.INCBIN "src/bin/unknowns/C3AAFE.bin"

UNKNOWN_C3AB12: ;$C3AB12
	.INCBIN "src/bin/unknowns/C3AB12.bin"

UNKNOWN_C3AB26: ;$C3AB26
	.INCBIN "src/bin/unknowns/C3AB26.bin"

UNKNOWN_C3AB37: ;$C3AB37
	.INCBIN "src/bin/unknowns/C3AB37.bin"

UNKNOWN_C3AB44: ;$C3AB44
	.INCBIN "src/bin/unknowns/C3AB44.bin"

UNKNOWN_C3AB59: ;$C3AB59
	.INCBIN "src/bin/unknowns/C3AB59.bin"

UNKNOWN_C3AB67: ;$C3AB67
	.INCBIN "src/bin/unknowns/C3AB67.bin"

UNKNOWN_C3AB8A: ;$C3AB8A
	.INCBIN "src/bin/unknowns/C3AB8A.bin"

UNKNOWN_C3AB94: ;$C3AB94
	.INCBIN "src/bin/unknowns/C3AB94.bin"

UNKNOWN_C3AB9E: ;$C3AB9E
	.INCBIN "src/bin/unknowns/C3AB9E.bin"

UNKNOWN_C3ABAC: ;$C3ABAC
	.INCBIN "src/bin/unknowns/C3ABAC.bin"

UNKNOWN_C3ABE0: ;$C3ABE0
	.INCBIN "src/bin/unknowns/C3ABE0.bin"

MOVEMENT_476: ;$C3ABED
	.INCBIN "src/bin/movements/476.bin"

MOVEMENT_477: ;$C3AC27
	.INCBIN "src/bin/movements/477.bin"

MOVEMENT_478: ;$C3AC61
	.INCBIN "src/bin/movements/478.bin"

MOVEMENT_36: ;$C3ACAD
	.INCBIN "src/bin/movements/36.bin"

MOVEMENT_37: ;$C3AD7A
	.INCBIN "src/bin/movements/37.bin"

UNKNOWN_C3ADC6: ;$C3ADC6
	.INCBIN "src/bin/unknowns/C3ADC6.bin"

MOVEMENT_43: ;$C3ADE1
	.INCBIN "src/bin/movements/43.bin"

MOVEMENT_42: ;$C3AE02
	.INCBIN "src/bin/movements/42.bin"

MOVEMENT_44: ;$C3AE0F
	.INCBIN "src/bin/movements/44.bin"

MOVEMENT_38: ;$C3AE1E
	.INCBIN "src/bin/movements/38.bin"

UNKNOWN_C3AE68: ;$C3AE68
	.INCBIN "src/bin/unknowns/C3AE68.bin"

MOVEMENT_39: ;$C3AE78
	.INCBIN "src/bin/movements/39.bin"

MOVEMENT_40: ;$C3AEA0
	.INCBIN "src/bin/movements/40.bin"

MOVEMENT_41: ;$C3AEAC
	.INCBIN "src/bin/movements/41.bin"

MOVEMENT_45: ;$C3AF0F
	.INCBIN "src/bin/movements/45.bin"

MOVEMENT_46: ;$C3AF4E
	.INCBIN "src/bin/movements/46.bin"

UNKNOWN_C3AFA3: ;$C3AFA3
	.INCBIN "src/bin/unknowns/C3AFA3.bin"

MOVEMENT_55: ;$C3AFAC
	.INCBIN "src/bin/movements/55.bin"

MOVEMENT_47: ;$C3AFD8
	.INCBIN "src/bin/movements/47.bin"

MOVEMENT_48: ;$C3AFFA
	.INCBIN "src/bin/movements/48.bin"

MOVEMENT_49: ;$C3B021
	.INCBIN "src/bin/movements/49.bin"

MOVEMENT_53: ;$C3B04D
	.INCBIN "src/bin/movements/53.bin"

MOVEMENT_51: ;$C3B06D
	.INCBIN "src/bin/movements/51.bin"

UNKNOWN_C3B0B6: ;$C3B0B6
	.INCBIN "src/bin/unknowns/C3B0B6.bin"

MOVEMENT_50: ;$C3B0EC
	.INCBIN "src/bin/movements/50.bin"

UNKNOWN_C3B135: ;$C3B135
	.INCBIN "src/bin/unknowns/C3B135.bin"

MOVEMENT_54: ;$C3B13E
	.INCBIN "src/bin/movements/54.bin"

MOVEMENT_52: ;$C3B1A6
	.INCBIN "src/bin/movements/52.bin"

MOVEMENT_56: ;$C3B1E9
	.INCBIN "src/bin/movements/56.bin"

MOVEMENT_57: ;$C3B208
	.INCBIN "src/bin/movements/57.bin"

MOVEMENT_58: ;$C3B25D
	.INCBIN "src/bin/movements/58.bin"

MOVEMENT_59: ;$C3B2B2
	.INCBIN "src/bin/movements/59.bin"

MOVEMENT_60: ;$C3B2FA
	.INCBIN "src/bin/movements/60.bin"

MOVEMENT_61: ;$C3B35D
	.INCBIN "src/bin/movements/61.bin"

MOVEMENT_62: ;$C3B3A2
	.INCBIN "src/bin/movements/62.bin"

MOVEMENT_63: ;$C3B3C8
	.INCBIN "src/bin/movements/63.bin"

UNKNOWN_C3B431: ;$C3B431
	.INCBIN "src/bin/unknowns/C3B431.bin"

MOVEMENT_64: ;$C3B445
	.INCBIN "src/bin/movements/64.bin"

MOVEMENT_65: ;$C3B46F
	.INCBIN "src/bin/movements/65.bin"

MOVEMENT_66: ;$C3B4A5
	.INCBIN "src/bin/movements/66.bin"

MOVEMENT_67: ;$C3B4FB
	.INCBIN "src/bin/movements/67.bin"

UNKNOWN_C3B52A: ;$C3B52A
	.INCBIN "src/bin/unknowns/C3B52A.bin"

MOVEMENT_69: ;$C3B538
	.INCBIN "src/bin/movements/69.bin"

MOVEMENT_68: ;$C3B5D6
	.INCBIN "src/bin/movements/68.bin"

MOVEMENT_70: ;$C3B633
	.INCBIN "src/bin/movements/70.bin"

MOVEMENT_71: ;$C3B69C
	.INCBIN "src/bin/movements/71.bin"

MOVEMENT_72: ;$C3B6D4
	.INCBIN "src/bin/movements/72.bin"

UNKNOWN_C3B70C: ;$C3B70C
	.INCBIN "src/bin/unknowns/C3B70C.bin"

MOVEMENT_73: ;$C3B757
	.INCBIN "src/bin/movements/73.bin"

MOVEMENT_74: ;$C3B784
	.INCBIN "src/bin/movements/74.bin"

MOVEMENT_75: ;$C3B7BC
	.INCBIN "src/bin/movements/75.bin"

MOVEMENT_76: ;$C3B7EF
	.INCBIN "src/bin/movements/76.bin"

MOVEMENT_77: ;$C3B810
	.INCBIN "src/bin/movements/77.bin"

MOVEMENT_78: ;$C3B86C
	.INCBIN "src/bin/movements/78.bin"

MOVEMENT_79: ;$C3B8A5
	.INCBIN "src/bin/movements/79.bin"

MOVEMENT_80: ;$C3B8E8
	.INCBIN "src/bin/movements/80.bin"

MOVEMENT_81: ;$C3B902
	.INCBIN "src/bin/movements/81.bin"

MOVEMENT_82: ;$C3B926
	.INCBIN "src/bin/movements/82.bin"

MOVEMENT_83: ;$C3B95D
	.INCBIN "src/bin/movements/83.bin"

MOVEMENT_84: ;$C3B9B6
	.INCBIN "src/bin/movements/84.bin"

MOVEMENT_85: ;$C3B9D4
	.INCBIN "src/bin/movements/85.bin"

MOVEMENT_86: ;$C3B9F2
	.INCBIN "src/bin/movements/86.bin"

MOVEMENT_88: ;$C3BA07
	.INCBIN "src/bin/movements/88.bin"

MOVEMENT_87: ;$C3BA1C
	.INCBIN "src/bin/movements/87.bin"

MOVEMENT_89: ;$C3BA31
	.INCBIN "src/bin/movements/89.bin"

MOVEMENT_90: ;$C3BA4F
	.INCBIN "src/bin/movements/90.bin"

MOVEMENT_94: ;$C3BA64
	.INCBIN "src/bin/movements/94.bin"

MOVEMENT_95: ;$C3BA67
	.INCBIN "src/bin/movements/95.bin"

MOVEMENT_96: ;$C3BA6A
	.INCBIN "src/bin/movements/96.bin"

MOVEMENT_97: ;$C3BA6D
	.INCBIN "src/bin/movements/97.bin"

MOVEMENT_98: ;$C3BA70
	.INCBIN "src/bin/movements/98.bin"

UNKNOWN_C3BA9C: ;$C3BA9C
	.INCBIN "src/bin/unknowns/C3BA9C.bin"

UNKNOWN_C3BAA3: ;$C3BAA3
	.INCBIN "src/bin/unknowns/C3BAA3.bin"

UNKNOWN_C3BAC4: ;$C3BAC4
	.INCBIN "src/bin/unknowns/C3BAC4.bin"

UNKNOWN_C3BAD7: ;$C3BAD7
	.INCBIN "src/bin/unknowns/C3BAD7.bin"

MOVEMENT_91: ;$C3BAEA
	.INCBIN "src/bin/movements/91.bin"

UNKNOWN_C3BB06: ;$C3BB06
	.INCBIN "src/bin/unknowns/C3BB06.bin"

MOVEMENT_92: ;$C3BB17
	.INCBIN "src/bin/movements/92.bin"

MOVEMENT_99: ;$C3BB33
	.INCBIN "src/bin/movements/99.bin"

MOVEMENT_100: ;$C3BB4C
	.INCBIN "src/bin/movements/100.bin"

UNKNOWN_C3BB5C: ;$C3BB5C
	.INCBIN "src/bin/unknowns/C3BB5C.bin"

UNKNOWN_C3BB73: ;$C3BB73
	.INCBIN "src/bin/unknowns/C3BB73.bin"

MOVEMENT_93: ;$C3BB94
	.INCBIN "src/bin/movements/93.bin"

MOVEMENT_103: ;$C3BBB7
	.INCBIN "src/bin/movements/103.bin"

MOVEMENT_104: ;$C3BC0A
	.INCBIN "src/bin/movements/104.bin"

MOVEMENT_105: ;$C3BC5D
	.INCBIN "src/bin/movements/105.bin"

MOVEMENT_106: ;$C3BCB0
	.INCBIN "src/bin/movements/106.bin"

UNKNOWN_C3BD03: ;$C3BD03
	.INCBIN "src/bin/unknowns/C3BD03.bin"

MOVEMENT_102: ;$C3BD0E
	.INCBIN "src/bin/movements/102.bin"

MOVEMENT_101: ;$C3BD2E
	.INCBIN "src/bin/movements/101.bin"

MOVEMENT_107: ;$C3BD56
	.INCBIN "src/bin/movements/107.bin"

MOVEMENT_108: ;$C3BD80
	.INCBIN "src/bin/movements/108.bin"

MOVEMENT_109: ;$C3BDA0
	.INCBIN "src/bin/movements/109.bin"

MOVEMENT_110: ;$C3BDC3
	.INCBIN "src/bin/movements/110.bin"

MOVEMENT_111: ;$C3BE01
	.INCBIN "src/bin/movements/111.bin"

MOVEMENT_112: ;$C3BE2C
	.INCBIN "src/bin/movements/112.bin"

MOVEMENT_113: ;$C3BE57
	.INCBIN "src/bin/movements/113.bin"

MOVEMENT_114: ;$C3BE80
	.INCBIN "src/bin/movements/114.bin"

UNKNOWN_C3BEA4: ;$C3BEA4
	.INCBIN "src/bin/unknowns/C3BEA4.bin"

UNKNOWN_C3BED4: ;$C3BED4
	.INCBIN "src/bin/unknowns/C3BED4.bin"

MOVEMENT_115: ;$C3BEEE
	.INCBIN "src/bin/movements/115.bin"

MOVEMENT_116: ;$C3BF4E
	.INCBIN "src/bin/movements/116.bin"

MOVEMENT_117: ;$C3BFB2
	.INCBIN "src/bin/movements/117.bin"

MOVEMENT_118: ;$C3C016
	.INCBIN "src/bin/movements/118.bin"

MOVEMENT_119: ;$C3C07C
	.INCBIN "src/bin/movements/119.bin"

UNKNOWN_C3C0E4: ;$C3C0E4
	.INCBIN "src/bin/unknowns/C3C0E4.bin"

MOVEMENT_468: ;$C3C0F3
	.INCBIN "src/bin/movements/468.bin"

MOVEMENT_469: ;$C3C101
	.INCBIN "src/bin/movements/469.bin"

MOVEMENT_470: ;$C3C110
	.INCBIN "src/bin/movements/470.bin"

MOVEMENT_471: ;$C3C11F
	.INCBIN "src/bin/movements/471.bin"

MOVEMENT_472: ;$C3C12E
	.INCBIN "src/bin/movements/472.bin"

UNKNOWN_C3C143: ;$C3C143
	.INCBIN "src/bin/unknowns/C3C143.bin"

MOVEMENT_473: ;$C3C167
	.INCBIN "src/bin/movements/473.bin"

MOVEMENT_474: ;$C3C17A
	.INCBIN "src/bin/movements/474.bin"

MOVEMENT_475: ;$C3C1A8
	.INCBIN "src/bin/movements/475.bin"

UNKNOWN_C3C1E0: ;$C3C1E0
	.INCBIN "src/bin/unknowns/C3C1E0.bin"

UNKNOWN_C3C20F: ;$C3C20F
	.INCBIN "src/bin/unknowns/C3C20F.bin"

UNKNOWN_C3C227: ;$C3C227
	.INCBIN "src/bin/unknowns/C3C227.bin"

MOVEMENT_120: ;$C3C236
	.INCBIN "src/bin/movements/120.bin"

MOVEMENT_121: ;$C3C258
	.INCBIN "src/bin/movements/121.bin"

MOVEMENT_132: ;$C3C282
	.INCBIN "src/bin/movements/132.bin"

MOVEMENT_122: ;$C3C2B8
	.INCBIN "src/bin/movements/122.bin"

MOVEMENT_123: ;$C3C2C8
	.INCBIN "src/bin/movements/123.bin"

MOVEMENT_124: ;$C3C2D1
	.INCBIN "src/bin/movements/124.bin"

MOVEMENT_125: ;$C3C2DA
	.INCBIN "src/bin/movements/125.bin"

MOVEMENT_126: ;$C3C2E3
	.INCBIN "src/bin/movements/126.bin"

UNKNOWN_C3C2EF: ;$C3C2EF
	.INCBIN "src/bin/unknowns/C3C2EF.bin"

MOVEMENT_127: ;$C3C326
	.INCBIN "src/bin/movements/127.bin"

MOVEMENT_128: ;$C3C336
	.INCBIN "src/bin/movements/128.bin"

MOVEMENT_129: ;$C3C33F
	.INCBIN "src/bin/movements/129.bin"

MOVEMENT_130: ;$C3C348
	.INCBIN "src/bin/movements/130.bin"

MOVEMENT_131: ;$C3C351
	.INCBIN "src/bin/movements/131.bin"

UNKNOWN_C3C35D: ;$C3C35D
	.INCBIN "src/bin/unknowns/C3C35D.bin"

MOVEMENT_133: ;$C3C394
	.INCBIN "src/bin/movements/133.bin"

MOVEMENT_134: ;$C3C3ED
	.INCBIN "src/bin/movements/134.bin"

MOVEMENT_135: ;$C3C427
	.INCBIN "src/bin/movements/135.bin"

MOVEMENT_136: ;$C3C46E
	.INCBIN "src/bin/movements/136.bin"

MOVEMENT_137: ;$C3C4CF
	.INCBIN "src/bin/movements/137.bin"

MOVEMENT_138: ;$C3C540
	.INCBIN "src/bin/movements/138.bin"

MOVEMENT_178: ;$C3C57A
	.INCBIN "src/bin/movements/178.bin"

MOVEMENT_139: ;$C3C59A
	.INCBIN "src/bin/movements/139.bin"

MOVEMENT_140: ;$C3C5C6
	.INCBIN "src/bin/movements/140.bin"

UNKNOWN_C3C5E5: ;$C3C5E5
	.INCBIN "src/bin/unknowns/C3C5E5.bin"

MOVEMENT_141: ;$C3C5F0
	.INCBIN "src/bin/movements/141.bin"

MOVEMENT_142: ;$C3C60D
	.INCBIN "src/bin/movements/142.bin"

MOVEMENT_143: ;$C3C634
	.INCBIN "src/bin/movements/143.bin"

MOVEMENT_144: ;$C3C687
	.INCBIN "src/bin/movements/144.bin"

MOVEMENT_145: ;$C3C6B5
	.INCBIN "src/bin/movements/145.bin"

MOVEMENT_146: ;$C3C6DD
	.INCBIN "src/bin/movements/146.bin"

MOVEMENT_162: ;$C3C747
	.INCBIN "src/bin/movements/162.bin"

MOVEMENT_165: ;$C3C7AE
	.INCBIN "src/bin/movements/165.bin"

UNKNOWN_C3C810: ;$C3C810
	.INCBIN "src/bin/unknowns/C3C810.bin"

UNKNOWN_C3C81A: ;$C3C81A
	.INCBIN "src/bin/unknowns/C3C81A.bin"

UNKNOWN_C3C824: ;$C3C824
	.INCBIN "src/bin/unknowns/C3C824.bin"

UNKNOWN_C3C872: ;$C3C872
	.INCBIN "src/bin/unknowns/C3C872.bin"

MOVEMENT_147: ;$C3C8A3
	.INCBIN "src/bin/movements/147.bin"

MOVEMENT_148: ;$C3C8B2
	.INCBIN "src/bin/movements/148.bin"

MOVEMENT_149: ;$C3C8C1
	.INCBIN "src/bin/movements/149.bin"

MOVEMENT_150: ;$C3C8D0
	.INCBIN "src/bin/movements/150.bin"

MOVEMENT_151: ;$C3C8DF
	.INCBIN "src/bin/movements/151.bin"

MOVEMENT_152: ;$C3C8EE
	.INCBIN "src/bin/movements/152.bin"

UNKNOWN_C3C8FD: ;$C3C8FD
	.INCBIN "src/bin/unknowns/C3C8FD.bin"

UNKNOWN_C3C90C: ;$C3C90C
	.INCBIN "src/bin/unknowns/C3C90C.bin"

UNKNOWN_C3C94E: ;$C3C94E
	.INCBIN "src/bin/unknowns/C3C94E.bin"

MOVEMENT_153: ;$C3C990
	.INCBIN "src/bin/movements/153.bin"

MOVEMENT_155: ;$C3C9E0
	.INCBIN "src/bin/movements/155.bin"

MOVEMENT_154: ;$C3CA3E
	.INCBIN "src/bin/movements/154.bin"

MOVEMENT_156: ;$C3CA8E
	.INCBIN "src/bin/movements/156.bin"

MOVEMENT_157: ;$C3CAEA
	.INCBIN "src/bin/movements/157.bin"

MOVEMENT_159: ;$C3CB38
	.INCBIN "src/bin/movements/159.bin"

MOVEMENT_158: ;$C3CB87
	.INCBIN "src/bin/movements/158.bin"

MOVEMENT_160: ;$C3CBD5
	.INCBIN "src/bin/movements/160.bin"

UNKNOWN_C3CC24: ;$C3CC24
	.INCBIN "src/bin/unknowns/C3CC24.bin"

UNKNOWN_C3CC5C: ;$C3CC5C
	.INCBIN "src/bin/unknowns/C3CC5C.bin"

UNKNOWN_C3CC94: ;$C3CC94
	.INCBIN "src/bin/unknowns/C3CC94.bin"

UNKNOWN_C3CCA8: ;$C3CCA8
	.INCBIN "src/bin/unknowns/C3CCA8.bin"

MOVEMENT_161: ;$C3CCB5
	.INCBIN "src/bin/movements/161.bin"

MOVEMENT_164: ;$C3CDF0
	.INCBIN "src/bin/movements/164.bin"

UNKNOWN_C3CEA2: ;$C3CEA2
	.INCBIN "src/bin/unknowns/C3CEA2.bin"

UNKNOWN_C3CEB9: ;$C3CEB9
	.INCBIN "src/bin/unknowns/C3CEB9.bin"

MOVEMENT_163: ;$C3CEC7
	.INCBIN "src/bin/movements/163.bin"

MOVEMENT_166: ;$C3CEF5
	.INCBIN "src/bin/movements/166.bin"

MOVEMENT_167: ;$C3CF1B
	.INCBIN "src/bin/movements/167.bin"

MOVEMENT_168: ;$C3CF3C
	.INCBIN "src/bin/movements/168.bin"

MOVEMENT_169: ;$C3CF4B
	.INCBIN "src/bin/movements/169.bin"

MOVEMENT_170: ;$C3CF76
	.INCBIN "src/bin/movements/170.bin"

MOVEMENT_171: ;$C3D04D
	.INCBIN "src/bin/movements/171.bin"

UNKNOWN_C3D0A4: ;$C3D0A4
	.INCBIN "src/bin/unknowns/C3D0A4.bin"

MOVEMENT_172: ;$C3D0C5
	.INCBIN "src/bin/movements/172.bin"

MOVEMENT_173: ;$C3D0EE
	.INCBIN "src/bin/movements/173.bin"

MOVEMENT_174: ;$C3D10E
	.INCBIN "src/bin/movements/174.bin"

MOVEMENT_175: ;$C3D12E
	.INCBIN "src/bin/movements/175.bin"

MOVEMENT_176: ;$C3D159
	.INCBIN "src/bin/movements/176.bin"

MOVEMENT_177: ;$C3D172
	.INCBIN "src/bin/movements/177.bin"

MOVEMENT_179: ;$C3D196
	.INCBIN "src/bin/movements/179.bin"

MOVEMENT_180: ;$C3D1C9
	.INCBIN "src/bin/movements/180.bin"

MOVEMENT_181: ;$C3D1F8
	.INCBIN "src/bin/movements/181.bin"

MOVEMENT_182: ;$C3D229
	.INCBIN "src/bin/movements/182.bin"

MOVEMENT_183: ;$C3D251
	.INCBIN "src/bin/movements/183.bin"

MOVEMENT_184: ;$C3D26E
	.INCBIN "src/bin/movements/184.bin"

MOVEMENT_185: ;$C3D2F7
	.INCBIN "src/bin/movements/185.bin"

MOVEMENT_186: ;$C3D31D
	.INCBIN "src/bin/movements/186.bin"

MOVEMENT_187: ;$C3D395
	.INCBIN "src/bin/movements/187.bin"

MOVEMENT_188: ;$C3D3C8
	.INCBIN "src/bin/movements/188.bin"

MOVEMENT_189: ;$C3D3FD
	.INCBIN "src/bin/movements/189.bin"

MOVEMENT_190: ;$C3D423
	.INCBIN "src/bin/movements/190.bin"

MOVEMENT_191: ;$C3D454
	.INCBIN "src/bin/movements/191.bin"

MOVEMENT_192: ;$C3D464
	.INCBIN "src/bin/movements/192.bin"

MOVEMENT_193: ;$C3D486
	.INCBIN "src/bin/movements/193.bin"

MOVEMENT_194: ;$C3D4C9
	.INCBIN "src/bin/movements/194.bin"

MOVEMENT_195: ;$C3D4EF
	.INCBIN "src/bin/movements/195.bin"

MOVEMENT_196: ;$C3D515
	.INCBIN "src/bin/movements/196.bin"

MOVEMENT_197: ;$C3D53B
	.INCBIN "src/bin/movements/197.bin"

MOVEMENT_198: ;$C3D566
	.INCBIN "src/bin/movements/198.bin"

MOVEMENT_199: ;$C3D58C
	.INCBIN "src/bin/movements/199.bin"

MOVEMENT_200: ;$C3D5B2
	.INCBIN "src/bin/movements/200.bin"

MOVEMENT_201: ;$C3D5D8
	.INCBIN "src/bin/movements/201.bin"

MOVEMENT_202: ;$C3D673
	.INCBIN "src/bin/movements/202.bin"

MOVEMENT_203: ;$C3D6D6
	.INCBIN "src/bin/movements/203.bin"

MOVEMENT_204: ;$C3D732
	.INCBIN "src/bin/movements/204.bin"

MOVEMENT_205: ;$C3D758
	.INCBIN "src/bin/movements/205.bin"

MOVEMENT_206: ;$C3D7E2
	.INCBIN "src/bin/movements/206.bin"

MOVEMENT_207: ;$C3D83C
	.INCBIN "src/bin/movements/207.bin"

MOVEMENT_208: ;$C3D898
	.INCBIN "src/bin/movements/208.bin"

MOVEMENT_209: ;$C3D8BE
	.INCBIN "src/bin/movements/209.bin"

MOVEMENT_210: ;$C3D8E4
	.INCBIN "src/bin/movements/210.bin"

UNKNOWN_C3D913: ;$C3D913
	.INCBIN "src/bin/unknowns/C3D913.bin"

MOVEMENT_211: ;$C3D91C
	.INCBIN "src/bin/movements/211.bin"

MOVEMENT_220: ;$C3D966
	.INCBIN "src/bin/movements/220.bin"

MOVEMENT_212: ;$C3D98C
	.INCBIN "src/bin/movements/212.bin"

MOVEMENT_213: ;$C3D9B2
	.INCBIN "src/bin/movements/213.bin"

MOVEMENT_214: ;$C3D9D8
	.INCBIN "src/bin/movements/214.bin"

MOVEMENT_215: ;$C3D9FE
	.INCBIN "src/bin/movements/215.bin"

MOVEMENT_216: ;$C3DA49
	.INCBIN "src/bin/movements/216.bin"

MOVEMENT_217: ;$C3DA97
	.INCBIN "src/bin/movements/217.bin"

MOVEMENT_218: ;$C3DAF8
	.INCBIN "src/bin/movements/218.bin"

MOVEMENT_219: ;$C3DB19
	.INCBIN "src/bin/movements/219.bin"

UNKNOWN_C3DB7A: ;$C3DB7A
	.INCBIN "src/bin/unknowns/C3DB7A.bin"

MOVEMENT_453: ;$C3DBA0
	.INCBIN "src/bin/movements/453.bin"

MOVEMENT_454: ;$C3DBCC
	.INCBIN "src/bin/movements/454.bin"

UNKNOWN_C3DBDB: ;$C3DBDB
	.INCBIN "src/bin/unknowns/C3DBDB.bin"

MOVEMENT_455: ;$C3DBF2
	.INCBIN "src/bin/movements/455.bin"

MOVEMENT_456: ;$C3DC57
	.INCBIN "src/bin/movements/456.bin"

MOVEMENT_457: ;$C3DC74
	.INCBIN "src/bin/movements/457.bin"

MOVEMENT_458: ;$C3DC91
	.INCBIN "src/bin/movements/458.bin"

MOVEMENT_459: ;$C3DCAE
	.INCBIN "src/bin/movements/459.bin"

MOVEMENT_460: ;$C3DCCB
	.INCBIN "src/bin/movements/460.bin"

MOVEMENT_461: ;$C3DD15
	.INCBIN "src/bin/movements/461.bin"

MOVEMENT_462: ;$C3DD32
	.INCBIN "src/bin/movements/462.bin"

MOVEMENT_463: ;$C3DD4F
	.INCBIN "src/bin/movements/463.bin"

MOVEMENT_464: ;$C3DD6C
	.INCBIN "src/bin/movements/464.bin"

MOVEMENT_32: ;$C3DE01
	.INCBIN "src/bin/movements/32.bin"

UNKNOWN_C3DE32: ;$C3DE32
	.INCBIN "src/bin/unknowns/C3DE32.bin"

UNKNOWN_C3DE39: ;$C3DE39
	.INCBIN "src/bin/unknowns/C3DE39.bin"

UNKNOWN_C3DE5E: ;$C3DE5E
	.INCBIN "src/bin/unknowns/C3DE5E.bin"

UNKNOWN_C3DE7B: ;$C3DE7B
	.INCBIN "src/bin/unknowns/C3DE7B.bin"

UNKNOWN_C3DE94: ;$C3DE94
	.INCBIN "src/bin/unknowns/C3DE94.bin"

UNKNOWN_C3DE9C: ;$C3DE9C
	.INCBIN "src/bin/unknowns/C3DE9C.bin"

UNKNOWN_C3DEB8: ;$C3DEB8
	.INCBIN "src/bin/unknowns/C3DEB8.bin"

UNKNOWN_C3DECC: ;$C3DECC
	.INCBIN "src/bin/unknowns/C3DECC.bin"

UNKNOWN_C3DEE5: ;$C3DEE5
	.INCBIN "src/bin/unknowns/C3DEE5.bin"

UNKNOWN_C3DEED: ;$C3DEED
	.INCBIN "src/bin/unknowns/C3DEED.bin"

UNKNOWN_C3DF01: ;$C3DF01
	.INCBIN "src/bin/unknowns/C3DF01.bin"

MOVEMENT_34: ;$C3DF1E
	.INCBIN "src/bin/movements/34.bin"

MOVEMENT_33: ;$C3DF72
	.INCBIN "src/bin/movements/33.bin"

UNKNOWN_C3DF90: ;$C3DF90
	.INCBIN "src/bin/unknowns/C3DF90.bin"

UNKNOWN_C3DFB5: ;$C3DFB5
	.INCBIN "src/bin/unknowns/C3DFB5.bin"

UNKNOWN_C3DFD4: ;$C3DFD4
	.INCBIN "src/bin/unknowns/C3DFD4.bin"

UNKNOWN_C3DFE8: ;$C3DFE8
	.INCBIN "src/bin/unknowns/C3DFE8.bin"

UNKNOWN_C3E12C: ;$C3E12C
	.INCBIN "src/bin/unknowns/C3E12C.bin"

UNKNOWN_C3E148: ;$C3E148
	.INCBIN "src/bin/unknowns/C3E148.bin"

UNKNOWN_C3E158: ;$C3E158
	.INCBIN "src/bin/unknowns/C3E158.bin"

UNKNOWN_C3E168: ;$C3E168
	.INCBIN "src/bin/unknowns/C3E168.bin"

UNKNOWN_C3E178: ;$C3E178
	.INCBIN "src/bin/unknowns/C3E178.bin"

UNKNOWN_C3E230: ;$C3E230
	.INCBIN "src/bin/unknowns/C3E230.bin"

UNKNOWN_C3E240: ;$C3E240
	.INCBIN "src/bin/unknowns/C3E240.bin"

WINDOW_CONFIGURATION_TABLE: ;$C3E250
	.WORD $0001, $0001, $000D, $0008
	.WORD $000C, $0001, $0013, $0008
	.WORD $0007, $0001, $0018, $0010
	.WORD $0001, $0001, $0006, $000A
	.WORD $0001, $0003, $000B, $0006
	.WORD $0014, $0001, $000B, $0010
	.WORD $0008, $0001, $0014, $000A
	.WORD $0012, $0001, $000D, $0010
	.WORD $0001, $0001, $001E, $0012
	.WORD $000C, $0001, $0013, $0012
	.WORD $0001, $000A, $0008, $0004
	.WORD $0001, $000F, $000B, $0004
	.WORD $000C, $0001, $0013, $0010
	.WORD $0007, $0001, $0018, $0010
	.WORD $0004, $0001, $0018, $0006
	.WORD $0001, $0001, $0015, $0006
	.WORD $0004, $0001, $0008, $0008
	.WORD $000C, $0001, $000C, $0004
	.WORD $0001, $0001, $000E, $0006
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
	.WORD $000C, $0001, $000C, $0004
	.WORD $0003, $0003, $001A, $0006
	.WORD $0001, $0001, $0007, $0004
	.WORD $0010, $0008, $000F, $0004
	.WORD $000A, $0008, $0015, $0004
	.WORD $0004, $0008, $001B, $0004
	.WORD $0008, $0002, $0018, $0010
	.WORD $0003, $000B, $000F, $0006
	.WORD $0004, $0001, $0008, $000A
	.WORD $0001, $0009, $001E, $000A
	.WORD $0001, $0001, $001C, $0006
	.WORD $000A, $0004, $0014, $0004
	.WORD $000E, $000B, $000F, $0010
	.WORD $0016, $0008, $0009, $0004
	.WORD $0007, $0009, $0012, $0012

UNKNOWN_C3E3F8: ;$C3E3F8
	.INCBIN "src/bin/unknowns/C3E3F8.bin"

UNKNOWN_C3E450: ;$C3E450
	REP #%00110001
	PHD
	TDC
	ADC #$FFEE
	TCD
	LDA a:.LOWORD(UNKNOWN_7E0002)
	AND #$00FF
	AND #$0004
	BEQ UNKNOWN_C3E450_UNKNOWN0
	LOADPTR TEXT_WINDOW_FLAVOUR_PALETTES, $06
	LDA .LOWORD(GAME_STATE)+game_state::text_flavour
	AND #$00FF
	DEC
	STA $04
	ASL
	ADC $04
	TAX
	LDA f:TEXT_WINDOW_PROPERTIES,X
	CLC
	ADC #$0008
	CLC
	ADC $06
	STA $06
	BRA UNKNOWN_C3E450_UNKNOWN1
UNKNOWN_C3E450_UNKNOWN0:
	LOADPTR TEXT_WINDOW_FLAVOUR_PALETTES, $06
	LDA .LOWORD(GAME_STATE)+game_state::text_flavour
	AND #$00FF
	DEC
	STA $04
	ASL
	ADC $04
	TAX
	LDA f:TEXT_WINDOW_PROPERTIES,X
	CLC
	ADC #$0028
	CLC
	ADC $06
	STA $06
UNKNOWN_C3E450_UNKNOWN1:
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDX #$0008
	LDA #$0228
	JSL MEMCPY16
	SEP #%00100000
	LDA #$0018
	STA a:.LOWORD(UNKNOWN_7E002F)+1
	REP #%00100000
	PLD
	RTL

CLEAR_9622: ;$C3E4CA
	REP #%00110001
	SEP #%00100000
	STZ .LOWORD(UNKNOWN_7E9622)
	REP #%00100000
	RTL

SET_9622_ONE: ;$C3E4D4
	REP #%00110001
	SEP #%00100000
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9622)
	REP #%00100000
	RTL

CALL_C12DD5_WITH_ZERO_9622: ;$C3E4E0
	REP #%00110001
	JSL CLEAR_9622
	JSL UNKNOWN_C12DD5
	JSL SET_9622_ONE
	RTL

UNKNOWN_C3E4EF: ;$C3E4EF
	REP #%00110001
	PHD
	TDC
	ADC #$FFF0
	TCD
	LDA #$0000
	STA $0E
	BRA UNKNOWN_C3E4EF_UNKNOWN2
UNKNOWN_C3E4EF_UNKNOWN0:
	LDY #$0052
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+4,X
	CMP #$FFFF
	BNE UNKNOWN_C3E4EF_UNKNOWN1
	LDA $0E
	BRA UNKNOWN_C3E4EF_UNKNOWN3
UNKNOWN_C3E4EF_UNKNOWN1:
	LDA $0E
	INC
	STA $0E
UNKNOWN_C3E4EF_UNKNOWN2:
	CMP #$0008
	BNE UNKNOWN_C3E4EF_UNKNOWN0
	LDA #$FFFF
UNKNOWN_C3E4EF_UNKNOWN3:
	PLD
	RTL

CLOSE_WINDOW: ;$C3E521
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFE8
	TCD
	PLA
	STA $16
	CMP #$FFFF
	BNE CLOSE_WINDOW_UNKNOWN0
	JMP a:.LOWORD(CLOSE_WINDOW_UNKNOWN18)
CLOSE_WINDOW_UNKNOWN0:
	LDA $16
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	STA $04
	CMP #$FFFF
	BNE CLOSE_WINDOW_UNKNOWN1
	JMP a:.LOWORD(CLOSE_WINDOW_UNKNOWN18)
CLOSE_WINDOW_UNKNOWN1:
	LDA .LOWORD(CURRENT_FOCUS_WINDOW)
	CMP $16
	BNE CLOSE_WINDOW_UNKNOWN2
	LDA #$FFFF
	STA .LOWORD(CURRENT_FOCUS_WINDOW)
CLOSE_WINDOW_UNKNOWN2:
	LDA $16
	JSL UNKNOWN_C3E7E3
	LDA $04
	LDY #$0052
	JSL MULT168
	TAX
	LDY .LOWORD(WINDOW_STATS_TABLE)+2,X
	STY $14
	LDA .LOWORD(WINDOW_STATS_TABLE),X
	STA $12
	CPY #$FFFF
	BNE CLOSE_WINDOW_UNKNOWN3
	STA .LOWORD(UNKNOWN_7E88E2)
	BRA CLOSE_WINDOW_UNKNOWN4
CLOSE_WINDOW_UNKNOWN3:
	TYA
	LDY #$0052
	JSL MULT168
	TAX
	LDA $12
	STA .LOWORD(WINDOW_STATS_TABLE),X
CLOSE_WINDOW_UNKNOWN4:
	CMP #$FFFF
	BNE CLOSE_WINDOW_UNKNOWN5
	LDY $14
	STY .LOWORD(UNKNOWN_7E88E0)
	BRA CLOSE_WINDOW_UNKNOWN6
CLOSE_WINDOW_UNKNOWN5:
	LDY #$0052
	JSL MULT168
	TAX
	LDY $14
	TYA
	STA .LOWORD(WINDOW_STATS_TABLE)+2,X
CLOSE_WINDOW_UNKNOWN6:
	LDA $04
	LDY #$0052
	JSL MULT168
	TAX
	STX $10
	LDA #$FFFF
	STA .LOWORD(WINDOW_STATS_TABLE)+4,X
	LDA $16
	ASL
	TAX
	LDA #$FFFF
	STA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDX $10
	LDA .LOWORD(WINDOW_STATS_TABLE)+6,X
	ASL
	STA $02
	LDA .LOWORD(WINDOW_STATS_TABLE)+8,X
	ASL
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC $02
	CLC
	ADC #$7DFE
	STA $02
	STA $0E
	LDY .LOWORD(WINDOW_STATS_TABLE)+53,X
	STY $14
	LDX #$0000
	STX $10
	BRA CLOSE_WINDOW_UNKNOWN10
CLOSE_WINDOW_UNKNOWN7:
	LDY $14
	LDA a:.LOWORD(UNKNOWN_7E0000),Y
	CMP #$0040
	BNE CLOSE_WINDOW_UNKNOWN8
	CMP #$0000
	BEQ CLOSE_WINDOW_UNKNOWN9
CLOSE_WINDOW_UNKNOWN8:
	LDA a:.LOWORD(UNKNOWN_7E0000),Y
	JSL UNKNOWN_C44AF7
CLOSE_WINDOW_UNKNOWN9:
	LDA #$0040
	LDY $14
	STA a:.LOWORD(UNKNOWN_7E0000),Y
	INY
	INY
	STY $14
	LDX $10
	INX
	STX $10
CLOSE_WINDOW_UNKNOWN10:
	LDA $04
	LDY #$0052
	JSL MULT168
	TAX
	LDY .LOWORD(WINDOW_STATS_TABLE)+10,X
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+12,X
	JSL MULT16
	STA $02
	LDX $10
	TXA
	CMP $02
	BCC CLOSE_WINDOW_UNKNOWN7
	LDY #$0000
	STY $10
	BRA CLOSE_WINDOW_UNKNOWN14
CLOSE_WINDOW_UNKNOWN11:
	LDA #$0000
	STA $12
	BRA CLOSE_WINDOW_UNKNOWN13
CLOSE_WINDOW_UNKNOWN12:
	LDA #$0000
	LDX $0E
	STX $02
	STA a:.LOWORD(UNKNOWN_7E0000),X
	INC $02
	INC $02
	LDA $02
	STA $0E
	LDA $12
	INC
	STA $12
CLOSE_WINDOW_UNKNOWN13:
	LDA $04
	LDY #$0052
	JSL MULT168
	TAX
	LDA .LOWORD(WINDOW_STATS_TABLE)+10,X
	TAX
	STX $02
	INC $02
	INC $02
	LDA $12
	CMP $02
	BNE CLOSE_WINDOW_UNKNOWN12
	STX $02
	LDA #$0020
	SEC
	SBC $02
	DEC
	DEC
	ASL
	PHA
	LDA $0E
	STA $02
	PLY
	STY $02
	CLC
	ADC $02
	STA $02
	STA $0E
	LDY $10
	INY
	STY $10
CLOSE_WINDOW_UNKNOWN14:
	LDA $04
	LDY #$0052
	JSL MULT168
	TAX
	STX $12
	LDA .LOWORD(WINDOW_STATS_TABLE)+12,X
	STA $02
	INC $02
	INC $02
	LDY $10
	TYA
	CMP $02
	BNE CLOSE_WINDOW_UNKNOWN11
	JSL UNKNOWN_C45E96
	LDX $12
	LDA .LOWORD(WINDOW_STATS_TABLE)+59,X
	AND #$00FF
	BEQ CLOSE_WINDOW_UNKNOWN15
	AND #$00FF
	DEC
	ASL
	TAX
	LDA #$FFFF
	STA .LOWORD(WINDOW_EXISTENCE_TABLE)+106,X
CLOSE_WINDOW_UNKNOWN15:
	LDA $04
	LDY #$0052
	JSL MULT168
	TAX
	SEP #%00100000
	STZ .LOWORD(WINDOW_STATS_TABLE)+59,X
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9623)
	REP #%00100000
	LDA .LOWORD(UNKNOWN_7E5E7A)
	CMP $16
	BNE CLOSE_WINDOW_UNKNOWN16
	LDA #$FFFF
	STA .LOWORD(UNKNOWN_7E5E7A)
CLOSE_WINDOW_UNKNOWN16:
	LDA .LOWORD(UNKNOWN_7E5E70)
	AND #$00FF
	BNE CLOSE_WINDOW_UNKNOWN17
	JSL CALL_C12DD5_WITH_ZERO_9622
	JSL CLEAR_9622
CLOSE_WINDOW_UNKNOWN17:
	SEP #%00100000
	STZ .LOWORD(UNKNOWN_7E5E75)
CLOSE_WINDOW_UNKNOWN18:
	REP #%00100000
	PLD
	RTL

UNKNOWN_C3E6F8: ;$C3E6F8
	REP #%00110001
	PHD
	TDC
	ADC #$FFF2
	TCD
	LDA .LOWORD(PSI_WINDOW_CHARACTER)
	CMP #$FFFF
	BEQ UNKNOWN_C3E6F8_UNKNOWN2
	JSL READ_JOYPAD
	LDA .LOWORD(PSI_WINDOW_CHARACTER)
	STA $04
	ASL
	ADC $04
	ASL
	ADC $04
	STA $02
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	STA $04
	ASL
	ADC $04
	ASL
	ADC $04
	PHA
	ASL
	PLA
	ROR
	STA $04
	LDA #$0010
	SEC
	SBC $04
	CLC
	ADC $02
	ASL
	CLC
	ADC #$827E
	TAY
	LDX #$0007
	BRA UNKNOWN_C3E6F8_UNKNOWN1
UNKNOWN_C3E6F8_UNKNOWN0:
	LDA #$0000
	STA a:.LOWORD(UNKNOWN_7E0000),Y
	INY
	INY
	DEX
UNKNOWN_C3E6F8_UNKNOWN1:
	BNE UNKNOWN_C3E6F8_UNKNOWN0
	LDA #$FFFF
	STA .LOWORD(PSI_WINDOW_CHARACTER)
	SEP #%00100000
	LDA #$0001
	STA .LOWORD(UNKNOWN_7E9623)
UNKNOWN_C3E6F8_UNKNOWN2:
	REP #%00100000
	PLD
	RTL

UNKNOWN_C3E75D: ;$C3E75D
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	BNE UNKNOWN_C3E75D_UNKNOWN1
	LDA .LOWORD(UNKNOWN_7E9658)
	CMP #$FFFF
	BNE UNKNOWN_C3E75D_UNKNOWN0
	SEP #%00100000
	STZ .LOWORD(UNKNOWN_7E5E77)
	BRA UNKNOWN_C3E75D_RETURN
UNKNOWN_C3E75D_UNKNOWN0:
	.A16
	LDA .LOWORD(UNKNOWN_7E5E77)
	AND #$00FF
	BNE UNKNOWN_C3E75D_RETURN
	LDA .LOWORD(UNKNOWN_7E9658)
	BRA UNKNOWN_C3E75D_UNKNOWN3
UNKNOWN_C3E75D_UNKNOWN1:
	.A16
	LDA .LOWORD(UNKNOWN_7E965A)
	CMP #$FFFF
	BNE UNKNOWN_C3E75D_UNKNOWN2
	SEP #%00100000
	STZ .LOWORD(UNKNOWN_7E5E78)
	BRA UNKNOWN_C3E75D_RETURN
UNKNOWN_C3E75D_UNKNOWN2:
	.A16
	LDA .LOWORD(UNKNOWN_7E5E78)
	AND #$00FF
	BNE UNKNOWN_C3E75D_RETURN
	LDA .LOWORD(UNKNOWN_7E965A)
UNKNOWN_C3E75D_UNKNOWN3:
	LDY #$005E
	JSL MULT168
	.A16
	TAX
	LDA f:ENEMY_CONFIGURATION_TABLE,X
	AND #$00FF
	BEQ UNKNOWN_C3E75D_RETURN
	LDA .LOWORD(UNKNOWN_7E5E76)
	AND #$00FF
	CMP #$0070
	BNE UNKNOWN_C3E75D_LOWERCASE_THE
	LOADPTR THETHE, $0E
	LDA #$0004
	JSL UNKNOWN_C447FB
	BRA UNKNOWN_C3E75D_RETURN
UNKNOWN_C3E75D_LOWERCASE_THE:
	LOADPTR THETHE+4, $0E
	LDA #$0004
	JSL UNKNOWN_C447FB
UNKNOWN_C3E75D_RETURN:
	REP #%00100000
	PLD
	RTL

UNKNOWN_C3E7E3: ;$C3E7E3
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFF0
	TCD
	PLA
	CMP #$FFFF
	BEQ UNKNOWN_C3E7E3_UNKNOWN2
	ASL
	TAX
	LDA .LOWORD(WINDOW_EXISTENCE_TABLE),X
	LDY #$0052
	JSL MULT168
	CLC
	ADC #$8650
	TAY
	STY $0E
	LDA a:.LOWORD(UNKNOWN_7E002B),Y
	CMP #$FFFF
	BEQ UNKNOWN_C3E7E3_UNKNOWN2
	LDY #$002D
	JSL MULT168
	CLC
	ADC #$89D4
	TAX
UNKNOWN_C3E7E3_UNKNOWN0:
	LDA #$0000
	STA a:.LOWORD(UNKNOWN_7E0000),X
	LDA a:.LOWORD(UNKNOWN_7E0002),X
	CMP #$FFFF
	BEQ UNKNOWN_C3E7E3_UNKNOWN1
	LDY #$002D
	JSL MULT168
	CLC
	ADC #$89D4
	TAX
	BRA UNKNOWN_C3E7E3_UNKNOWN0
UNKNOWN_C3E7E3_UNKNOWN1:
	LDA #$FFFF
	LDY $0E
	STA a:.LOWORD(UNKNOWN_7E002F),Y
	STA a:.LOWORD(UNKNOWN_7E002D),Y
	STA a:.LOWORD(UNKNOWN_7E002B),Y
	LDA #$0001
	STA BG1_X_POS,Y
	STA BG1_Y_POS,Y
UNKNOWN_C3E7E3_UNKNOWN2:
	PLD
	RTL

UNKNOWN_C3E84E: ;$C3E84E
	.INCBIN "src/bin/unknowns/C3E84E.bin"

DEBUG_MENU_TEXT: ;$C3E874
	.INCBIN "src/bin/unknowns/C3E874.bin"

DEBUG_MENU_ELEMENT_SPACING_DATA: ;$C3E964
	.INCBIN "src/bin/unknowns/C3E964.bin"

DEBUG_ON_TEXT: ;$C3E970
	.INCBIN "src/bin/unknowns/C3E970.bin"

DEBUG_OFF_TEXT: ;$C3E973
	.INCBIN "src/bin/unknowns/C3E973.bin"

UNKNOWN_C3E977: ;$C3E977
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFF2
	TCD
	PLA
	TXY
	TAX
	TYA
	DEC
	STA $02
	TXA
	DEC
	LDY #$005F
	JSL MULT168
	CLC
	ADC #$99F1
	CLC
	ADC $02
	TAX
	LDA a:.LOWORD(UNKNOWN_7E0000),X
	AND #$00FF
	PLD
	RTL

UNKNOWN_C3E9A0: ;$C3E9A0
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFF2
	TCD
	PLA
	STX $02
	TAX
	DEC
	LDY #.SIZEOF(char_struct)
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment,X
	AND #$00FF
	CMP $02
	BNE UNKNOWN_C3E9A0_UNKNOWN0
	LDA #$0001
	BRA UNKNOWN_C3E9A0_UNKNOWN4
UNKNOWN_C3E9A0_UNKNOWN0:
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+1,X
	AND #$00FF
	CMP $02
	BNE UNKNOWN_C3E9A0_UNKNOWN1
	LDA #$0001
	BRA UNKNOWN_C3E9A0_UNKNOWN4
UNKNOWN_C3E9A0_UNKNOWN1:
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+2,X
	AND #$00FF
	CMP $02
	BNE UNKNOWN_C3E9A0_UNKNOWN2
	LDA #$0001
	BRA UNKNOWN_C3E9A0_UNKNOWN4
UNKNOWN_C3E9A0_UNKNOWN2:
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+3,X
	AND #$00FF
	CMP $02
	BNE UNKNOWN_C3E9A0_UNKNOWN3
	LDA #$0001
	BRA UNKNOWN_C3E9A0_UNKNOWN4
UNKNOWN_C3E9A0_UNKNOWN3:
	LDA #$0000
UNKNOWN_C3E9A0_UNKNOWN4:
	PLD
	RTL

UNKNOWN_C3E9F7: ;$C3E9F7
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFF0
	TCD
	PLA
	STX $02
	TAX
	TXY
	DEY
	STY $0E
	TYA
	LDY #$005F
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment,X
	AND #$00FF
	BEQ UNKNOWN_C3E9F7_UNKNOWN0
	AND #$00FF
	DEC
	STA $04
	TXA
	CLC
	ADC #$99F1
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(UNKNOWN_7E0000),X
	AND #$00FF
	CMP $02
	BNE UNKNOWN_C3E9F7_UNKNOWN0
	LDA #$0001
	JMP UNKNOWN_C3E9F7_UNKNOWN4
UNKNOWN_C3E9F7_UNKNOWN0:
	LDY $0E
	TYA
	LDY #$005F
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+1,X
	AND #$00FF
	BEQ UNKNOWN_C3E9F7_UNKNOWN1
	AND #$00FF
	DEC
	STA $04
	TXA
	CLC
	ADC #$99F1
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(UNKNOWN_7E0000),X
	AND #$00FF
	CMP $02
	BNE UNKNOWN_C3E9F7_UNKNOWN1
	LDA #$0001
	BRA UNKNOWN_C3E9F7_UNKNOWN4
UNKNOWN_C3E9F7_UNKNOWN1:
	LDY $0E
	TYA
	LDY #$005F
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+2,X
	AND #$00FF
	BEQ UNKNOWN_C3E9F7_UNKNOWN2
	AND #$00FF
	DEC
	STA $04
	TXA
	CLC
	ADC #$99F1
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(UNKNOWN_7E0000),X
	AND #$00FF
	CMP $02
	BNE UNKNOWN_C3E9F7_UNKNOWN2
	LDA #$0001
	BRA UNKNOWN_C3E9F7_UNKNOWN4
UNKNOWN_C3E9F7_UNKNOWN2:
	LDY $0E
	TYA
	LDY #$005F
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::equipment+3,X
	AND #$00FF
	BEQ UNKNOWN_C3E9F7_UNKNOWN3
	AND #$00FF
	DEC
	STA $04
	TXA
	CLC
	ADC #$99F1
	CLC
	ADC $04
	TAX
	LDA a:.LOWORD(UNKNOWN_7E0000),X
	AND #$00FF
	CMP $02
	BNE UNKNOWN_C3E9F7_UNKNOWN3
	LDA #$0001
	BRA UNKNOWN_C3E9F7_UNKNOWN4
UNKNOWN_C3E9F7_UNKNOWN3:
	LDA #$0000
UNKNOWN_C3E9F7_UNKNOWN4:
	PLD
	RTL

UNKNOWN_C3EAD0: ;$C3EAD0
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFF0
	TCD
	PLA
	SEP #%00100000
	STA $00
	LDX #$0000
	STX $0E
	BRA UNKNOWN_C3EAD0_UNKNOWN2
UNKNOWN_C3EAD0_UNKNOWN0:
	SEP #%00100000
	CMP $00
	BNE UNKNOWN_C3EAD0_UNKNOWN1
	LDX $0E
	REP #%00100000
	TXA
	JSL UNKNOWN_C48ECE
	CMP #$0000
	BNE UNKNOWN_C3EAD0_UNKNOWN3
	LDX $0E
	TXA
	JSL UNKNOWN_C48EEB
	BRA UNKNOWN_C3EAD0_UNKNOWN3
UNKNOWN_C3EAD0_UNKNOWN1:
	LDX $0E
	INX
	STX $0E
UNKNOWN_C3EAD0_UNKNOWN2:
	REP #%00100000
	TXA
	STA $04
	ASL
	ASL
	ADC $04
	TAX
	LDA f:TIMED_ITEM_TRANSFORMATION_TABLE,X
	AND #$00FF
	BNE UNKNOWN_C3EAD0_UNKNOWN0
UNKNOWN_C3EAD0_UNKNOWN3:
	PLD
	RTL

UNKNOWN_C3EB1C: ;$C3EB1C
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFEA
	TCD
	PLA
	SEP #%00100000
	STA $00
	LDY #$0000
	STY $14
	BRA UNKNOWN_C3EB1C_UNKNOWN1
UNKNOWN_C3EB1C_UNKNOWN0:
	INY
	STY $14
UNKNOWN_C3EB1C_UNKNOWN1:
	REP #%00100000
	TYA
	STA $04
	ASL
	ASL
	ADC $04
	TAX
	LDA f:TIMED_ITEM_TRANSFORMATION_TABLE,X
	AND #$00FF
	BEQ UNKNOWN_C3EB1C_UNKNOWN2
	SEP #%00100000
	CMP $00
	BNE UNKNOWN_C3EB1C_UNKNOWN0
UNKNOWN_C3EB1C_UNKNOWN2:
	REP #%00100000
	TYA
	JSL UNKNOWN_C48F98
	LDX #$0000
	STX $12
	BRA UNKNOWN_C3EB1C_UNKNOWN10
UNKNOWN_C3EB1C_UNKNOWN3:
	LDA .LOWORD(GAME_STATE)+122,X
	AND #$00FF
	DEC
	LDY #$005F
	JSL MULT168
	CLC
	ADC #$99CE
	STA $04
	LDA #$0000
	STA $02
	STA $10
	BRA UNKNOWN_C3EB1C_UNKNOWN6
UNKNOWN_C3EB1C_UNKNOWN4:
	LDA $00
	AND #$00FF
	STA $02
	LDA $0E
	CMP $02
	BNE UNKNOWN_C3EB1C_UNKNOWN5
	LDY $14
	TYA
	JSL UNKNOWN_C48EEB
	BRA UNKNOWN_C3EB1C_UNKNOWN11
UNKNOWN_C3EB1C_UNKNOWN5:
	LDA $10
	STA $02
	INC $02
	LDA $02
	STA $10
UNKNOWN_C3EB1C_UNKNOWN6:
	LDA #$000E
	CLC
	SBC $02
	BVC UNKNOWN_C3EB1C_UNKNOWN7
	BPL UNKNOWN_C3EB1C_UNKNOWN9
	BRA UNKNOWN_C3EB1C_UNKNOWN8
UNKNOWN_C3EB1C_UNKNOWN7:
	BMI UNKNOWN_C3EB1C_UNKNOWN9
UNKNOWN_C3EB1C_UNKNOWN8:
	LDA $04
	CLC
	ADC $02
	TAX
	LDA a:$0023,X
	AND #$00FF
	STA $0E
	BNE UNKNOWN_C3EB1C_UNKNOWN4
UNKNOWN_C3EB1C_UNKNOWN9:
	LDX $12
	INX
	STX $12
UNKNOWN_C3EB1C_UNKNOWN10:
	LDA .LOWORD(GAME_STATE)+game_state::player_controlled_party_count
	AND #$00FF
	STA $02
	TXA
	CMP $02
	BCC UNKNOWN_C3EB1C_UNKNOWN3
UNKNOWN_C3EB1C_UNKNOWN11:
	PLD
	RTL

UNKNOWN_C3EBCA: ;$C3EBCA
	REP #%00110001
	PHD
	TDC
	ADC #$FFF0
	TCD
	LDY #$0000
	STY $0E
	BRA UNKNOWN_C3EBCA_UNKNOWN3
UNKNOWN_C3EBCA_UNKNOWN0:
	AND #$00FF
	TAX
	LDA #$00FF
	JSL FIND_ITEM_IN_INVENTORY2
	CMP #$0000
	BEQ UNKNOWN_C3EBCA_UNKNOWN1
	SEP #%00100000
	LDA [$06]
	JSL UNKNOWN_C3EAD0
	BRA UNKNOWN_C3EBCA_UNKNOWN2
UNKNOWN_C3EBCA_UNKNOWN1:
	SEP #%00100000
	LDA [$06]
	JSL UNKNOWN_C3EB1C
	.A16
UNKNOWN_C3EBCA_UNKNOWN2:
	LDY $0E
	INY
	STY $0E
UNKNOWN_C3EBCA_UNKNOWN3:
	LOADPTR TIMED_ITEM_TRANSFORMATION_TABLE, $06
	TYA
	STA $04
	ASL
	ASL
	ADC $04
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	BNE UNKNOWN_C3EBCA_UNKNOWN0
	PLD
	RTL

UNKNOWN_C3EC1F: ;$C3EC1F
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFF0
	TCD
	PLA
	STX $02
	TAX
	BEQ UNKNOWN_C3EC1F_UNKNOWN1
	TXA
	DEC
	STA $0E
	CPY #$0000
	BNE UNKNOWN_C3EC1F_UNKNOWN0
	LDA $02
	STA $0A
	STZ $0C
	LDA $0E
	LDY #$005F
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_hp,X
	STA $06
	STZ $08
	JSL MULT32
	LDA #$0064
	STA $0A
	LDA #$0000
	STA $0C
	JSL DIVISION32
	LDA $06
	STA $02
UNKNOWN_C3EC1F_UNKNOWN0:
	LDA $0E
	LDY #$005F
	JSL MULT168
	TAY
	CLC
	ADC #$9A15
	TAX
	LDA a:.LOWORD(UNKNOWN_7E0000),X
	SEC
	SBC $02
	STA a:.LOWORD(UNKNOWN_7E0000),X
	CMP .LOWORD(CHAR_STRUCT)+char_struct::max_hp,Y
	BCC UNKNOWN_C3EC1F_UNKNOWN1
	BEQ UNKNOWN_C3EC1F_UNKNOWN1
	LDA #$0000
	STA a:.LOWORD(UNKNOWN_7E0000),X
UNKNOWN_C3EC1F_UNKNOWN1:
	PLD
	RTL

UNKNOWN_C3EC8B: ;$C3EC8B
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFEC
	TCD
	PLA
	STX $02
	TAX
	BNE UNKNOWN_C3EC8B_UNKNOWN0
	JMP UNKNOWN_C3EC8B_UNKNOWN3
UNKNOWN_C3EC8B_UNKNOWN0:
	TXA
	DEC
	STA $04
	CPY #$0000
	BNE UNKNOWN_C3EC8B_UNKNOWN1
	LDA $02
	STA $0A
	STZ $0C
	LDA $04
	LDY #$005F
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_hp,X
	STA $06
	STZ $08
	JSL MULT32
	LDA #$0064
	STA $0A
	LDA #$0000
	STA $0C
	JSL DIVISION32
	LDA $06
	STA $02
UNKNOWN_C3EC8B_UNKNOWN1:
	LDA $04
	LDY #$005F
	JSL MULT168
	STA $12
	CLC
	ADC #$9A15
	TAX
	LDA a:.LOWORD(UNKNOWN_7E0000),X
	CLC
	ADC $02
	STA a:.LOWORD(UNKNOWN_7E0000),X
	LDA $12
	CLC
	ADC #$9A13
	TAX
	LDA a:.LOWORD(UNKNOWN_7E0000),X
	BNE UNKNOWN_C3EC8B_UNKNOWN2
	LDA #$0001
	STA a:.LOWORD(UNKNOWN_7E0000),X
UNKNOWN_C3EC8B_UNKNOWN2:
	LDA $04
	LDY #$005F
	JSL MULT168
	STA $10
	CLC
	ADC #$9A15
	TAX
	STX $0E
	LDA $10
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_hp,X
	STA $12
	STA $02
	LDX $0E
	LDA a:.LOWORD(UNKNOWN_7E0000),X
	CMP $02
	BCC UNKNOWN_C3EC8B_UNKNOWN3
	BEQ UNKNOWN_C3EC8B_UNKNOWN3
	LDA $12
	STA a:.LOWORD(UNKNOWN_7E0000),X
UNKNOWN_C3EC8B_UNKNOWN3:
	PLD
	RTL

UNKNOWN_C3ED2C: ;$C3ED2C
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFF0
	TCD
	PLA
	STX $02
	TAX
	BEQ UNKNOWN_C3ED2C_UNKNOWN1
	TXA
	DEC
	STA $0E
	CPY #$0000
	BNE UNKNOWN_C3ED2C_UNKNOWN0
	LDA $02
	STA $0A
	STZ $0C
	LDA $0E
	LDY #$005F
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_pp,X
	STA $06
	STZ $08
	JSL MULT32
	LDA #$0064
	STA $0A
	LDA #$0000
	STA $0C
	JSL DIVISION32
	LDA $06
	STA $02
UNKNOWN_C3ED2C_UNKNOWN0:
	LDA $0E
	LDY #$005F
	JSL MULT168
	TAY
	CLC
	ADC #$9A1B
	TAX
	LDA a:.LOWORD(UNKNOWN_7E0000),X
	SEC
	SBC $02
	STA a:.LOWORD(UNKNOWN_7E0000),X
	CMP .LOWORD(CHAR_STRUCT)+char_struct::max_pp,Y
	BCC UNKNOWN_C3ED2C_UNKNOWN1
	BEQ UNKNOWN_C3ED2C_UNKNOWN1
	LDA #$0000
	STA a:.LOWORD(UNKNOWN_7E0000),X
UNKNOWN_C3ED2C_UNKNOWN1:
	PLD
	RTL

UNKNOWN_C3ED98: ;$C3ED98
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	STX $02
	TAX
	BEQ UNKNOWN_C3ED98_UNKNOWN1
	TXA
	DEC
	STA $10
	CPY #$0000
	BNE UNKNOWN_C3ED98_UNKNOWN0
	LDA $02
	STA $0A
	STZ $0C
	LDA $10
	LDY #$005F
	JSL MULT168
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_pp,X
	STA $06
	STZ $08
	JSL MULT32
	LDA #$0064
	STA $0A
	LDA #$0000
	STA $0C
	JSL DIVISION32
	LDA $06
	STA $02
UNKNOWN_C3ED98_UNKNOWN0:
	LDA $10
	LDY #$005F
	JSL MULT168
	STA $10
	CLC
	ADC #$9A1B
	TAY
	LDA a:.LOWORD(UNKNOWN_7E0000),Y
	CLC
	ADC $02
	TAX
	STX $0E
	TXA
	STA a:.LOWORD(UNKNOWN_7E0000),Y
	LDA $10
	TAX
	LDA .LOWORD(CHAR_STRUCT)+char_struct::max_pp,X
	STA $10
	STA $02
	LDX $0E
	TXA
	CMP $02
	BCC UNKNOWN_C3ED98_UNKNOWN1
	BEQ UNKNOWN_C3ED98_UNKNOWN1
	LDA $10
	STA a:.LOWORD(UNKNOWN_7E0000),Y
UNKNOWN_C3ED98_UNKNOWN1:
	PLD
	RTL

UNKNOWN_C3EE14: ;$C3EE14
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFF0
	TCD
	PLA
	TXY
	TAX
	STX $0E
	TYA
	LDY #$0027
	JSL MULT168
	CLC
	ADC #$001C
	TAX
	SEP #%00100000
	LDA f:ITEM_CONFIGURATION_TABLE,X
	LDX $0E
	DEX
	AND f:MORE_POWERS_OF_TWO,X
	REP #%00100000
	AND #$00FF
	BEQ UNKNOWN_C3EE14_UNKNOWN0
	LDA #$0001
	BRA UNKNOWN_C3EE14_UNKNOWN1
UNKNOWN_C3EE14_UNKNOWN0:
	LDA #$0000
UNKNOWN_C3EE14_UNKNOWN1:
	PLD
	RTL

UNKNOWN_C3EE4D: ;$C3EE4D
	REP #%00110001
	JSL UNKNOWN_C034D6
	JSL UNKNOWN_C07B52
	JSL UNKNOWN_C1004E
	JSL UNKNOWN_C0943C
	LDA .LOWORD(UNKNOWN_7EB4A8)
	CMP #$FFFF
	BEQ UNKNOWN_C3EE4D_UNKNOWN0
	LDA .LOWORD(UNKNOWN_7EB4A8)
	ASL
	CLC
	ADC #$10B6
	TAX
	LDA a:.LOWORD(UNKNOWN_7E0000),X
	AND #$3FFF
	STA a:.LOWORD(UNKNOWN_7E0000),X
UNKNOWN_C3EE4D_UNKNOWN0:
	RTL

UNKNOWN_C3EE7A: ;$C3EE7A
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFF0
	TCD
	PLA
	STA $0E
	LOADPTR CC_1C_01_TABLE, $06
	LDA $0E
	STA $04
	ASL
	ADC $04
	TAX
	LDY $06
	STY $0A
	LDY $08
	STY $0C
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	STA $0E
	AND #$0080
	BEQ UNKNOWN_C3EE7A_UNKNOWN3
	LDA $0E
	AND #$007F
	CMP #$0001
	BEQ UNKNOWN_C3EE7A_UNKNOWN0
	CMP #$0002
	BEQ UNKNOWN_C3EE7A_UNKNOWN1
	BRA UNKNOWN_C3EE7A_UNKNOWN2
UNKNOWN_C3EE7A_UNKNOWN0:
	TXA
	INC
	CLC
	ADC $06
	STA $06
	LDA [$06]
	TAX
	SEP #%00100000
	LDA a:.LOWORD(UNKNOWN_7E0000),X
	STA $06
	STZ $07
	STZ $08
	STZ $09
	BRA UNKNOWN_C3EE7A_UNKNOWN4
UNKNOWN_C3EE7A_UNKNOWN1:
	TXA
	INC
	CLC
	ADC $06
	STA $06
	LDA [$06]
	TAX
	LDA a:.LOWORD(UNKNOWN_7E0000),X
	STA $06
	STZ $08
	BRA UNKNOWN_C3EE7A_UNKNOWN4
UNKNOWN_C3EE7A_UNKNOWN2:
	TXA
	INC
	CLC
	ADC $06
	STA $06
	LDA [$06]
	TAY
	LDA a:.LOWORD(UNKNOWN_7E0000),Y
	STA $06
	LDA a:.LOWORD(UNKNOWN_7E0002),Y
	STA $08
	BRA UNKNOWN_C3EE7A_UNKNOWN4
UNKNOWN_C3EE7A_UNKNOWN3:
	TXA
	INC
	CLC
	ADC $06
	STA $06
	LDA [$06]
	STA $06
	PHB
	SEP #%00100000
	PLA
	STA $08
	STZ $09
UNKNOWN_C3EE7A_UNKNOWN4:
	REP #%00100000
	LDA $06
	STA $16
	LDA $08
	STA $18
	PLD
	RTL

DO_ABSOLUTELY_NOTHING_3486862: ;$C3EF23
	REP #%00110001
	RTL

UNKNOWN_C3EF26: ;$C3EF26
	.INCBIN "src/bin/unknowns/C3EF26.bin"

FONT_PTR_TABLE: ;$C3F054
	; Main font
	.DWORD $00E10C7A
	.DWORD $00E10CDA
	.WORD	32
	.WORD 16
	; Mr. Saturn font
	.DWORD $00E01359
	.DWORD $00E013B9
	.WORD	32
	.WORD 16
	; Battle font
	.DWORD $00E118DA
	.DWORD $00E1193A
	.WORD	16
	.WORD 16
	; Tiny font
	.DWORD $00E11F3A
	.DWORD $00E11F9A
	.WORD	8
	.WORD 8
	; Large font
	.DWORD $00E1229A
	.DWORD $00E122FA
	.WORD	32
	.WORD 16

UNKNOWN_C3F090: ;$C3F090
	.INCBIN "src/bin/unknowns/C3F090.bin"

PSI_TARGET_TEXT: ;$C3F0B0
	.INCBIN "src/bin/unknowns/C3F0B0.bin"

UNKNOWN_C3F1EC: ;$C3F1EC
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFEC
	TCD
	PLA
	STA $12
	LDA #$0003
	JSL UNKNOWN_C2239D
	CMP #$0000
	BNE UNKNOWN_C3F1EC_UNKNOWN0
	LDA #$0000
	JMP a:.LOWORD(UNKNOWN_C3F1EC_UNKNOWN6)
UNKNOWN_C3F1EC_UNKNOWN0:
	LDA #$0000
	STA $02
	JMP a:.LOWORD(UNKNOWN_C3F1EC_UNKNOWN4)
UNKNOWN_C3F1EC_UNKNOWN1:
	LOADPTR ITEM_CONFIGURATION_TABLE, $06
	TYA
	LDY #$0027
	JSL MULT168
	TAX
	STX $10
	TXA
	CLC
	ADC #$0019
	LDY $06
	STY $0A
	LDY $08
	STY $0C
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	CMP #$0008
	BNE UNKNOWN_C3F1EC_UNKNOWN3
	TXA
	CLC
	ADC #$0020
	LDX $06
	STX $0A
	LDX $08
	STX $0C
	CLC
	ADC $0A
	STA $0A
	SEP #%00100000
	LDA [$0A]
	CMP .LOWORD(CHAR_STRUCT)+.SIZEOF(char_struct) * 2 + char_struct::iq
	BEQ UNKNOWN_C3F1EC_UNKNOWN2
	BCS UNKNOWN_C3F1EC_UNKNOWN3
UNKNOWN_C3F1EC_UNKNOWN2:
	REP #%00100000
	LDA #$0063
	JSL RAND_MOD
	CMP $12
	BCS UNKNOWN_C3F1EC_UNKNOWN3
	LDX $10
	TXA
	CLC
	ADC #$0021
	CLC
	ADC $06
	STA $06
	SEP #%00100000
	LDA [$06]
	LDX $04
	STA a:.LOWORD(UNKNOWN_7E0000),X
	LDY $0E
	REP #%00100000
	TYA
	BRA UNKNOWN_C3F1EC_UNKNOWN6
UNKNOWN_C3F1EC_UNKNOWN3:
	REP #%00100000
	INC $02
UNKNOWN_C3F1EC_UNKNOWN4:
	LDA $02
	CMP #$000E
	BCS UNKNOWN_C3F1EC_UNKNOWN5
	LDA $02
	CLC
	ADC #$9AAF
	STA $04
	LDX $04
	LDA a:.LOWORD(UNKNOWN_7E0000),X
	AND #$00FF
	TAY
	STY $0E
	BEQ UNKNOWN_C3F1EC_UNKNOWN5
	JMP a:.LOWORD(UNKNOWN_C3F1EC_UNKNOWN1)
UNKNOWN_C3F1EC_UNKNOWN5:
	LDA #$0000
UNKNOWN_C3F1EC_UNKNOWN6:
	PLD
	RTL

UNKNOWN_C3F2B1: ;$C3F2B1
	.INCBIN "src/bin/unknowns/C3F2B1.bin"

PLAYABLE_CHAR_GFX_TABLE: ;$C3F2B5
	.WORD $0001
	.WORD $0008
	.WORD $0011
	.WORD $0015
	.WORD $001B
	.WORD $0022
	.WORD $0005
	.WORD $FFFF
	.WORD $0002
	.WORD $0009
	.WORD $0012
	.WORD $0016
	.WORD $001C
	.WORD $0022
	.WORD $0019
	.WORD $FFFF
	.WORD $0003
	.WORD $000A
	.WORD $0013
	.WORD $0017
	.WORD $001D
	.WORD $0022
	.WORD $0019
	.WORD $FFFF
	.WORD $0004
	.WORD $000B
	.WORD $0014
	.WORD $0018
	.WORD $001E
	.WORD $0022
	.WORD $0019
	.WORD $FFFF
	.WORD $002C
	.WORD $002C
	.WORD $002C
	.WORD $002C
	.WORD $002C
	.WORD $002C
	.WORD $002C
	.WORD $FFFF
	.WORD $002D
	.WORD $002D
	.WORD $002D
	.WORD $002D
	.WORD $002D
	.WORD $002D
	.WORD $002D
	.WORD $FFFF
	.WORD $0028
	.WORD $0028
	.WORD $002A
	.WORD $002B
	.WORD $0028
	.WORD $0028
	.WORD $0028
	.WORD $FFFF
	.WORD $00B6
	.WORD $00B6
	.WORD $00B6
	.WORD $00B6
	.WORD $00B6
	.WORD $00B6
	.WORD $00B6
	.WORD $FFFF
	.WORD $002E
	.WORD $002E
	.WORD $002E
	.WORD $002F
	.WORD $002E
	.WORD $002E
	.WORD $002E
	.WORD $FFFF
	.WORD $0029
	.WORD $0029
	.WORD $0029
	.WORD $0029
	.WORD $0029
	.WORD $0029
	.WORD $0029
	.WORD $FFFF
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $FFFF
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $FFFF
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $FFFF
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $FFFF
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $0027
	.WORD $FFFF
	.WORD $0033
	.WORD $0033
	.WORD $0033
	.WORD $0033
	.WORD $0023
	.WORD $0023
	.WORD $0033
	.WORD $FFFF
	.WORD $0033
	.WORD $0033
	.WORD $0033
	.WORD $0033
	.WORD $0023
	.WORD $0023
	.WORD $0033
	.WORD $FFFF

SHOW_TITLE_SCREEN: ;$C3F3C5
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFE4
	TCD
	PLA
	TAX
	STX .LOWORD(UNKNOWN_7E9F75)
	LDA #$0000
	STA $04
	JSL UNKNOWN_C08726
	JSL UNKNOWN_C0927C
	BRA SHOW_TITLE_SCREEN_UNKNOWN1
SHOW_TITLE_SCREEN_UNKNOWN0:
	ASL
	CLC
	ADC #$116A
	TAX
	LDA a:.LOWORD(UNKNOWN_7E0000),X
	ORA #$8000
	STA a:.LOWORD(UNKNOWN_7E0000),X
	LDA $1A
	INC
	STA $1A
	CMP #$001E
	BCC SHOW_TITLE_SCREEN_UNKNOWN0
SHOW_TITLE_SCREEN_UNKNOWN1:
	LDA #$000B
	JSL UNKNOWN_C08D79
	LDA #$0003
	JSL SET_OAM_SIZE
	LDY #$0000
	LDX #$5800
	TYA
	JSL SET_BG1_VRAM_LOCATION
	STZ a:.LOWORD(BG3_X_POS)
	STZ a:.LOWORD(BG3_Y_POS)
	STZ a:.LOWORD(BG2_Y_POS)
	STZ a:.LOWORD(BG2_X_POS)
	STZ a:.LOWORD(BG1_Y_POS)
	STZ a:.LOWORD(BG1_X_POS)
	JSL UNKNOWN_C08B19_ENTRY_POINT_2
	STZ a:.LOWORD(BG3_X_POS)
	STZ a:.LOWORD(BG3_Y_POS)
	STZ a:.LOWORD(BG2_Y_POS)
	STZ a:.LOWORD(BG2_X_POS)
	STZ a:.LOWORD(BG1_Y_POS)
	STZ a:.LOWORD(BG1_X_POS)
	JSL UNKNOWN_C08B19_ENTRY_POINT_2
	JSL UNKNOWN_C0EBE0
	SEP #%00100000
	LDA #$0011
	STA a:.LOWORD(TM_MIRROR)
	JSL OAM_CLEAR
	.A16
	LDY #$0000
	TYX
	LDA #$0314
	JSL UNKNOWN_C092F5
	STZ .LOWORD(UNKNOWN_7E9641)
	LDA .LOWORD(UNKNOWN_7E9F75)
	BEQ SHOW_TITLE_SCREEN_UNKNOWN2
	JMP SHOW_TITLE_SCREEN_UNKNOWN7
SHOW_TITLE_SCREEN_UNKNOWN2:
	SEP #%00100000
	STZ $0E
	LDX #$0200
	REP #%00100000
	LDA #$0200
	JSL MEMSET16
	SEP #%00100000
	LDA #$0018
	STA a:.LOWORD(UNKNOWN_7E002F)+1
	JSL UNKNOWN_C08744
	SEP #%00100000
	LDA #$000F
	STA a:.LOWORD(INIDISP_MIRROR)
	JSL READ_JOYPAD
	SEP #%00100000
	STZ a:.LOWORD(UNKNOWN_7E002F)+1
	REP #%00100000
	LOADPTR UNKNOWN_E1AE7C, $0E
	LDA #$0200
	STA $06
	PHB
	SEP #%00100000
	PLA
	STA $08
	STZ $09
	REP #%00100000
	LDA #$0100
	CLC
	ADC $06
	STA $06
	STA $12
	LDA $08
	STA $14
	JSL DECOMP
	JSL UNKNOWN_C496F9
	SEP #%00100000
	STZ $0E
	LDX #$0200
	REP #%00100000
	LDA #$0200
	JSL MEMSET16
	LDX #$0100
	LDA #$003C
	JSL UNKNOWN_C496E7
	SEP #%00100000
	LDA #$0018
	STA a:.LOWORD(UNKNOWN_7E002F)+1
	LDX #$0000
	STX $18
	BRA SHOW_TITLE_SCREEN_UNKNOWN4
SHOW_TITLE_SCREEN_UNKNOWN3:
	JSL UNKNOWN_C426ED
	JSL UNKNOWN_C1004E
	LDX $18
	INX
	STX $18
SHOW_TITLE_SCREEN_UNKNOWN4:
	STX $02
	REP #%00100000
	LDA #$003C
	CLC
	SBC $02
	BVS SHOW_TITLE_SCREEN_UNKNOWN5
	BPL SHOW_TITLE_SCREEN_UNKNOWN3
	BRA SHOW_TITLE_SCREEN_UNKNOWN6
SHOW_TITLE_SCREEN_UNKNOWN5:
	BMI SHOW_TITLE_SCREEN_UNKNOWN3
SHOW_TITLE_SCREEN_UNKNOWN6:
	BRA SHOW_TITLE_SCREEN_UNKNOWN11
SHOW_TITLE_SCREEN_UNKNOWN7:
	LDX #$0001
	LDA #$0004
	JSL UNKNOWN_C0886C
	LDX #$0000
	STX $1A
	BRA SHOW_TITLE_SCREEN_UNKNOWN9
SHOW_TITLE_SCREEN_UNKNOWN8:
	JSL UNKNOWN_C1004E
	LDX $1A
	INX
	STX $1A
SHOW_TITLE_SCREEN_UNKNOWN9:
	STX $02
	LDA #$003C
	CLC
	SBC $02
	BVS SHOW_TITLE_SCREEN_UNKNOWN10
	BPL SHOW_TITLE_SCREEN_UNKNOWN8
	BRA SHOW_TITLE_SCREEN_UNKNOWN11
SHOW_TITLE_SCREEN_UNKNOWN10:
	BMI SHOW_TITLE_SCREEN_UNKNOWN8
SHOW_TITLE_SCREEN_UNKNOWN11:
	LDA #$0000
	STA $02
	BRA SHOW_TITLE_SCREEN_UNKNOWN15
SHOW_TITLE_SCREEN_UNKNOWN12:
	LDA $04
	BNE SHOW_TITLE_SCREEN_UNKNOWN14
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD_A
	BNE SHOW_TITLE_SCREEN_UNKNOWN13
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD_B
	BNE SHOW_TITLE_SCREEN_UNKNOWN13
	LDA a:.LOWORD(PAD_1_PRESS)
	AND #PAD_START
	BEQ SHOW_TITLE_SCREEN_UNKNOWN14
SHOW_TITLE_SCREEN_UNKNOWN13:
	LDA #$0001
	STA $02
	BRA SHOW_TITLE_SCREEN_UNKNOWN16
SHOW_TITLE_SCREEN_UNKNOWN14:
	JSL UNKNOWN_C1004E
SHOW_TITLE_SCREEN_UNKNOWN15:
	LDA .LOWORD(UNKNOWN_7E9641)
	BEQ SHOW_TITLE_SCREEN_UNKNOWN12
	LDA .LOWORD(UNKNOWN_7E9641)
	CMP #$0002
	BEQ SHOW_TITLE_SCREEN_UNKNOWN12
SHOW_TITLE_SCREEN_UNKNOWN16:
	LDA .LOWORD(UNKNOWN_7E9F75)
	BNE SHOW_TITLE_SCREEN_UNKNOWN17
	LDA .LOWORD(UNKNOWN_7E9641)
	BNE SHOW_TITLE_SCREEN_UNKNOWN17
	JSL UNKNOWN_EF04DC
	STA $02
SHOW_TITLE_SCREEN_UNKNOWN17:
	LDY #$0000
	LDX #$0004
	LDA #$0001
	JSL UNKNOWN_C08814
	LDA $04
	BNE SHOW_TITLE_SCREEN_UNKNOWN18
	STZ .LOWORD(UNKNOWN_7E9641)
	LDA #$0000
	JSL UNKNOWN_C474A8
	JSL UNKNOWN_C0927C
	LDA $02
	BRA SHOW_TITLE_SCREEN_UNKNOWN23
SHOW_TITLE_SCREEN_UNKNOWN18:
	LDY #$0000
	STY $16
	BRA SHOW_TITLE_SCREEN_UNKNOWN22
SHOW_TITLE_SCREEN_UNKNOWN19:
	TYA
	ASL
	TAX
	LDA .LOWORD(LOADED_SPRITE_MOVEMENT_CODES_TABLE),X
	CMP #$0314
	BCC SHOW_TITLE_SCREEN_UNKNOWN21
	CMP #$031E
	BEQ SHOW_TITLE_SCREEN_UNKNOWN20
	BCS SHOW_TITLE_SCREEN_UNKNOWN21
SHOW_TITLE_SCREEN_UNKNOWN20:
	TYA
	JSL UNKNOWN_C09C35
SHOW_TITLE_SCREEN_UNKNOWN21:
	LDY $16
	TYA
	ASL
	CLC
	ADC #$116A
	TAX
	LDA a:.LOWORD(UNKNOWN_7E0000),X
	AND #$7FFF
	STA a:.LOWORD(UNKNOWN_7E0000),X
	INY
	STY $16
SHOW_TITLE_SCREEN_UNKNOWN22:
	CPY #$001E
	BCC SHOW_TITLE_SCREEN_UNKNOWN19
	JSL UNKNOWN_C08726
	JSL UNKNOWN_C018F3
	JSL UNDRAW_FLYOVER_TEXT
	SEP #%00100000
	LDA #$0017
	STA a:.LOWORD(TM_MIRROR)
	LDX #$0001
	REP #%00100000
	TXA
	JSL UNKNOWN_C0886C
SHOW_TITLE_SCREEN_UNKNOWN23:
	PLD
	RTL

UNKNOWN_C3F5F9: ;$C3F5F9
	REP #%00110001
	PHD
	TDC
	ADC #$FFE8
	TCD
	LDA #$0000
	STA $04
	LDA .LOWORD(UNKNOWN_7E9F7E)
	ASL
	STA $16
	LDA #$0000
	STA $02
	STA $14
	BRA UNKNOWN_C3F5F9_UNKNOWN2
UNKNOWN_C3F5F9_UNKNOWN0:
	LDA .LOWORD(UNKNOWN_7E9F7A)
	AND #$001F
	STA $02
	LDA .LOWORD(UNKNOWN_7E9F7C)
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC .LOWORD(UNKNOWN_7E9F84)
	CLC
	ADC $02
	STA $12
	LDA .LOWORD(UNKNOWN_7E9F86)
	STA $06
	LDA .LOWORD(UNKNOWN_7E9F88)
	STA $08
	LDA $04
	ASL
	CLC
	ADC $06
	STA $06
	STA $0E
	LDA $08
	STA $10
	LDA $12
	TAY
	LDX $16
	SEP #%00100000
	LDA #$0000
	JSL UNKNOWN_C08616
	LDA $04
	CLC
	ADC .LOWORD(UNKNOWN_7E9F82)
	STA $04
	LDX .LOWORD(UNKNOWN_7E9F7C)
	INX
	STX .LOWORD(UNKNOWN_7E9F7C)
	CPX #$0020
	BNE UNKNOWN_C3F5F9_UNKNOWN1
	STZ .LOWORD(UNKNOWN_7E9F7C)
UNKNOWN_C3F5F9_UNKNOWN1:
	LDA $14
	STA $02
	INC $02
	LDA $02
	STA $14
UNKNOWN_C3F5F9_UNKNOWN2:
	LDA $02
	CMP .LOWORD(UNKNOWN_7E9F80)
	BCC UNKNOWN_C3F5F9_UNKNOWN0
	PLD
	RTS

UNKNOWN_C3F67D: ;$C3F67D
	REP #%00110001
	PHD
	TDC
	ADC #$FFEC
	TCD
	LDA .LOWORD(UNKNOWN_7E9F80)
	ASL
	STA $04
	LDA #$0000
	STA $02
	BRA UNKNOWN_C3F67D_UNKNOWN3
UNKNOWN_C3F67D_UNKNOWN0:
	LDA .LOWORD(UNKNOWN_7E9F7C)
	ASL
	ASL
	ASL
	ASL
	ASL
	CLC
	ADC .LOWORD(UNKNOWN_7E9F84)
	CLC
	ADC .LOWORD(UNKNOWN_7E9F7A)
	STA $12
	INC .LOWORD(UNKNOWN_7E9F7A)
	LDA .LOWORD(UNKNOWN_7E9F86)
	STA $06
	LDA .LOWORD(UNKNOWN_7E9F88)
	STA $08
	LDA $06
	STA $0E
	LDA $08
	STA $10
	LDA $12
	TAY
	LDX $04
	SEP #%00100000
	LDA #$0000
	JSL UNKNOWN_C08616
	.A16
	LDA .LOWORD(UNKNOWN_7E9F86)
	STA $06
	LDA .LOWORD(UNKNOWN_7E9F88)
	STA $08
	LDA .LOWORD(UNKNOWN_7E9F82)
	ASL
	CLC
	ADC $06
	STA $06
	STA .LOWORD(UNKNOWN_7E9F86)
	LDA $08
	STA .LOWORD(UNKNOWN_7E9F88)
	LDA .LOWORD(UNKNOWN_7E9F7A)
	CMP #$0020
	BEQ UNKNOWN_C3F67D_UNKNOWN1
	LDA .LOWORD(UNKNOWN_7E9F7A)
	CMP #$0040
	BNE UNKNOWN_C3F67D_UNKNOWN2
UNKNOWN_C3F67D_UNKNOWN1:
	LDA .LOWORD(UNKNOWN_7E9F84)
	EOR #$0400
	STA .LOWORD(UNKNOWN_7E9F84)
UNKNOWN_C3F67D_UNKNOWN2:
	INC $02
UNKNOWN_C3F67D_UNKNOWN3:
	LDA $02
	CMP .LOWORD(UNKNOWN_7E9F7E)
	BCC UNKNOWN_C3F67D_UNKNOWN0
	PLD
	RTS

UNKNOWN_C3F705: ;$C3F705
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFE6
	TCD
	PLA
	STA $18
	LDA $28
	STA $06
	LDA $2A
	STA $08
	LDA $06
	STA $14
	LDA $08
	STA $16
	INC $06
	INC $06
	LDA $06
	STA .LOWORD(UNKNOWN_7E9F86)
	LDA $08
	STA .LOWORD(UNKNOWN_7E9F88)
	LDA $18
	AND #$003F
	TAY
	STY $12
	STY .LOWORD(UNKNOWN_7E9F7A)
	TXA
	AND #$001F
	STA $02
	STA $10
	LDA $02
	STA .LOWORD(UNKNOWN_7E9F7C)
	TYA
	AND #$001F
	BEQ UNKNOWN_C3F705_UNKNOWN0
	LDX #$3C00
	BRA UNKNOWN_C3F705_UNKNOWN1
UNKNOWN_C3F705_UNKNOWN0:
	LDX #$3800
UNKNOWN_C3F705_UNKNOWN1:
	STX .LOWORD(UNKNOWN_7E9F84)
	LDA $14
	STA $06
	LDA $16
	STA $08
	LDA [$06]
	XBA
	AND #$00FF
	STA $18
	TAX
	STX $0E
	STX .LOWORD(UNKNOWN_7E9F7E)
	LDA [$06]
	AND #$00FF
	STA $04
	STA .LOWORD(UNKNOWN_7E9F80)
	LDA $18
	STA $02
	TYA
	CLC
	ADC $02
	AND #$FFE0
	STA $04
	TYA
	AND #$FFE0
	CMP $04
	BNE UNKNOWN_C3F705_UNKNOWN2
	LDA $18
	STA .LOWORD(UNKNOWN_7E9F82)
	JSR a:.LOWORD(UNKNOWN_C3F5F9)
	BRA UNKNOWN_C3F705_UNKNOWN3
UNKNOWN_C3F705_UNKNOWN2:
	LDA $18
	STA $04
	LDY $12
	TYA
	CLC
	ADC $04
	AND #$FFE0
	SEC
	SBC .LOWORD(UNKNOWN_7E9F7A)
	STA .LOWORD(UNKNOWN_7E9F7E)
	LDA $18
	STA .LOWORD(UNKNOWN_7E9F82)
	JSR a:.LOWORD(UNKNOWN_C3F5F9)
	LDA .LOWORD(UNKNOWN_7E9F84)
	EOR #$0400
	STA .LOWORD(UNKNOWN_7E9F84)
	LDA .LOWORD(UNKNOWN_7E9F86)
	STA $06
	LDA .LOWORD(UNKNOWN_7E9F88)
	STA $08
	LDA .LOWORD(UNKNOWN_7E9F7E)
	ASL
	CLC
	ADC $06
	STA $06
	STA .LOWORD(UNKNOWN_7E9F86)
	LDA $08
	STA .LOWORD(UNKNOWN_7E9F88)
	STZ .LOWORD(UNKNOWN_7E9F7A)
	LDA $10
	STA $02
	STA .LOWORD(UNKNOWN_7E9F7C)
	LDA $18
	SEC
	SBC .LOWORD(UNKNOWN_7E9F7E)
	STA $18
	CMP #$0020
	BCS UNKNOWN_C3F705_UNKNOWN2
	STA .LOWORD(UNKNOWN_7E9F7E)
	LDX $0E
	STX .LOWORD(UNKNOWN_7E9F82)
	JSR a:.LOWORD(UNKNOWN_C3F5F9)
UNKNOWN_C3F705_UNKNOWN3:
	PLD
	RTL

UNKNOWN_C3F7FB: ;$C3F7FB
	REP #%00110001
	PHD
	TDC
	ADC #$FFEE
	TCD
	LOADPTR UNKNOWN_EFEB3D, $0E
	LDX #$001F
	LDA #$039E
	JSL UNKNOWN_C3F705
	PLD
	RTL

UNKNOWN_C3F819: ;$C3F819
	.INCBIN "src/bin/unknowns/C3F819.bin"

UNKNOWN_C3F951: ;$C3F951
	.BYTE 31,0,0
	.BYTE 18,6,0
	.BYTE 16,6,0
	.BYTE 0,0,10
	.BYTE 29,29,29
	.BYTE 0,0,31
	.BYTE 26,14,14
	.BYTE 0,10,4
	.BYTE 18,18,18
	.BYTE 18,18,31
	.BYTE 31,31,11
	.BYTE 15,15,15
	.BYTE 15,15,0
	.BYTE 15,7,15
	.BYTE 0,0,15
	.BYTE 31,0,12

UNKNOWN_C3F981: ;$C3F981
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFEE
	TCD
	PLA
	STA $02
	CMP #$0023
	BCS UNKNOWN_C3F981_UNKNOWN0
	LDA $02
	JSL SHOW_PSI_ANIMATION
	JMP UNKNOWN_C3F981_UNKNOWN8
UNKNOWN_C3F981_UNKNOWN0:
	LDA $02
	CMP #$002E
	BCS UNKNOWN_C3F981_UNKNOWN1
	JSL UNKNOWN_C2DE0F
	LOADPTR UNKNOWN_C3F951, $06
	LDA $02
	SEC
	SBC #$0023
	STA $04
	ASL
	ADC $04
	STA $10
	INC
	INC
	LDX $06
	STX $0A
	LDX $08
	STX $0C
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	TAY
	LDA $10
	INC
	LDX $06
	STX $0A
	LDX $08
	STX $0C
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	TAX
	LDA $10
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	JSL SET_BATTLE_SWIRL_COLOUR
	LDX #$003F
	LDA #$0010
	JSL SET_COLOUR_ADDSUB_MODE
	LDX #$0007
	LDA #$0005
	JSL UNKNOWN_C4A67E
	JMP UNKNOWN_C3F981_UNKNOWN8
UNKNOWN_C3F981_UNKNOWN1:
	LDA $02
	CMP #$0031
	BCS UNKNOWN_C3F981_UNKNOWN5
	LDA $02
	INC
	CMP #$002F
	BEQ UNKNOWN_C3F981_UNKNOWN3
	CMP #$0030
	BEQ UNKNOWN_C3F981_UNKNOWN4
	CMP #$0031
	BNE UNKNOWN_C3F981_UNKNOWN2
	JMP UNKNOWN_C3F981_UNKNOWN8
UNKNOWN_C3F981_UNKNOWN2:
	JMP UNKNOWN_C3F981_UNKNOWN8
UNKNOWN_C3F981_UNKNOWN3:
	LDA #$0090
	STA .LOWORD(WOBBLE_DURATION)
	JMP UNKNOWN_C3F981_UNKNOWN8
UNKNOWN_C3F981_UNKNOWN4:
	LDA #$012C
	STA .LOWORD(SHAKE_DURATION)
	JMP UNKNOWN_C3F981_UNKNOWN8
UNKNOWN_C3F981_UNKNOWN5:
	LDA $02
	CMP #$0036
	BCC UNKNOWN_C3F981_UNKNOWN6
	JMP UNKNOWN_C3F981_UNKNOWN8
UNKNOWN_C3F981_UNKNOWN6:
	JSL UNKNOWN_C2DE0F
	LOADPTR UNKNOWN_C3F951+33, $06
	LDA $02
	SEC
	SBC #$0031
	STA $04
	ASL
	ADC $04
	STA $0E
	INC
	INC
	LDX $06
	STX $0A
	LDX $08
	STX $0C
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	TAY
	LDA $0E
	INC
	LDX $06
	STX $0A
	LDX $08
	STX $0C
	CLC
	ADC $0A
	STA $0A
	LDA [$0A]
	AND #$00FF
	TAX
	LDA $0E
	CLC
	ADC $06
	STA $06
	LDA [$06]
	AND #$00FF
	JSL SET_BATTLE_SWIRL_COLOUR
	LDX #$003F
	LDA #$0010
	JSL SET_COLOUR_ADDSUB_MODE
	LDA $02
	CMP #$0035
	BCS UNKNOWN_C3F981_UNKNOWN7
	LDX #$0005
	LDA #$0004
	JSL UNKNOWN_C4A67E
	BRA UNKNOWN_C3F981_UNKNOWN8
UNKNOWN_C3F981_UNKNOWN7:
	LDX #$0004
	LDA #$0002
	JSL UNKNOWN_C4A67E
UNKNOWN_C3F981_UNKNOWN8:
	PLD
	RTS

UNKNOWN_C3FAC9: ;$C3FAC9
	REP #%00110001
	PHD
	PHA
	TDC
	ADC #$FFF0
	TCD
	PLA
	TXY
	TAX
	STX $0E
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(UNKNOWN_7E000F),X
	AND #$00FF
	CMP #$00D5
	BNE UNKNOWN_C3FAC9_UNKNOWN0
	LDA #$0001
	BRA UNKNOWN_C3FAC9_UNKNOWN2
UNKNOWN_C3FAC9_UNKNOWN0:
	LDX .LOWORD(CURRENT_TARGET)
	LDA a:.LOWORD(OBSEL_MIRROR),X
	AND #$00FF
	BNE UNKNOWN_C3FAC9_UNKNOWN1
	LDX $0E
	TXA
	JSR a:.LOWORD(UNKNOWN_C3F981)
	LDA #$0000
	BRA UNKNOWN_C3FAC9_UNKNOWN2
UNKNOWN_C3FAC9_UNKNOWN1:
	TYA
	JSR a:.LOWORD(UNKNOWN_C3F981)
	LDA #$0001
UNKNOWN_C3FAC9_UNKNOWN2:
	PLD
	RTL

UNKNOWN_C3FB09: ;$C3FB09
	REP #%00110001
	LDX .LOWORD(CURRENT_ATTACKER)
	LDA a:.LOWORD(OBSEL_MIRROR),X
	AND #$00FF
	BNE UNKNOWN_C3FB09_UNKNOWN0
	LDA #$0000
	BRA UNKNOWN_C3FB09_UNKNOWN1
UNKNOWN_C3FB09_UNKNOWN0:
	LDA #$0001
UNKNOWN_C3FB09_UNKNOWN1:
	RTL

UNKNOWN_C3FB1F: ;$C3FB1F
	.WORD 8192,1
	.WORD 6144,1
	.WORD 4096,1

UNKNOWN_C3FB2B: ;$C3FB2B
	.INCBIN "src/bin/unknowns/C3FB2B.bin"

UNKNOWN_C3FC49: ;$C3FC49
	.INCBIN "src/bin/unknowns/C3FC49.bin"

UNKNOWN_C3FD2D: ;$C3FD2D
	.INCBIN "src/bin/unknowns/C3FD2D.bin"

UNKNOWN_C3FD65: ;$C3FD65
	.INCBIN "src/bin/unknowns/C3FD65.bin"

ATTRACT_MODE_TXT: ;$C3FD8D
	.DWORD $C5E5BC
	.DWORD $C5E5EB
	.DWORD $C5E605
	.DWORD $C5E633
	.DWORD $C5E655
	.DWORD $C5E675
	.DWORD $C5E691
	.DWORD $C5E6AE
	.DWORD $C5E6D7
	.DWORD $C5E6F4

UNKNOWN_C3FDB5: ;$C3FDB5
	.INCBIN "src/bin/unknowns/C3FDB5.bin"

UNUSED_FORSALE_SIGN_SPRITE_TABLE: ;$C3FDBD
	.WORD 55
	.WORD 78
	.WORD 79
	.WORD 52

UNKNOWN_C3FDC5: ;$C3FDC5
	REP #%00100000
	LDX #$0033
	LDA #$0000
UNKNOWN_C3FDC5_UNKNOWN0:
	CLC
	ADC f:CHECK_HARDWARE,X
	DEX
	BPL UNKNOWN_C3FDC5_UNKNOWN0
	SEC
	SBC f:ANTIPIRACY_CHECKSUM_2
	BEQ UNKNOWN_C3FDC5_UNKNOWN3
	SEP #%00100000
	.I8
	LDX #$0000
	RTS
	LDA #$0000
UNKNOWN_C3FDC5_UNKNOWN1:
	STA f:$300000,X
	INX
	BPL UNKNOWN_C3FDC5_UNKNOWN1
	LDA #$0034
	STA a:.LOWORD(UNKNOWN_7E0000)
UNKNOWN_C3FDC5_UNKNOWN2:
	BRA UNKNOWN_C3FDC5_UNKNOWN2
UNKNOWN_C3FDC5_UNKNOWN3:
	RTL

ANTIPIRACY_CHECKSUM_2: ;$C3FDF2
	.WORD $2AD8