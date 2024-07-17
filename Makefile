all: earthbound

.SUFFIXES:
%: %,v
%: RCS/%,v
%: RCS/%
%: s.%
%: SCCS/s.%

SRCDIR = src/bankconfig
BUILDDIR = build

CA65FLAGS = -t none --cpu 65816 --bin-include-dir src --include-dir src --include-dir include --bin-include-dir $(BUILDDIR)
LD65FLAGS = -C snes.cfg

JPID = JP
USID = US
USPROTOID = US19950327

.PHONY: earthbound proto19950327 mother2 depsjp depsusa depsusaproto extract extractproto extractjp

earthbound: depsusa build/earthbound.sfc
proto19950327: depsusaproto build/earthbound-1995-03-27.sfc
mother2: depsjp build/mother2.sfc

ifeq ($(MAKECMDGOALS),mother2)
CA65FLAGS += -D JPN
include $(wildcard $(BUILDDIR)/$(JPID)/*.dep)
else ifeq ($(MAKECMDGOALS),proto19950327)
CA65FLAGS += -D USA -D PROTOTYPE19950327
include $(wildcard $(BUILDDIR)/$(USPROTOID)/*.dep)
else ifneq ($(if $(MAKECMDGOALS),$(filter all earthbound,$(MAKECMDGOALS)),itsthedefaulttarget),)
# The above ifneq condition will trigger if either
# - MAKECMDGOALS is empty (there is no specified make target, so build the default target), or
# - the target is all/earthbound
CA65FLAGS += -D USA
include $(wildcard $(BUILDDIR)/$(USID)/*.dep)
endif

# windows/posix mkdir differences, yay!
ifeq ($(shell echo "check_quotes"),"check_quotes")
   mkdir = mkdir $(subst /,\,$(1)) > nul 2>&1 || (exit 0)
else
   mkdir = mkdir -p $(1)
endif

JPSRCS = $(wildcard $(SRCDIR)/$(JPID)/*.asm)
JPOBJS = $(subst $(SRCDIR), $(BUILDDIR), $(patsubst %.asm, %.o, $(JPSRCS)))
USSRCS = $(wildcard $(SRCDIR)/$(USID)/*.asm)
USOBJS = $(subst $(SRCDIR), $(BUILDDIR), $(patsubst %.asm, %.o, $(USSRCS)))
USPROTOSRCS = $(wildcard $(SRCDIR)/$(USPROTOID)/*.asm)
USPROTOOBJS = $(subst $(SRCDIR), $(BUILDDIR), $(patsubst %.asm, %.o, $(USPROTOSRCS)))

$(BUILDDIR)/%.dep: $(SRCDIR)/%.asm
	@$(call mkdir, $(@D))
	ca65 $(CA65FLAGS) --listing "$(strip $(subst $(SRCDIR), $(BUILDDIR), $(patsubst %.dep,%.lst,$@)))" --create-dep "$(strip $(subst $(SRCDIR), $(BUILDDIR), $@))" -o "$(patsubst %.dep,%.o,$@)" "$<"

build/mother2.sfc: $(JPOBJS)
	ld65 $(LD65FLAGS) --mapfile "$(patsubst %.sfc,%.map,$@)" -o "$@" $^

build/earthbound.sfc: $(USOBJS)
	ld65 $(LD65FLAGS) --mapfile "$(patsubst %.sfc,%.map,$@)" -o "$@" $^

build/earthbound-1995-03-27.sfc: $(USPROTOOBJS)
	ld65 $(LD65FLAGS) --mapfile "$(patsubst %.sfc,%.map,$@)" -o "$@" $^

build/mother2.dbg: $(JPOBJS)
	ld65 $(LD65FLAGS) --dbgfile "$@" $^

build/earthbound.dbg: $(USOBJS)
	ld65 $(LD65FLAGS) --dbgfile "$@" $^

build/earthbound-1995-03-27.dbg: $(USPROTOOBJS)
	ld65 $(LD65FLAGS) --dbgfile "$@" $^

# ca65 requires all bin files to be present for generating .dep files, so make sure they're present first
depsjp: $(BUILDDIR)/main.spc700.bin $(subst $(SRCDIR), $(BUILDDIR), $(JPSRCS:.asm=.dep))
depsusa: $(BUILDDIR)/main.spc700.bin $(subst $(SRCDIR), $(BUILDDIR), $(USSRCS:.asm=.dep))
depsusaproto: $(BUILDDIR)/main.spc700.bin $(subst $(SRCDIR), $(BUILDDIR), $(USPROTOSRCS:.asm=.dep))

extract:
	ebbinex "earthbound.yml" "donor.sfc"

extractproto:
	ebbinex "earthbound-1995-03-27.yml" "donor-1995-03-27.sfc"

extractjp:
	ebbinex "mother2.yml" "donorm2.sfc"

$(BUILDDIR)/%.o: $(SRCDIR)/%.asm
	@$(call mkdir, $(@D))
	ca65 $(CA65FLAGS) --listing "$(strip $(subst $(SRCDIR), $(BUILDDIR), $(patsubst %.o,%.lst,$@)))" -o "$@" "$<"

$(BUILDDIR)/%.spc700.bin: src/spc700/%.spc700.s
	spcasm -f plain "$<" "$@"

%.bin: %.uncompressed
	inhal -n $< $@
