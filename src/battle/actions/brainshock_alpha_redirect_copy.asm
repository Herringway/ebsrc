
REDIRECT_BTLACT_BRAINSHOCK_A_COPY: ;$C2A0A7
	REP #PROC_FLAGS::ACCUM8 | PROC_FLAGS::INDEX8 | PROC_FLAGS::CARRY
	JSL BTLACT_BRAINSHOCK_A
	RTL
