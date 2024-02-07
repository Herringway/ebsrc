.SEGMENT "BANK03"
.INCLUDE "eventmacros.asm"
.INCLUDE "common.asm"
.INCLUDE "config.asm"
.INCLUDE "structs.asm"
.INCLUDE "symbols/bank00.inc.asm"
.INCLUDE "symbols/bank01.inc.asm"
.INCLUDE "symbols/bank02.inc.asm"
.INCLUDE "symbols/bank03.inc.asm"
.INCLUDE "symbols/bank04.inc.asm"
.INCLUDE "symbols/bank2f.inc.asm"
.INCLUDE "symbols/globals.inc.asm"
.INCLUDE "symbols/misc.inc.asm"
.INCLUDE "symbols/sram.inc.asm"
.INCLUDE "symbols/text.inc.asm"

SPRITE_GROUP_PALETTES:
	BINARY "overworld_sprites/0.pal"
	BINARY "overworld_sprites/1.pal"
	BINARY "overworld_sprites/2.pal"
	BINARY "overworld_sprites/3.pal"
	BINARY "overworld_sprites/4.pal"
	BINARY "overworld_sprites/5.pal"
	BINARY "overworld_sprites/6.pal"
	BINARY "overworld_sprites/7.pal"

.INCLUDE "system/display_antipiracy_screen.asm"

.INCLUDE "system/display_faulty_gamepak_screen.asm"

.INCLUDE "data/event_flag_nocontinue_selected.asm"

.INCLUDE "data/ness_pajama_flag.asm"

.INCLUDE "data/unknown/C30188.asm"

.INCLUDE "data/events/scripts/221.asm"

.INCLUDE "data/events/scripts/222.asm"

.INCLUDE "data/events/scripts/223.asm"

.INCLUDE "data/events/scripts/224.asm"

.INCLUDE "data/events/C30295.asm"

.INCLUDE "data/events/scripts/225+226+227.asm"

.INCLUDE "data/events/scripts/228.asm"

.INCLUDE "data/events/scripts/229.asm"

.INCLUDE "data/events/scripts/230.asm"

.INCLUDE "data/events/scripts/231.asm"

.INCLUDE "data/events/scripts/232.asm"

.INCLUDE "data/events/scripts/228+229+230+231+232_common.asm"

.INCLUDE "data/events/scripts/233+234+235+236+237.asm"

.INCLUDE "data/events/scripts/238.asm"

.INCLUDE "data/events/scripts/239.asm"

.INCLUDE "data/events/scripts/240.asm"

.INCLUDE "data/events/scripts/241.asm"

.INCLUDE "data/events/scripts/242+243.asm"

.INCLUDE "data/events/scripts/244.asm"

.INCLUDE "data/events/scripts/245.asm"

.INCLUDE "data/events/scripts/246.asm"

.INCLUDE "data/events/scripts/247+248.asm"

.INCLUDE "data/events/scripts/249.asm"

.INCLUDE "data/events/scripts/250.asm"

.INCLUDE "data/events/scripts/251.asm"

.INCLUDE "data/events/scripts/252.asm"

.INCLUDE "data/events/scripts/253.asm"

.INCLUDE "data/events/scripts/254.asm"

.INCLUDE "data/events/scripts/255.asm"

.INCLUDE "data/events/scripts/256.asm"

.INCLUDE "data/events/scripts/257.asm"

.INCLUDE "data/events/scripts/258.asm"

.INCLUDE "data/events/scripts/259.asm"

.INCLUDE "data/events/scripts/260.asm"

.INCLUDE "data/events/scripts/261.asm"

.INCLUDE "data/events/scripts/262.asm"

.INCLUDE "data/events/scripts/263.asm"

.INCLUDE "data/events/scripts/264.asm"

.INCLUDE "data/events/scripts/265.asm"

.INCLUDE "data/events/C3098B.asm"

.INCLUDE "data/events/scripts/266.asm"

.INCLUDE "data/events/scripts/267.asm"

.INCLUDE "data/events/C30A1F.asm"

.INCLUDE "data/events/scripts/268.asm"

.INCLUDE "data/events/scripts/269.asm"

.INCLUDE "data/events/scripts/270.asm"

.INCLUDE "data/events/scripts/271.asm"

.INCLUDE "data/events/scripts/272.asm"

.INCLUDE "data/events/scripts/273.asm"

.INCLUDE "data/events/scripts/274+275+276.asm"

.INCLUDE "data/events/scripts/277.asm"

.INCLUDE "data/events/scripts/278.asm"

.INCLUDE "data/events/scripts/279.asm"

.INCLUDE "data/events/scripts/280.asm"

.INCLUDE "data/events/scripts/281.asm"

.INCLUDE "data/events/scripts/282.asm"

.INCLUDE "data/events/scripts/283.asm"

.INCLUDE "data/events/C30C55.asm"

.INCLUDE "data/events/C30C67.asm"

.INCLUDE "data/events/scripts/284.asm"

.INCLUDE "data/events/scripts/285.asm"

.INCLUDE "data/events/scripts/286.asm"

.INCLUDE "data/events/scripts/287.asm"

.INCLUDE "data/events/scripts/288.asm"

.INCLUDE "data/events/scripts/289.asm"

.INCLUDE "data/events/scripts/290.asm"

.INCLUDE "data/events/scripts/291.asm"

.INCLUDE "data/events/scripts/292.asm"

.INCLUDE "data/events/scripts/293.asm"

.INCLUDE "data/events/scripts/294.asm"

.INCLUDE "data/events/scripts/295.asm"

.INCLUDE "data/events/scripts/296.asm"

.INCLUDE "data/events/scripts/297.asm"

.INCLUDE "data/events/scripts/298.asm"

.INCLUDE "data/events/scripts/299.asm"

.INCLUDE "data/events/scripts/300.asm"

.INCLUDE "data/events/scripts/301.asm"

.INCLUDE "data/events/scripts/302.asm"

.INCLUDE "data/events/scripts/303.asm"

.INCLUDE "data/events/scripts/304.asm"

.INCLUDE "data/events/scripts/305.asm"

.INCLUDE "data/events/scripts/306.asm"

.INCLUDE "data/events/scripts/307.asm"

.INCLUDE "data/events/scripts/308.asm"

.INCLUDE "data/events/scripts/309.asm"

.INCLUDE "data/events/scripts/310.asm"

.INCLUDE "data/events/scripts/311.asm"

.INCLUDE "data/events/scripts/312.asm"

.INCLUDE "data/events/scripts/314.asm"

.INCLUDE "data/events/scripts/313.asm"

.INCLUDE "data/events/scripts/315.asm"

.INCLUDE "data/events/scripts/316.asm"

.INCLUDE "data/events/scripts/317.asm"

.INCLUDE "data/events/scripts/318.asm"

.INCLUDE "data/events/scripts/319.asm"

.INCLUDE "data/events/scripts/320.asm"

.INCLUDE "data/events/scripts/321.asm"

.INCLUDE "data/events/scripts/320+321_common.asm"

.INCLUDE "data/events/scripts/322.asm"

.INCLUDE "data/events/scripts/323.asm"

.INCLUDE "data/events/scripts/324.asm"

.INCLUDE "data/events/scripts/325.asm"

.INCLUDE "data/events/scripts/326.asm"

.INCLUDE "data/events/scripts/327.asm"

.INCLUDE "data/events/scripts/328.asm"

.INCLUDE "data/events/scripts/329.asm"

.INCLUDE "data/events/scripts/330.asm"

.INCLUDE "data/events/scripts/331.asm"

.INCLUDE "data/events/scripts/332.asm"

.INCLUDE "data/events/scripts/333.asm"

.INCLUDE "data/events/scripts/334.asm"

.INCLUDE "data/events/scripts/335.asm"

.INCLUDE "data/events/scripts/336.asm"

.INCLUDE "data/events/scripts/337.asm"

.INCLUDE "data/events/scripts/338.asm"

.INCLUDE "data/events/scripts/339.asm"

.INCLUDE "data/events/scripts/340.asm"

.INCLUDE "data/events/scripts/341.asm"

.INCLUDE "data/events/scripts/342.asm"

.INCLUDE "data/events/scripts/343.asm"

.INCLUDE "data/events/scripts/344.asm"

.INCLUDE "data/events/scripts/345.asm"

.INCLUDE "data/events/scripts/346.asm"

.INCLUDE "data/events/scripts/347.asm"

.INCLUDE "data/events/scripts/348+349.asm"

.INCLUDE "data/events/scripts/350.asm"

.INCLUDE "data/events/scripts/351.asm"

.INCLUDE "data/events/scripts/352.asm"

.INCLUDE "data/events/scripts/353.asm"

.INCLUDE "data/events/scripts/354.asm"

.INCLUDE "data/events/C31D2D.asm"

.INCLUDE "data/events/C31D4F.asm"

.INCLUDE "data/events/scripts/355.asm"

.INCLUDE "data/events/scripts/356.asm"

.INCLUDE "data/events/scripts/357.asm"

.INCLUDE "data/events/scripts/369.asm"

.INCLUDE "data/events/C31DF4.asm"

.INCLUDE "data/events/C31E2D.asm"

.INCLUDE "data/events/scripts/360.asm"

.INCLUDE "data/events/scripts/361.asm"

.INCLUDE "data/events/scripts/362.asm"

.INCLUDE "data/events/scripts/358.asm"

.INCLUDE "data/events/scripts/359.asm"

.INCLUDE "data/events/scripts/363.asm"

.INCLUDE "data/events/scripts/364.asm"

.INCLUDE "data/events/C31EC1.asm"

.INCLUDE "data/events/C31ED8.asm"

.INCLUDE "data/events/C31EEF.asm"

.INCLUDE "data/events/scripts/368.asm"

.INCLUDE "data/events/C32138.asm"

.INCLUDE "data/events/scripts/365.asm"

.INCLUDE "data/events/scripts/367.asm"

.INCLUDE "data/events/scripts/366.asm"

.INCLUDE "data/events/scripts/370.asm"

.INCLUDE "data/events/scripts/371.asm"

.INCLUDE "data/events/scripts/372.asm"

.INCLUDE "data/events/scripts/400.asm"

.INCLUDE "data/events/scripts/373.asm"

.INCLUDE "data/events/scripts/374.asm"

.INCLUDE "data/events/scripts/375+404.asm"

.INCLUDE "data/events/scripts/376+405.asm"

.INCLUDE "data/events/scripts/377+406.asm"

.INCLUDE "data/events/scripts/378+407.asm"

.INCLUDE "data/events/scripts/379+408.asm"

.INCLUDE "data/events/scripts/380.asm"

.INCLUDE "data/events/scripts/381.asm"

.INCLUDE "data/events/scripts/382.asm"

.INCLUDE "data/events/scripts/383.asm"

.INCLUDE "data/events/scripts/385.asm"

.INCLUDE "data/events/scripts/397.asm"

.INCLUDE "data/events/scripts/387.asm"

.INCLUDE "data/events/scripts/389+393.asm"

.INCLUDE "data/events/scripts/391.asm"

.INCLUDE "data/events/scripts/395.asm"

.INCLUDE "data/events/scripts/384.asm"

.INCLUDE "data/events/scripts/386.asm"

.INCLUDE "data/events/scripts/398.asm"

.INCLUDE "data/events/scripts/388.asm"

.INCLUDE "data/events/scripts/390+394.asm"

.INCLUDE "data/events/scripts/392.asm"

.INCLUDE "data/events/scripts/396.asm"

.INCLUDE "data/events/C32CD2.asm"

.INCLUDE "data/events/scripts/399.asm"

.INCLUDE "data/events/scripts/401.asm"

.INCLUDE "data/events/scripts/437.asm"

.INCLUDE "data/events/scripts/402.asm"

.INCLUDE "data/events/scripts/403.asm"

.INCLUDE "data/events/scripts/409.asm"

.INCLUDE "data/events/scripts/411.asm"

.INCLUDE "data/events/scripts/410.asm"

.INCLUDE "data/events/scripts/412.asm"

.INCLUDE "data/events/scripts/413.asm"

.INCLUDE "data/events/scripts/414.asm"

.INCLUDE "data/events/scripts/415.asm"

.INCLUDE "data/events/scripts/416.asm"

.INCLUDE "data/events/scripts/417.asm"

.INCLUDE "data/events/scripts/418.asm"

.INCLUDE "data/events/scripts/419.asm"

.INCLUDE "data/events/scripts/420.asm"

.INCLUDE "data/events/scripts/422.asm"

.INCLUDE "data/events/scripts/424.asm"

.INCLUDE "data/events/scripts/426.asm"

.INCLUDE "data/events/scripts/428.asm"

.INCLUDE "data/events/scripts/421.asm"

.INCLUDE "data/events/scripts/423.asm"

.INCLUDE "data/events/scripts/425.asm"

.INCLUDE "data/events/scripts/427.asm"

.INCLUDE "data/events/scripts/429.asm"

.INCLUDE "data/events/scripts/430.asm"

.INCLUDE "data/events/scripts/431+432+433+434.asm"

.INCLUDE "data/events/C33399.asm"

.INCLUDE "data/events/C333AA.asm"

.INCLUDE "data/events/C333BB.asm"

.INCLUDE "data/events/C333CC.asm"

.INCLUDE "data/events/C333DD.asm"

.INCLUDE "data/events/scripts/435.asm"

.INCLUDE "data/events/scripts/436.asm"

.INCLUDE "data/events/scripts/438.asm"

.INCLUDE "data/events/scripts/439.asm"

.INCLUDE "data/events/C33549.asm"

.INCLUDE "data/events/scripts/440.asm"

.INCLUDE "data/events/scripts/441.asm"

.INCLUDE "data/events/scripts/442.asm"

.INCLUDE "data/events/scripts/443.asm"

.INCLUDE "data/events/scripts/444.asm"

.INCLUDE "data/events/scripts/446.asm"

.INCLUDE "data/events/scripts/445.asm"

.INCLUDE "data/events/scripts/447.asm"

.INCLUDE "data/events/scripts/448.asm"

.INCLUDE "data/events/scripts/449.asm"

.INCLUDE "data/events/scripts/450.asm"

.INCLUDE "data/events/scripts/451.asm"

.INCLUDE "data/events/scripts/452.asm"

.INCLUDE "data/events/C33BFB.asm"

.INCLUDE "data/events/C33C18.asm"

.INCLUDE "data/events/C33C1D.asm"

.INCLUDE "data/events/scripts/467.asm"

.INCLUDE "data/events/scripts/465.asm"

.INCLUDE "data/events/scripts/466.asm"

.INCLUDE "data/events/C33DBE.asm"

.INCLUDE "data/events/scripts/479.asm"

.INCLUDE "data/events/scripts/481.asm"

.INCLUDE "data/events/scripts/482.asm"

.INCLUDE "data/events/scripts/480.asm"

.INCLUDE "data/events/scripts/483.asm"

.INCLUDE "data/events/scripts/484.asm"

.INCLUDE "data/events/scripts/485.asm"

.INCLUDE "data/events/scripts/486.asm"

.INCLUDE "data/events/scripts/487.asm"

.INCLUDE "data/events/scripts/488.asm"

.INCLUDE "data/events/scripts/489.asm"

.INCLUDE "data/events/scripts/490.asm"

.INCLUDE "data/events/scripts/491.asm"

.INCLUDE "data/events/scripts/492.asm"

.INCLUDE "data/events/scripts/493.asm"

.INCLUDE "data/events/scripts/494.asm"

.INCLUDE "data/events/scripts/495.asm"

.INCLUDE "data/events/scripts/496.asm"

.INCLUDE "data/events/scripts/497.asm"

.INCLUDE "data/events/scripts/498.asm"

.INCLUDE "data/events/scripts/501.asm"

.INCLUDE "data/events/scripts/531.asm"

.INCLUDE "data/events/scripts/501+531_common.asm"

.INCLUDE "data/events/scripts/532.asm"

.INCLUDE "data/events/scripts/533.asm"

.INCLUDE "data/events/C34392.asm"

.INCLUDE "data/events/C343AE.asm"

.INCLUDE "data/events/C343DB.asm"

.INCLUDE "data/events/scripts/500.asm"

.INCLUDE "data/events/scripts/499.asm"

.INCLUDE "data/events/scripts/499+500_common.asm"

.INCLUDE "data/events/scripts/547.asm"

.INCLUDE "data/events/scripts/550.asm"

.INCLUDE "data/events/scripts/548.asm"

.INCLUDE "data/events/scripts/549.asm"

.INCLUDE "data/events/scripts/551.asm"

.INCLUDE "data/events/scripts/552.asm"

.INCLUDE "data/events/scripts/553.asm"

.INCLUDE "data/events/scripts/554.asm"

.INCLUDE "data/events/scripts/555.asm"

.INCLUDE "data/events/scripts/559.asm"

.INCLUDE "data/events/scripts/558.asm"

.INCLUDE "data/events/scripts/557.asm"

.INCLUDE "data/events/scripts/556.asm"

.INCLUDE "data/events/C348C4.asm"

.INCLUDE "data/events/scripts/563.asm"

.INCLUDE "data/events/C34964.asm"

.INCLUDE "data/events/scripts/562.asm"

.INCLUDE "data/events/C34A61.asm"

.INCLUDE "data/events/scripts/561.asm"

.INCLUDE "data/events/scripts/560.asm"

.INCLUDE "data/events/C34B62.asm"

.INCLUDE "data/events/scripts/564.asm"

.INCLUDE "data/events/scripts/565.asm"

.INCLUDE "data/events/scripts/566.asm"

.INCLUDE "data/events/scripts/567.asm"

.INCLUDE "data/events/scripts/568.asm"

.INCLUDE "data/events/scripts/569.asm"

.INCLUDE "data/events/C34D39.asm"

.INCLUDE "data/events/scripts/570.asm"

.INCLUDE "data/events/scripts/571.asm"

.INCLUDE "data/events/scripts/572.asm"

.INCLUDE "data/events/scripts/573.asm"

.INCLUDE "data/events/scripts/574.asm"

.INCLUDE "data/events/scripts/575.asm"

.INCLUDE "data/events/scripts/576.asm"

.INCLUDE "data/events/scripts/577.asm"

.INCLUDE "data/events/scripts/578.asm"

.INCLUDE "data/events/scripts/579.asm"

.INCLUDE "data/events/scripts/580.asm"

.INCLUDE "data/events/scripts/581.asm"

.INCLUDE "data/events/scripts/582.asm"

.INCLUDE "data/events/scripts/583.asm"

.INCLUDE "data/events/C34E73.asm"

.INCLUDE "data/events/scripts/535.asm"

.INCLUDE "data/events/scripts/536.asm"

.INCLUDE "data/events/scripts/537.asm"

.INCLUDE "data/events/scripts/538.asm"

.INCLUDE "data/events/scripts/539.asm"

.INCLUDE "data/events/scripts/540.asm"

.INCLUDE "data/events/scripts/541.asm"

.INCLUDE "data/events/scripts/542.asm"

.INCLUDE "data/events/scripts/543.asm"

.INCLUDE "data/events/scripts/544.asm"

.INCLUDE "data/events/scripts/545.asm"

.INCLUDE "data/events/scripts/546.asm"

.INCLUDE "data/events/scripts/799.asm"

.INCLUDE "data/events/scripts/800.asm"

.INCLUDE "data/events/scripts/801.asm"

.INCLUDE "data/events/C35F8B.asm"

.INCLUDE "data/events/C35FB6.asm"

.INCLUDE "data/events/C35FCD.asm"

.INCLUDE "data/events/scripts/802.asm"

.INCLUDE "data/events/scripts/803.asm"

.INCLUDE "data/events/scripts/809.asm"

.INCLUDE "data/events/scripts/810.asm"

.INCLUDE "data/events/scripts/811.asm"

.INCLUDE "data/events/scripts/812.asm"

.INCLUDE "data/events/scripts/813.asm"

.INCLUDE "data/events/scripts/814.asm"

.INCLUDE "data/events/scripts/815.asm"

.INCLUDE "data/events/scripts/816.asm"

.INCLUDE "data/events/scripts/817.asm"

.INCLUDE "data/events/scripts/818.asm"

.INCLUDE "data/events/scripts/819.asm"

.INCLUDE "data/events/scripts/820.asm"

.INCLUDE "data/events/scripts/821.asm"

.INCLUDE "data/events/scripts/822.asm"

.INCLUDE "data/events/scripts/823.asm"

.INCLUDE "data/events/scripts/824.asm"

.INCLUDE "data/events/scripts/825.asm"

.INCLUDE "data/events/C362C0.asm"

.INCLUDE "data/events/scripts/826.asm"

.INCLUDE "data/events/scripts/827.asm"

.INCLUDE "data/events/scripts/828.asm"

.INCLUDE "data/events/scripts/829.asm"

.INCLUDE "data/events/scripts/804.asm"

.INCLUDE "data/events/scripts/805.asm"

.INCLUDE "data/events/scripts/806.asm"

.INCLUDE "data/events/scripts/808.asm"

.INCLUDE "data/events/scripts/807.asm"

.INCLUDE "data/events/scripts/836.asm"

.INCLUDE "data/events/scripts/837.asm"

.INCLUDE "data/events/scripts/838.asm"

.INCLUDE "data/events/scripts/839.asm"

.INCLUDE "data/events/scripts/831.asm"

.INCLUDE "data/events/scripts/832.asm"

.INCLUDE "data/events/scripts/833.asm"

.INCLUDE "data/events/scripts/830.asm"

.INCLUDE "data/events/scripts/834.asm"

.INCLUDE "data/events/scripts/835.asm"

.INCLUDE "data/events/scripts/840.asm"

.INCLUDE "data/events/scripts/841.asm"

.INCLUDE "data/events/scripts/842.asm"

.INCLUDE "data/events/scripts/843.asm"

.INCLUDE "data/events/scripts/844.asm"

.INCLUDE "data/events/C36834.asm"

.INCLUDE "data/events/scripts/845.asm"

.INCLUDE "data/events/scripts/846.asm"

.INCLUDE "data/events/scripts/847.asm"

.INCLUDE "data/events/scripts/848.asm"

.INCLUDE "data/events/scripts/849.asm"

.INCLUDE "data/events/scripts/850.asm"

.INCLUDE "data/events/scripts/851.asm"

.INCLUDE "data/events/scripts/852.asm"

.INCLUDE "data/events/scripts/853.asm"

.INCLUDE "data/events/scripts/854.asm"

.INCLUDE "data/events/scripts/855.asm"

.INCLUDE "data/events/scripts/856.asm"

.INCLUDE "data/events/scripts/857.asm"

.INCLUDE "data/events/scripts/858.asm"

.INCLUDE "data/events/C36A3E.asm"

.INCLUDE "data/events/C36A41.asm"

.INCLUDE "data/events/scripts/584.asm"

.INCLUDE "data/events/scripts/585.asm"

.INCLUDE "data/events/scripts/586.asm"

.INCLUDE "data/events/scripts/587.asm"

.INCLUDE "data/events/scripts/588.asm"

.INCLUDE "data/events/scripts/589.asm"

.INCLUDE "data/events/scripts/590.asm"

.INCLUDE "data/events/C36BB4.asm"

.INCLUDE "data/events/scripts/591.asm"

.INCLUDE "data/events/C36BEA.asm"

.INCLUDE "data/events/scripts/592.asm"

.INCLUDE "data/events/scripts/593.asm"

.INCLUDE "data/events/scripts/594.asm"

.INCLUDE "data/events/scripts/595.asm"

.INCLUDE "data/events/scripts/596.asm"

.INCLUDE "data/events/C36D18.asm"

.INCLUDE "data/events/scripts/597.asm"

.INCLUDE "data/events/scripts/598.asm"

.INCLUDE "data/events/scripts/599.asm"

.INCLUDE "data/events/scripts/600.asm"

.INCLUDE "data/events/scripts/601.asm"

.INCLUDE "data/events/scripts/602.asm"

.INCLUDE "data/events/scripts/603.asm"

.INCLUDE "data/events/scripts/604.asm"

.INCLUDE "data/events/scripts/605.asm"

.INCLUDE "data/events/scripts/606.asm"

.INCLUDE "data/events/C36E41.asm"

.INCLUDE "data/events/scripts/607.asm"

.INCLUDE "data/events/scripts/608.asm"

.INCLUDE "data/events/scripts/609.asm"

.INCLUDE "data/events/scripts/610.asm"

.INCLUDE "data/events/scripts/611.asm"

.INCLUDE "data/events/scripts/612.asm"

.INCLUDE "data/events/scripts/613.asm"

.INCLUDE "data/events/scripts/614.asm"

.INCLUDE "data/events/scripts/615.asm"

.INCLUDE "data/events/scripts/616.asm"

.INCLUDE "data/events/scripts/617.asm"

.INCLUDE "data/events/scripts/618.asm"

.INCLUDE "data/events/scripts/619.asm"

.INCLUDE "data/events/scripts/620.asm"

.INCLUDE "data/events/scripts/621.asm"

.INCLUDE "data/events/scripts/622.asm"

.INCLUDE "data/events/scripts/623.asm"

.INCLUDE "data/events/scripts/624.asm"

.INCLUDE "data/events/scripts/625.asm"

.INCLUDE "data/events/scripts/626.asm"

.INCLUDE "data/events/scripts/627.asm"

.INCLUDE "data/events/scripts/628.asm"

.INCLUDE "data/events/scripts/629.asm"

.INCLUDE "data/events/scripts/630.asm"

.INCLUDE "data/events/scripts/631.asm"

.INCLUDE "data/events/scripts/632.asm"

.INCLUDE "data/events/C37439.asm"

.INCLUDE "data/events/scripts/633.asm"

.INCLUDE "data/events/scripts/634.asm"

.INCLUDE "data/events/scripts/635.asm"

.INCLUDE "data/events/scripts/636.asm"

.INCLUDE "data/events/scripts/637.asm"

.INCLUDE "data/events/C37545.asm"

.INCLUDE "data/events/C37559.asm"

.INCLUDE "data/events/scripts/638.asm"

.INCLUDE "data/events/scripts/639.asm"

.INCLUDE "data/events/scripts/640.asm"

.INCLUDE "data/events/scripts/641.asm"

.INCLUDE "data/events/scripts/642.asm"

.INCLUDE "data/events/scripts/643.asm"

.INCLUDE "data/events/scripts/644.asm"

.INCLUDE "data/events/scripts/645.asm"

.INCLUDE "data/events/scripts/646.asm"

.INCLUDE "data/events/scripts/647.asm"

.INCLUDE "data/events/scripts/648.asm"

.INCLUDE "data/events/scripts/649.asm"

.INCLUDE "data/events/scripts/650.asm"

.INCLUDE "data/events/scripts/651.asm"

.INCLUDE "data/events/scripts/652.asm"

.INCLUDE "data/events/scripts/655.asm"

.INCLUDE "data/events/scripts/653.asm"

.INCLUDE "data/events/scripts/656.asm"

.INCLUDE "data/events/scripts/654.asm"

.INCLUDE "data/events/scripts/657.asm"

.INCLUDE "data/events/scripts/658.asm"

.INCLUDE "data/events/scripts/660.asm"

.INCLUDE "data/events/scripts/659.asm"

.INCLUDE "data/events/scripts/661.asm"

.INCLUDE "data/events/scripts/662.asm"

.INCLUDE "data/events/scripts/663.asm"

.INCLUDE "data/events/scripts/664.asm"

.INCLUDE "data/events/C37A7C.asm"

.INCLUDE "data/events/scripts/665.asm"

.INCLUDE "data/events/scripts/666.asm"

.INCLUDE "data/events/scripts/667.asm"

.INCLUDE "data/events/scripts/668.asm"

.INCLUDE "data/events/scripts/669.asm"

.INCLUDE "data/events/scripts/670.asm"

.INCLUDE "data/events/scripts/671.asm"

.INCLUDE "data/events/scripts/672.asm"

.INCLUDE "data/events/scripts/673.asm"

.INCLUDE "data/events/scripts/674.asm"

.INCLUDE "data/events/scripts/675.asm"

.INCLUDE "data/events/scripts/676.asm"

.INCLUDE "data/events/scripts/677.asm"

.INCLUDE "data/events/scripts/678.asm"

.INCLUDE "data/events/scripts/676+677+678_common_1.asm"

.INCLUDE "data/events/scripts/676+677+678_common_2.asm"

.INCLUDE "data/events/scripts/679.asm"

.INCLUDE "data/events/scripts/680.asm"

.INCLUDE "data/events/scripts/681.asm"

.INCLUDE "data/events/scripts/682.asm"

.INCLUDE "data/events/scripts/683.asm"

.INCLUDE "data/events/scripts/684.asm"

.INCLUDE "data/events/scripts/685.asm"

.INCLUDE "data/events/scripts/686.asm"

.INCLUDE "data/events/scripts/687.asm"

.INCLUDE "data/events/scripts/688.asm"

.INCLUDE "data/events/scripts/689.asm"

.INCLUDE "data/events/scripts/690.asm"

.INCLUDE "data/events/scripts/691.asm"

.INCLUDE "data/events/scripts/692.asm"

.INCLUDE "data/events/C3835D.asm"

.INCLUDE "data/events/C383BC.asm"

.INCLUDE "data/events/scripts/693.asm"

.INCLUDE "data/events/scripts/694.asm"

.INCLUDE "data/events/scripts/695.asm"

.INCLUDE "data/events/scripts/696.asm"

.INCLUDE "data/events/scripts/697.asm"

.INCLUDE "data/events/scripts/698.asm"

.INCLUDE "data/events/scripts/696+697+698_common.asm"

.INCLUDE "data/events/scripts/699.asm"

.INCLUDE "data/events/scripts/700.asm"

.INCLUDE "data/events/scripts/701.asm"

.INCLUDE "data/events/scripts/702.asm"

.INCLUDE "data/events/scripts/703.asm"

.INCLUDE "data/events/scripts/704.asm"

.INCLUDE "data/events/scripts/705.asm"

.INCLUDE "data/events/scripts/706.asm"

.INCLUDE "data/events/scripts/705+706_common.asm"

.INCLUDE "data/events/scripts/707.asm"

.INCLUDE "data/events/scripts/708.asm"

.INCLUDE "data/events/scripts/709.asm"

.INCLUDE "data/events/scripts/710.asm"

.INCLUDE "data/events/scripts/707+708+709+710_common.asm"

.INCLUDE "data/events/scripts/712.asm"

.INCLUDE "data/events/scripts/711.asm"

.INCLUDE "data/events/scripts/713.asm"

.INCLUDE "data/events/scripts/714.asm"

.INCLUDE "data/events/C38978.asm"

.INCLUDE "data/events/C3899E.asm"

.INCLUDE "data/events/scripts/715.asm"

.INCLUDE "data/events/scripts/716.asm"

.INCLUDE "data/events/scripts/717.asm"

.INCLUDE "data/events/scripts/718.asm"

.INCLUDE "data/events/scripts/719.asm"

.INCLUDE "data/events/scripts/720.asm"

.INCLUDE "data/events/scripts/721.asm"

.INCLUDE "data/events/scripts/722.asm"

.INCLUDE "data/events/scripts/723.asm"

.INCLUDE "data/events/scripts/724.asm"

.INCLUDE "data/events/scripts/725.asm"

.INCLUDE "data/events/scripts/726.asm"

.INCLUDE "data/events/scripts/727.asm"

.INCLUDE "data/events/scripts/728.asm"

.INCLUDE "data/events/scripts/729.asm"

.INCLUDE "data/events/scripts/730.asm"

.INCLUDE "data/events/scripts/731.asm"

.INCLUDE "data/events/scripts/732.asm"

.INCLUDE "data/events/scripts/733.asm"

.INCLUDE "data/events/scripts/734.asm"

.INCLUDE "data/events/scripts/735.asm"

.INCLUDE "data/events/scripts/736.asm"

.INCLUDE "data/events/scripts/737.asm"

.INCLUDE "data/events/scripts/738.asm"

.INCLUDE "data/events/scripts/739.asm"

.INCLUDE "data/events/scripts/740.asm"

.INCLUDE "data/events/scripts/737+738+739+740_common.asm"

.INCLUDE "data/events/scripts/741.asm"

.INCLUDE "data/events/scripts/742.asm"

.INCLUDE "data/events/scripts/743.asm"

.INCLUDE "data/events/scripts/744.asm"

.INCLUDE "data/events/scripts/745.asm"

.INCLUDE "data/events/scripts/746.asm"

.INCLUDE "data/events/scripts/747.asm"

.INCLUDE "data/events/scripts/749.asm"

.INCLUDE "data/events/scripts/755.asm"

.INCLUDE "data/events/scripts/756.asm"

.INCLUDE "data/events/scripts/748.asm"

.INCLUDE "data/events/scripts/750.asm"

.INCLUDE "data/events/scripts/751.asm"

.INCLUDE "data/events/scripts/752.asm"

.INCLUDE "data/events/scripts/753.asm"

.INCLUDE "data/events/scripts/754.asm"

.INCLUDE "data/events/scripts/757.asm"

.INCLUDE "data/events/scripts/758.asm"

.INCLUDE "data/events/scripts/759.asm"

.INCLUDE "data/events/scripts/760.asm"

.INCLUDE "data/events/scripts/761.asm"

.INCLUDE "data/events/scripts/762.asm"

.INCLUDE "data/events/scripts/763.asm"

.INCLUDE "data/events/scripts/764.asm"

.INCLUDE "data/events/scripts/862.asm"

.INCLUDE "data/events/scripts/863.asm"

.INCLUDE "data/events/scripts/864.asm"

.INCLUDE "data/events/scripts/865.asm"

.INCLUDE "data/events/scripts/866.asm"

.INCLUDE "data/events/scripts/867.asm"

.INCLUDE "data/events/scripts/868.asm"

.INCLUDE "data/events/scripts/869.asm"

.INCLUDE "data/events/scripts/870.asm"

.INCLUDE "data/events/scripts/871.asm"

.INCLUDE "data/events/scripts/872.asm"

.INCLUDE "data/events/scripts/873.asm"

.INCLUDE "data/events/scripts/874.asm"

.INCLUDE "data/events/scripts/875.asm"

.INCLUDE "data/events/scripts/876.asm"

.INCLUDE "data/events/scripts/877.asm"

.INCLUDE "data/events/scripts/878.asm"

.INCLUDE "data/events/scripts/879.asm"

.INCLUDE "data/events/scripts/880.asm"

.INCLUDE "data/events/scripts/881.asm"

.INCLUDE "data/events/scripts/882.asm"

.INCLUDE "data/events/scripts/883.asm"

.INCLUDE "data/events/scripts/884.asm"

.INCLUDE "data/events/scripts/885.asm"

.INCLUDE "data/events/scripts/886.asm"

.INCLUDE "data/events/scripts/887.asm"

.INCLUDE "data/events/scripts/888.asm"

.INCLUDE "data/events/scripts/889.asm"

.INCLUDE "data/events/scripts/890.asm"

.INCLUDE "data/events/scripts/891.asm"

.INCLUDE "data/events/scripts/892.asm"

.INCLUDE "data/events/scripts/893.asm"

.INCLUDE "data/events/C39AC7.asm"

.INCLUDE "data/events/scripts/765.asm"

.INCLUDE "data/events/scripts/766.asm"

.INCLUDE "data/events/scripts/767.asm"

.INCLUDE "data/events/scripts/768.asm"

.INCLUDE "data/events/scripts/769.asm"

.INCLUDE "data/events/scripts/770.asm"

.INCLUDE "data/events/scripts/771.asm"

.INCLUDE "data/events/scripts/772.asm"

.INCLUDE "data/events/C39E01.asm"

.INCLUDE "data/events/scripts/773.asm"

.INCLUDE "data/events/scripts/774.asm"

.INCLUDE "data/events/scripts/775.asm"

.INCLUDE "data/events/scripts/777.asm"

.INCLUDE "data/events/scripts/778.asm"

.INCLUDE "data/events/scripts/776.asm"

.INCLUDE "data/events/scripts/779.asm"

.INCLUDE "data/events/scripts/780.asm"

.INCLUDE "data/events/scripts/781.asm"

.INCLUDE "data/events/scripts/782.asm"

.INCLUDE "data/events/scripts/783.asm"

.INCLUDE "data/events/scripts/784.asm"

.INCLUDE "data/unknown/C39FF2.asm"

.INCLUDE "data/unknown/C3A010.asm"

.INCLUDE "data/unknown/C3A01B.asm"

.INCLUDE "data/unknown/C3A026.asm"

.INCLUDE "data/unknown/C3A02D.asm"

.INCLUDE "data/unknown/C3A038.asm"

.INCLUDE "data/events/scripts/001.asm"

.INCLUDE "data/events/scripts/002.asm"

.INCLUDE "data/events/C3A07F.asm"

.INCLUDE "data/events/scripts/003.asm"

.INCLUDE "data/events/C3A09F.asm"

.INCLUDE "data/events/C3A0B2.asm"

.INCLUDE "data/events/C3A0C5.asm"

.INCLUDE "data/events/C3A0D8.asm"

.INCLUDE "data/events/C3A12E.asm"

.INCLUDE "data/events/C3A15E.asm"

.INCLUDE "data/events/C3A17B.asm"

.INCLUDE "data/events/C3A18F.asm"

.INCLUDE "data/events/C3A1A3.asm"

.INCLUDE "data/events/C3A1B7.asm"

.INCLUDE "data/events/C3A1CB.asm"

.INCLUDE "data/events/C3A1DF.asm"

.INCLUDE "data/events/C3A1F3.asm"

.INCLUDE "data/events/scripts/035.asm"

.INCLUDE "data/events/C3A209.asm"

.INCLUDE "data/events/C3A20E.asm"

.INCLUDE "data/events/C3A262.asm"

.INCLUDE "data/events/C3A271.asm"

.INCLUDE "data/events/C3A272.asm"

.INCLUDE "data/events/scripts/004.asm"

.INCLUDE "data/events/scripts/007.asm"

.INCLUDE "data/events/scripts/009.asm"

.INCLUDE "data/events/scripts/008.asm"

.INCLUDE "data/events/scripts/861.asm"

.INCLUDE "data/events/scripts/010+011.asm"

.INCLUDE "data/events/scripts/006+012.asm"

.INCLUDE "data/events/scripts/013.asm"

.INCLUDE "data/events/scripts/014.asm"

.INCLUDE "data/events/scripts/015.asm"

.INCLUDE "data/events/scripts/016.asm"

.INCLUDE "data/events/scripts/017.asm"

.INCLUDE "data/events/scripts/018.asm"

.INCLUDE "data/events/scripts/013+014+015+016+017_common.asm"

.INCLUDE "data/events/scripts/013+014+015+016+017_common_2.asm"

.INCLUDE "data/events/C3A401.asm"

.INCLUDE "data/events/scripts/005.asm"

.INCLUDE "data/events/scripts/019.asm"

.INCLUDE "data/events/scripts/020.asm"

.INCLUDE "data/events/scripts/021.asm"

.INCLUDE "data/events/scripts/022.asm"

.INCLUDE "data/events/scripts/023.asm"

.INCLUDE "data/events/scripts/024.asm"

.INCLUDE "data/events/scripts/025.asm"

.INCLUDE "data/events/scripts/026.asm"

.INCLUDE "data/events/scripts/027.asm"

.INCLUDE "data/events/scripts/028.asm"

.INCLUDE "data/events/scripts/029.asm"

.INCLUDE "data/events/scripts/030.asm"

.INCLUDE "data/events/scripts/031.asm"

.INCLUDE "data/events/C3AA1E.asm"

.INCLUDE "data/events/C3AA2B.asm"

.INCLUDE "data/events/C3AA38.asm"

.INCLUDE "data/events/C3AA46.asm"

.INCLUDE "data/events/C3AA5A.asm"

.INCLUDE "data/events/C3AA6E.asm"

.INCLUDE "data/events/C3AA82.asm"

.INCLUDE "data/events/C3AA96.asm"

.INCLUDE "data/events/C3AAAA.asm"

.INCLUDE "data/events/C3AAB8.asm"

.INCLUDE "data/events/C3AAC2.asm"

.INCLUDE "data/events/C3AAD6.asm"

.INCLUDE "data/events/C3AAEA.asm"

.INCLUDE "data/events/C3AAFE.asm"

.INCLUDE "data/events/C3AB12.asm"

.INCLUDE "data/events/C3AB26.asm"

.INCLUDE "data/events/C3AB37.asm"

.INCLUDE "data/events/C3AB44.asm"

.INCLUDE "data/events/C3AB59.asm"

.INCLUDE "data/events/C3AB67.asm"

.INCLUDE "data/events/C3AB8A.asm"

.INCLUDE "data/events/C3AB94.asm"

.INCLUDE "data/events/C3AB9E.asm"

.INCLUDE "data/events/C3ABE0.asm"

.INCLUDE "data/events/scripts/476.asm"

.INCLUDE "data/events/scripts/477.asm"

.INCLUDE "data/events/scripts/478.asm"

.INCLUDE "data/events/scripts/036.asm"

.INCLUDE "data/events/scripts/037.asm"

.INCLUDE "data/events/scripts/043.asm"

.INCLUDE "data/events/scripts/042.asm"

.INCLUDE "data/events/scripts/044.asm"

.INCLUDE "data/events/scripts/038.asm"

.INCLUDE "data/events/scripts/039.asm"

.INCLUDE "data/events/scripts/040.asm"

.INCLUDE "data/events/scripts/041.asm"

.INCLUDE "data/events/scripts/045.asm"

.INCLUDE "data/events/scripts/046.asm"

.INCLUDE "data/events/C3AFA3.asm"

.INCLUDE "data/events/scripts/055.asm"

.INCLUDE "data/events/scripts/047.asm"

.INCLUDE "data/events/scripts/048.asm"

.INCLUDE "data/events/scripts/049.asm"

.INCLUDE "data/events/scripts/053.asm"

.INCLUDE "data/events/scripts/051.asm"

.INCLUDE "data/events/C3B0B6.asm"

.INCLUDE "data/events/scripts/050.asm"

.INCLUDE "data/events/scripts/054.asm"

.INCLUDE "data/events/scripts/052.asm"

.INCLUDE "data/events/scripts/056.asm"

.INCLUDE "data/events/scripts/057.asm"

.INCLUDE "data/events/scripts/058.asm"

.INCLUDE "data/events/scripts/059.asm"

.INCLUDE "data/events/scripts/060.asm"

.INCLUDE "data/events/scripts/061.asm"

.INCLUDE "data/events/scripts/062.asm"

.INCLUDE "data/events/scripts/063.asm"

.INCLUDE "data/events/C3B431.asm"

.INCLUDE "data/events/scripts/064.asm"

.INCLUDE "data/events/scripts/065.asm"

.INCLUDE "data/events/scripts/066.asm"

.INCLUDE "data/events/scripts/067.asm"

.INCLUDE "data/events/scripts/069.asm"

.INCLUDE "data/events/scripts/068.asm"

.INCLUDE "data/events/scripts/070.asm"

.INCLUDE "data/events/scripts/071.asm"

.INCLUDE "data/events/scripts/072.asm"

.INCLUDE "data/events/C3B70C.asm"

.INCLUDE "data/events/scripts/073.asm"

.INCLUDE "data/events/scripts/074.asm"

.INCLUDE "data/events/scripts/075.asm"

.INCLUDE "data/events/scripts/076.asm"

.INCLUDE "data/events/scripts/077.asm"

.INCLUDE "data/events/scripts/078.asm"

.INCLUDE "data/events/scripts/079.asm"

.INCLUDE "data/events/scripts/080.asm"

.INCLUDE "data/events/scripts/081.asm"

.INCLUDE "data/events/scripts/082.asm"

.INCLUDE "data/events/scripts/083.asm"

.INCLUDE "data/events/scripts/084.asm"

.INCLUDE "data/events/scripts/085.asm"

.INCLUDE "data/events/scripts/086.asm"

.INCLUDE "data/events/scripts/088.asm"

.INCLUDE "data/events/scripts/087.asm"

.INCLUDE "data/events/scripts/089.asm"

.INCLUDE "data/events/scripts/090.asm"

.INCLUDE "data/events/scripts/094.asm"

.INCLUDE "data/events/scripts/095.asm"

.INCLUDE "data/events/scripts/096.asm"

.INCLUDE "data/events/scripts/097.asm"

.INCLUDE "data/events/scripts/098.asm"

.INCLUDE "data/events/scripts/094_095_098_common.asm"

.INCLUDE "data/events/C3BAA3.asm"

.INCLUDE "data/events/C3BAC4.asm"

.INCLUDE "data/events/C3BAD7.asm"

.INCLUDE "data/events/scripts/091.asm"

.INCLUDE "data/events/scripts/092.asm"

.INCLUDE "data/events/scripts/099.asm"

.INCLUDE "data/events/scripts/100.asm"

.INCLUDE "data/events/C3BB5C.asm"

.INCLUDE "data/events/C3BB73.asm"

.INCLUDE "data/events/scripts/093.asm"

.INCLUDE "data/events/scripts/103.asm"

.INCLUDE "data/events/scripts/104.asm"

.INCLUDE "data/events/scripts/105.asm"

.INCLUDE "data/events/scripts/106.asm"

.INCLUDE "data/events/C3BD03.asm"

.INCLUDE "data/events/scripts/102.asm"

.INCLUDE "data/events/scripts/101.asm"

.INCLUDE "data/events/scripts/107.asm"

.INCLUDE "data/events/scripts/108.asm"

.INCLUDE "data/events/scripts/109.asm"

.INCLUDE "data/events/scripts/110.asm"

.INCLUDE "data/events/scripts/111.asm"

.INCLUDE "data/events/scripts/112.asm"

.INCLUDE "data/events/scripts/113.asm"

.INCLUDE "data/events/scripts/114.asm"

.INCLUDE "data/events/C3BEA4.asm"

.INCLUDE "data/events/C3BED4.asm"

.INCLUDE "data/events/scripts/115.asm"

.INCLUDE "data/events/scripts/116.asm"

.INCLUDE "data/events/scripts/117.asm"

.INCLUDE "data/events/scripts/118.asm"

.INCLUDE "data/events/scripts/119.asm"

.INCLUDE "data/events/scripts/115+116+117+118+119_common.asm"

.INCLUDE "data/events/scripts/468.asm"

.INCLUDE "data/events/scripts/469.asm"

.INCLUDE "data/events/scripts/470.asm"

.INCLUDE "data/events/scripts/471.asm"

.INCLUDE "data/events/scripts/472.asm"

.INCLUDE "data/events/C3C143.asm"

.INCLUDE "data/events/scripts/473.asm"

.INCLUDE "data/events/scripts/474.asm"

.INCLUDE "data/events/scripts/475.asm"

.INCLUDE "data/events/C3C1E0.asm"

.INCLUDE "data/events/C3C20F.asm"

.INCLUDE "data/events/C3C227.asm"

.INCLUDE "data/events/scripts/120.asm"

.INCLUDE "data/events/scripts/121.asm"

.INCLUDE "data/events/scripts/132.asm"

.INCLUDE "data/events/scripts/122.asm"

.INCLUDE "data/events/scripts/123.asm"

.INCLUDE "data/events/scripts/124.asm"

.INCLUDE "data/events/scripts/125.asm"

.INCLUDE "data/events/scripts/126.asm"

.INCLUDE "data/events/scripts/127.asm"

.INCLUDE "data/events/scripts/128.asm"

.INCLUDE "data/events/scripts/129.asm"

.INCLUDE "data/events/scripts/130.asm"

.INCLUDE "data/events/scripts/131.asm"

.INCLUDE "data/events/C3C35D.asm"

.INCLUDE "data/events/scripts/133.asm"

.INCLUDE "data/events/scripts/134.asm"

.INCLUDE "data/events/scripts/135.asm"

.INCLUDE "data/events/scripts/136.asm"

.INCLUDE "data/events/scripts/137.asm"

.INCLUDE "data/events/scripts/138.asm"

.INCLUDE "data/events/scripts/178.asm"

.INCLUDE "data/events/scripts/139.asm"

.INCLUDE "data/events/scripts/140.asm"

.INCLUDE "data/events/scripts/141.asm"

.INCLUDE "data/events/scripts/142.asm"

.INCLUDE "data/events/scripts/143.asm"

.INCLUDE "data/events/scripts/144.asm"

.INCLUDE "data/events/scripts/145.asm"

.INCLUDE "data/events/scripts/146.asm"

.INCLUDE "data/events/scripts/162.asm"

.INCLUDE "data/events/scripts/165.asm"

.INCLUDE "data/events/C3C810.asm"

.INCLUDE "data/events/C3C81A.asm"

.INCLUDE "data/events/C3C824.asm"

.INCLUDE "data/events/C3C871.asm"

.INCLUDE "data/events/scripts/147.asm"

.INCLUDE "data/events/scripts/148.asm"

.INCLUDE "data/events/scripts/149.asm"

.INCLUDE "data/events/scripts/150.asm"

.INCLUDE "data/events/scripts/151.asm"

.INCLUDE "data/events/scripts/152.asm"

.INCLUDE "data/events/C3C8FD.asm"

.INCLUDE "data/events/C3C90C.asm"

.INCLUDE "data/events/C3C94E.asm"

.INCLUDE "data/events/scripts/153.asm"

.INCLUDE "data/events/scripts/155.asm"

.INCLUDE "data/events/scripts/154.asm"

.INCLUDE "data/events/scripts/156.asm"

.INCLUDE "data/events/scripts/157.asm"

.INCLUDE "data/events/scripts/159.asm"

.INCLUDE "data/events/scripts/158.asm"

.INCLUDE "data/events/scripts/160.asm"

.INCLUDE "data/events/C3CC24.asm"

.INCLUDE "data/events/C3CC5C.asm"

.INCLUDE "data/events/C3CC94.asm"

.INCLUDE "data/events/C3CCA8.asm"

.INCLUDE "data/events/scripts/161.asm"

.INCLUDE "data/events/scripts/164.asm"

.INCLUDE "data/events/C3CEA2.asm"

.INCLUDE "data/events/C3CEB9.asm"

.INCLUDE "data/events/scripts/163.asm"

.INCLUDE "data/events/scripts/166.asm"

.INCLUDE "data/events/scripts/167.asm"

.INCLUDE "data/events/scripts/168.asm"

.INCLUDE "data/events/scripts/169.asm"

.INCLUDE "data/events/scripts/170.asm"

.INCLUDE "data/events/scripts/171.asm"

.INCLUDE "data/events/C3D0A4.asm"

.INCLUDE "data/events/scripts/172.asm"

.INCLUDE "data/events/scripts/173.asm"

.INCLUDE "data/events/scripts/174.asm"

.INCLUDE "data/events/scripts/175.asm"

.INCLUDE "data/events/scripts/176.asm"

.INCLUDE "data/events/scripts/177.asm"

.INCLUDE "data/events/scripts/179.asm"

.INCLUDE "data/events/scripts/180.asm"

.INCLUDE "data/events/scripts/181.asm"

.INCLUDE "data/events/scripts/182.asm"

.INCLUDE "data/events/scripts/183.asm"

.INCLUDE "data/events/scripts/184.asm"

.INCLUDE "data/events/scripts/185.asm"

.INCLUDE "data/events/scripts/186.asm"

.INCLUDE "data/events/scripts/187.asm"

.INCLUDE "data/events/scripts/188.asm"

.INCLUDE "data/events/scripts/189.asm"

.INCLUDE "data/events/scripts/190.asm"

.INCLUDE "data/events/scripts/191.asm"

.INCLUDE "data/events/scripts/192.asm"

.INCLUDE "data/events/scripts/193.asm"

.INCLUDE "data/events/scripts/194.asm"

.INCLUDE "data/events/scripts/195.asm"

.INCLUDE "data/events/scripts/196.asm"

.INCLUDE "data/events/scripts/197.asm"

.INCLUDE "data/events/scripts/198.asm"

.INCLUDE "data/events/scripts/199.asm"

.INCLUDE "data/events/scripts/200.asm"

.INCLUDE "data/events/scripts/201.asm"

.INCLUDE "data/events/scripts/202.asm"

.INCLUDE "data/events/scripts/203.asm"

.INCLUDE "data/events/scripts/204.asm"

.INCLUDE "data/events/scripts/205.asm"

.INCLUDE "data/events/scripts/206.asm"

.INCLUDE "data/events/scripts/207.asm"

.INCLUDE "data/events/scripts/208.asm"

.INCLUDE "data/events/scripts/209.asm"

.INCLUDE "data/events/scripts/210.asm"

.INCLUDE "data/events/C3D913.asm"

.INCLUDE "data/events/scripts/211.asm"

.INCLUDE "data/events/scripts/220.asm"

.INCLUDE "data/events/scripts/212.asm"

.INCLUDE "data/events/scripts/213.asm"

.INCLUDE "data/events/scripts/214.asm"

.INCLUDE "data/events/scripts/215.asm"

.INCLUDE "data/events/scripts/216.asm"

.INCLUDE "data/events/scripts/217.asm"

.INCLUDE "data/events/scripts/218.asm"

.INCLUDE "data/events/scripts/219.asm"

.INCLUDE "data/events/C3DB7A.asm"

.INCLUDE "data/events/scripts/453.asm"

.INCLUDE "data/events/scripts/454.asm"

.INCLUDE "data/events/C3DBDB.asm"

.INCLUDE "data/events/scripts/455.asm"

.INCLUDE "data/events/scripts/456.asm"

.INCLUDE "data/events/scripts/457.asm"

.INCLUDE "data/events/scripts/458.asm"

.INCLUDE "data/events/scripts/459.asm"

.INCLUDE "data/events/scripts/460.asm"

.INCLUDE "data/events/scripts/461.asm"

.INCLUDE "data/events/scripts/462.asm"

.INCLUDE "data/events/scripts/463.asm"

.INCLUDE "data/events/scripts/464.asm"

.INCLUDE "data/events/scripts/032.asm"

.INCLUDE "data/events/scripts/034.asm"

.INCLUDE "data/events/scripts/033.asm"

.INCLUDE "data/events/C3DF90.asm"

.INCLUDE "data/events/C3DFB5.asm"

.INCLUDE "data/events/C3DFD4.asm"

.INCLUDE "data/unknown/C3DFE8.asm"

.INCLUDE "data/map/character_initial_entity_data.asm"

.INCLUDE "data/map/character_sizes.asm"

.INCLUDE "data/map/movement_speeds.asm"

.INCLUDE "data/map/allowed_input_directions.asm"

.INCLUDE "data/unknown/C3E148.asm"

.INCLUDE "data/unknown/C3E158.asm"

.INCLUDE "data/unknown/C3E168.asm"

.INCLUDE "data/map/mushroomization_direction_remap_tables.asm"

.INCLUDE "data/unknown/C3E1D8.asm"

.INCLUDE "data/unknown/C3E1E0.asm"

.INCLUDE "data/unknown/C3E200.asm"

.INCLUDE "data/unknown/C3E208.asm"

.INCLUDE "data/unknown/C3E210.asm"

.INCLUDE "data/unknown/C3E218.asm"

.INCLUDE "data/unknown/C3E220.asm"

.INCLUDE "data/unknown/C3E228.asm"

.INCLUDE "data/unknown/C3E230.asm"

.INCLUDE "data/unknown/C3E240.asm"

.INCLUDE "data/text/window_configuration_table.asm"

.INCLUDE "data/unknown/C3E3F8.asm"

.INCLUDE "data/unknown/C3E40E.asm"

.INCLUDE "data/text/blinking_triangle_tiles.asm"

.INCLUDE "data/unknown/C3E41C.asm"

.INCLUDE "data/unknown/C3E41C_pointer_table.asm"

.INCLUDE "data/unknown/C3E44C.asm"

.INCLUDE "data/unknown/C3E84E.asm"

.INCLUDE "data/debug/menu_text.asm"

.INCLUDE "data/debug/on_text.asm"

.INCLUDE "data/debug/off_text.asm"

.INCLUDE "misc/get_character_item.asm"

.INCLUDE "misc/check_item_equipped.asm"

.INCLUDE "unknown/C3/C3E9F7.asm"

.INCLUDE "unknown/C3/C3EAD0.asm"

.INCLUDE "unknown/C3/C3EB1C.asm"

.INCLUDE "unknown/C3/C3EBCA.asm"

.INCLUDE "unknown/C3/C3EC1F.asm"

.INCLUDE "unknown/C3/C3EC8B.asm"

.INCLUDE "unknown/C3/C3ED2C.asm"

.INCLUDE "unknown/C3/C3ED98.asm"

.INCLUDE "unknown/C3/C3EE14.asm"

.INCLUDE "unknown/C3/C3EE4D.asm"

.INCLUDE "unknown/C3/C3EE7A.asm"

.INCLUDE "misc/null/C3EF23.asm"

.INCLUDE "data/unknown/C3EF26.asm"

.INCLUDE "data/psi_categories.asm"

.INCLUDE "data/unknown/C3F0B0.asm"

.INCLUDE "data/psi_suffixes.asm"

.INCLUDE "data/pp_cost_text.asm"

.INCLUDE "data/psi_target_text.asm"

.INCLUDE "unknown/C3/C3F1EC.asm"

.INCLUDE "data/unknown/C3F2B1.asm"

.INCLUDE "unknown/EF/EF027D.asm"

.INCLUDE "unknown/EF/EF02C4.asm"

.INCLUDE "unknown/EF/EF031E.asm"

.INCLUDE "data/playable_character_graphics_table.asm"

.INCLUDE "unknown/C3/C3F5F9.asm"

.INCLUDE "unknown/C3/C3F67D.asm"

.INCLUDE "unknown/C3/C3F705.asm"

.INCLUDE "unknown/C3/C3F7FB.asm"

.INCLUDE "data/unknown/C3F819.asm"

.INCLUDE "data/unknown/C3F871.asm"

.INCLUDE "data/unknown/C3F8B1.asm"

.INCLUDE "data/unknown/C3F8F1.asm"

.INCLUDE "data/unknown/C3F951.asm"

.INCLUDE "unknown/C3/C3F981.asm"

.INCLUDE "unknown/C3/C3FAC9.asm"

.INCLUDE "unknown/C3/C3FB09.asm"

.INCLUDE "data/unknown/C3FB1F.asm"

.INCLUDE "data/text/name_registry_request_string.asm"

.INCLUDE "data/unknown/C3FB45.asm"

.INCLUDE "data/unknown/C3FC49.asm"

.INCLUDE "data/unknown/C3FD2D.asm"

.INCLUDE "data/file_select_summary_party_sprite_config.asm"

.INCLUDE "data/attract_mode_text_pointers.asm"

.INCLUDE "data/unused_for_sale_sign_sprite_table.asm"

.INCLUDE "system/antipiracy/final_battle_antipiracy_check.asm"

.INCLUDE "data/antipiracy_checksum_2.asm"
