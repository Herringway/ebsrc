# VUCC compiler notes

All notes in this document are from observations of the machine code generated for Earthbound/Mother 2 by the VUCC C compiler.

## Basic types

- Little-endian integers.
- 8-bit `char`, no encoding defined.
- 16-bit short, int.
- 32-bit long.
- No padding in structs
- No alignment
- Fixed point decimal, with 16-bit fraction (1/65536) followed by 16-bit integer.
- Two types of pointer: near (16-bit) and far (24-bit, with 8 bits of padding)

## Calling convention

The emulation and decimal flags are assumed to be cleared. Processor flags upon entry are undefined, but the carry, accumulator and index width flags will be cleared on exit.

The stack lives on the direct page, and grows upward, adjusted by the DP register by the callee both on call and return. Each frame generally consists of the following structure, starting from $00:
- Two virtual 8-bit registers
- Two virtual 16-bit registers
- Two virtual 32-bit registers
- Stack-allocated parameters for functions to be called
- Any stack variables that need an address (for example, C arrays passed to other functions)
- Other space, often for variables that can't be kept purely in registers (virtual or otherwise)

Frames are not guaranteed to be generated for each function.

Functions may be near or far.

The first 3 16-bit parameters are ALWAYS passed to the function via A, X and Y registers, in that order. 8-bit parameters are NOT subject to this rule. Return values are always returned by register, whether it be by the A register or the virtual registers of the calling function (How are >32-bit values returned? Need samples).

## Version differences

There are two known versions covered by this document. Earthbound used one version, Mother 2 used another. It is unclear which version is newer, so they will be referred to as version EB and version M2 after this point.

* Version M2 is generally more efficient with register allocation, typically producing smaller stack frames.
* Accessing fields of BSS-allocated structs tends to be more efficient on version EB than version M2, as version M2 is unable to combine the multiple ADC #x instructions.
* Promoting near pointers to far pointers on the stack seems to be signficantly less efficient in version EB
