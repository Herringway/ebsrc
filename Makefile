all: deps earthbound.sfc

CA65FLAGS = -t none --cpu 65816 --bin-include-dir src --include-dir src

USSRCDIR = src/bankconfig/US

USSRCS = $(wildcard $(USSRCDIR)/*.asm)

%.dep: %.asm
	ca65 $(CA65FLAGS) --create-dep "$@" "$<"

include $(wildcard $(USSRCDIR)/*.dep)

earthbound.sfc: $(patsubst %.asm, %.o, $(USSRCS))
	ld65 -o $@ -C snes.cfg $^

deps: $(USSRCS:.asm=.dep)

extract:
	dub run ebbinex -- "donor.sfc" "src/bin"

%.o: %.asm
	ca65 $(CA65FLAGS) -o "$@" "$<"

%.bin: %.uncompressed
	inhal -n $< $@
