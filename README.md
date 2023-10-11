# ebsrc

This is currently a disassembly of the game known as Earthbound in the west and Mother 2 in the east. Hopefully, in the future, it will be able to evolve into a proper decompilation. Contributions are welcome.

## Requirements

- [ebbinex](https://github.com/Herringway/ebbinex)
- [ca65 v2.19](https://github.com/cc65/cc65)
- [spcasm v1.1.0](https://github.com/kleinesfilmroellchen/spcasm/) (or later)
- git (or some other way to acquire this source code)
- GNU make or compatible

## How to build

1. Clone the repository - `git clone https://github.com/Herringway/ebsrc.git`
2. From the source directory, enter the following commands for the ROM you wish to produce:

#### US Retail

	ebbinex earthbound.yml "path to retail ROM"
	make

#### US Localization Prototype (1995-03-27)

	ebbinex earthbound-1995-03-27.yml "path to prototype ROM"
	make proto19950327

#### Mother 2

	ebbinex mother2.yml "path to mother 2 ROM"
	make mother2

## TODO

- [ ] Extract and build assets with a better format.
- [ ] Document all the things!
- [ ] Determine and locate a copy of the version of VUCC used for the original game.
	- [ ] Alternatively, attempt to recreate that version using the version of VUCC released with the Virtual Boy SDK
- [ ] Decompile C code.
