
<p align="center">
    <a href="" alt="yacc">
        <img src="https://img.shields.io/badge/Yacc%20Functions-6%2F10-green" /></a>
    <a href="" alt="coff">
        <img src="https://img.shields.io/badge/Coff.c%20Functions-2%2F2-green" /></a>
    <a href="" alt="elspec">
        <img src="https://img.shields.io/badge/Elspec.c%20Functions-2%2F2-green" /></a>
    <a href="" alt="Main Makerom core">
        <img src="https://img.shields.io/badge/Makerom.c%20Functions-13%2F13-green" /></a>
    <a href="Makerom Segment Core">
        <img src="https://img.shields.io/badge/Segment.c%20Functions-10%2F10-green" alt="build status"></a>
     <a href="UNUSED">
        <img src="https://img.shields.io/badge/Unused%20Functions-1%2F2-green" alt="build status"></a>

</p>


# Makerom
The goal of this is to decompile makerom using the irix binary.

```diff
- WARNING! -

* The repository right now is a reimplementacion with the matched functions of makerom 

```

# Clarifications

- Why the Irix binary?

Because the irix binary provides a mips assembler and being of this architecture it can be easily disassembled in order to match its functions

- Are there implementations?

Yes and no, on the one hand it could be that there are certain reimplementations in functions that only the IDO compiler can accept, and that therefore are ported to the gcc syntax, that is why there is a `NON_MATCHING` conditional

- With this I can build the makerom binary?

Not for now, but I will soon devise a build system in which you can create a makerom binary, which will not be identical to the original. Because I don't know what irix libc port Nintendo used to link the Makerom binary. You won't be able to run it to Qemu Irix either unless you decompile the main function which has a weird conditional that detects the SGI version




# Info 

- Makefile only to check the gcc syntax

# Contributors

# Decomp.me anons

- Fluffy Kouprey (segment.c, makerom.c, elspec.c, coff.c, speclex and libOBJ)
- Cold Wasp (segment.c, makerom.c and speclex.c)

# In general

- Someone2639 (The magic python script!, final segment.c function)
- Tcmg2 (Final segment.c functions!)

# Special thanks

- Someon2639 (Without that magic script, the project would not have taken a 360° turn)

- Fluffy Kouprey (He was at the beginning of the project, he helped with all kinds of functions, without a doubt, without his help, the progress would not have been made.)




