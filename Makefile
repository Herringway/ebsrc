all: earthbound

.SUFFIXES:
%: %,v
%: RCS/%,v
%: RCS/%
%: s.%
%: SCCS/s.%

CA65FLAGS = -t none --cpu 65816 --bin-include-dir src --include-dir src --include-dir include
LD65FLAGS = -C snes.cfg

.PHONY: earthbound proto19950327 mother2 depsjp depsusa depsusaproto extract extractproto extractjp

JPSRCDIR = src/bankconfig/JP
USSRCDIR = src/bankconfig/US
USPROTOSRCDIR = src/bankconfig/US19950327

earthbound: depsusa earthbound.sfc
proto19950327: depsusaproto earthbound-1995-03-27.sfc
mother2: depsjp mother2.sfc

ifeq ($(MAKECMDGOALS),mother2)
CA65FLAGS += -D JPN
include $(wildcard $(JPSRCDIR)/*.dep)
else ifeq ($(MAKECMDGOALS),proto19950327)
CA65FLAGS += -D USA -D PROTOTYPE19950327
include $(wildcard $(USPROTOSRCDIR)/*.dep)
else
CA65FLAGS += -D USA
include $(wildcard $(USSRCDIR)/*.dep)
endif


JPSRCS = $(wildcard $(JPSRCDIR)/*.asm)
JPOBJS = $(patsubst %.asm, %.o, $(JPSRCS))
USSRCS = $(wildcard $(USSRCDIR)/*.asm)
USOBJS = $(patsubst %.asm, %.o, $(USSRCS))
USPROTOSRCS = $(wildcard $(USPROTOSRCDIR)/*.asm)
USPROTOOBJS = $(patsubst %.asm, %.o, $(USPROTOSRCS))

%.dep: %.asm
	ca65 $(CA65FLAGS) --listing "$(patsubst %.dep,%.lst,$@)"  --create-dep "$@" "$<"


mother2.sfc: $(JPOBJS)
	ld65 $(LD65FLAGS) --mapfile "$(patsubst %.sfc,%.map,$@)" -o "$@" $^

earthbound.sfc: $(USOBJS)
	ld65 $(LD65FLAGS) --mapfile "$(patsubst %.sfc,%.map,$@)" -o "$@" $^

earthbound-1995-03-27.sfc: $(USPROTOOBJS)
	ld65 $(LD65FLAGS) --mapfile "$(patsubst %.sfc,%.map,$@)" -o "$@" $^

mother2.dbg: $(JPOBJS)
	ld65 $(LD65FLAGS) --dbgfile "$@" $^

earthbound.dbg: $(USOBJS)
	ld65 $(LD65FLAGS) --dbgfile "$@" $^

earthbound-1995-03-27.dbg: $(USPROTOOBJS)
	ld65 $(LD65FLAGS) --dbgfile "$@" $^

# ca65 requires all bin files to be present for generating .dep files, so make sure they're present first
depsjp: src/spc700/main.spc700.bin $(JPSRCS:.asm=.dep)
depsusa: src/spc700/main.spc700.bin $(USSRCS:.asm=.dep)
depsusaproto: src/spc700/main.spc700.bin $(USPROTOSRCS:.asm=.dep)

extract:
	ebbinex "earthbound.yml" "donor.sfc"

extractproto:
	ebbinex "earthbound-1995-03-27.yml" "donor-1995-03-27.sfc"

extractjp:
	ebbinex "mother2.yml" "donorm2.sfc"

%.o: %.asm
	ca65 $(CA65FLAGS) --listing "$(patsubst %.o,%.lst,$@)" -o "$@" "$<"

%.spc700.bin: %.spc700.s
	spcasm -f plain "$<" "$@"

%.bin: %.uncompressed
	inhal -n $< $@
