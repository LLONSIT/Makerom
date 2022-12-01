# Makerom
The goal of this is to decompile makerom using the irix binary.

# Clarifications

- Why the Irix binary?

Because the irix binary provides a mips assembler and being of this architecture it can be easily disassembled in order to match its functions

- Are there implementations?

Yes and no, on the one hand it could be that there are certain reimplementations in functions that only the IDO compiler can accept, and that therefore are ported to the gcc syntax, that is why there is a `NON_MATCHING` conditional

- With this I can build the makerom binary?

Not for now, but I will soon devise a build system in which you can create a makerom binary, which will not be identical to the original. Because I don't know what irix libc port Nintendo used to link the Makerom binary. You won't be able to run it to Qemu Irix either unless you decompile the main function which has a weird conditional that detects the SGI version

And just to clarify the Makefile that is now is only for testing the syntax of the files with gcc

- What is LibOBJ?

LibOBJC (as I call it), is a weird library that Nintendo used to link the Makerom binary.


# Info 
- Makefile only to check the gcc syntax

- Chunk1 (0 - 100 - 200 functions)  
- Chunk2 ( 200 - 300 functions)
- Chunk3 (300 - 400 functions)
- Chunk4 (400 - 500 functions)
- libOBJ (235 functions)

# Progress 

- Main 4/5 (Function like createElSpec etc )
- functions 3/175
- libOBJ 6/235


