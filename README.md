</p>
<p align="left">
    <a href="https://github.com/LLONSIT/Makerom" alt="Contributors">
        <img src="https://img.shields.io/badge/Remaining%20functions-32%2F36-green" /></a>
  
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





