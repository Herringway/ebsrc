all: earthbound

earthbound: depsusa earthbound.sfc
proto19950327: depsusaproto earthbound-1995-03-27.sfc
mother2: depsjp mother2.sfc

CA65FLAGS = -t none --cpu 65816 --bin-include-dir src --include-dir src

JPSRCDIR = src/bankconfig/JP
USSRCDIR = src/bankconfig/US
USPROTOSRCDIR = src/bankconfig/US19950327

JPSRCS = $(wildcard $(JPSRCDIR)/*.asm)
USSRCS = $(wildcard $(USSRCDIR)/*.asm)
USPROTOSRCS = $(wildcard $(USPROTOSRCDIR)/*.asm)

%.dep: %.asm
	ca65 $(CA65FLAGS) --create-dep "$@" "$<"

include $(wildcard $(JPSRCDIR)/*.dep)
include $(wildcard $(USSRCDIR)/*.dep)
include $(wildcard $(USPROTOSRCDIR)/*.dep)

mother2.sfc: $(patsubst %.asm, %.o, $(JPSRCS))
	ld65 -o $@ -C snes.cfg $^

earthbound.sfc: $(patsubst %.asm, %.o, $(USSRCS))
	ld65 -o $@ -C snes.cfg $^

earthbound-1995-03-27.sfc: $(patsubst %.asm, %.o, $(USPROTOSRCS))
	ld65 -o $@ -C snes.cfg $^

depsjp: $(JPSRCS:.asm=.dep)
depsusa: $(USSRCS:.asm=.dep)
depsusaproto: $(USPROTOSRCS:.asm=.dep)

extract:
	ebbinex "earthbound.yml" "donor.sfc"

extractproto:
	ebbinex "earthbound-1995-03-27.yml" "donor-1995-03-27.sfc"

extractjp:
	ebbinex "mother2.yml" "donorm2.sfc"

%.o: %.asm
	ca65 $(CA65FLAGS) -o "$@" "$<"

%.bin: %.uncompressed
	inhal -n $< $@
