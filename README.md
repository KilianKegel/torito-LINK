# Torito-LINK

**Torito LINK** -- Microsoft (R) LINK.EXE hook For **GNU ld**

## Goal
The goal of **Torito LINK** is to  facilitate the devlopment of Standard C programs for Linux x86-64 .ELF target
using the [**Torito C Library**](https://github.com/KilianKegel/torito-C-Library#torito-c-library) native Visual 
Studio 2019 tool chain.

Since Microsoft LINK.EXE supports multiple executable file formats (PE COFF .EXE and .EFI)
it is currently unable to link Linux x86-64 .ELF binaries out of the Microsoft COFF .OBJ modules.

To work around this limitation, **Torito LINK** is inserted into the tool chain's search path,
hooks invokations to the original Microsoft LINK.EXE and finally translates/replaces
LINK.EXE parameters to the equivalent **GNU ld** parameters -- when linking for `/SUBSYSTEM:POSIX`.

This requires that the build machine Is installed With WSL2 (Windows Subsystem Linux) And **GNU binutils 2.36**.


## Revision history
### 20201118
* alpha v0.51
* fixed: unstability due To miscalculated buffer allocation

### 20201111
* alpha v0.5
