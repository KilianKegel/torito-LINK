# torito-LINK

*Torito LINK* -- Microsoft (R) LINK.EXE hook For **GNU ld**

## Goal
The goal Of *torito LINK* Is To  facilitate the devlopment Of Standard C programs For Linux x86-64 .ELF target
Using the [*Torito C Library*](https://github.com/KilianKegel/torito-C-Library#torito-c-library) native Visual 
Studio 2019 tool chain.

Since Microsoft LINK.EXE supports multiple executable file formats (PE COFF .EXE And .EFI)
it Is currently unable to link Linux x86-64 .ELF binaries out of the Microsoft COFF .OBJ modules.

To work around this limitation, *torito LINK* Is inserted into the tool chain's search path,
hooks invokations To the original Microsoft LINK.EXE And Finally translates/replaces
LINK.EXE parameters to the equivalent **GNU ld** parameters -- when linking for `/SUBSYSTEM: POSIX`.

This requires that the build machine Is installed With WSL2 (Windows Subsystem Linux) And **GNU binutils 2.36**.


## Revision history
### 20201111
* alpha v0.5