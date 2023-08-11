all: earthbound

.SUFFIXES:
%: %,v
%: RCS/%,v
%: RCS/%
%: s.%
%: SCCS/s.%

CA65FLAGS = -t none --cpu 65816 --bin-include-dir src --include-dir src
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
USSRCS = $(wildcard $(USSRCDIR)/*.asm)
USPROTOSRCS = $(wildcard $(USPROTOSRCDIR)/*.asm)

%.dep: %.asm
	ca65 $(CA65FLAGS) --create-dep "$@" "$<"


mother2.sfc: $(patsubst %.asm, %.o, $(JPSRCS))
	ld65 $(LD65FLAGS) --mapfile "mother2.map" -o "$@" $^

earthbound.sfc: $(patsubst %.asm, %.o, $(USSRCS))
	ld65 $(LD65FLAGS) --mapfile "earthbound.map" -o "$@" $^

earthbound-1995-03-27.sfc: $(patsubst %.asm, %.o, $(USPROTOSRCS))
	ld65 $(LD65FLAGS) --mapfile "earthbound-1995-03-27.map" -o "$@" $^

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
