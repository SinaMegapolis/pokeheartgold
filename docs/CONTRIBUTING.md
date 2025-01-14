# Contributing guide for Pokémon HeartGold

This repo contains binary code extracted from Pokémon - HeartGold Version (USA), disassembled into .s files.
The goal is to take the assembly code and turn them into readable C code that generates the same assembly instructions.

## Prerequisites

* Basic knowledge of ARMv5TE assembly.
* Basic knowledge of the C programming language.
* Be able to use GitHub version control.
* Have a clone of the repo set up on your computer per [INSTALL.md](INSTALL.md) instructions.
* An understanding of how compilers work (including common compiler flags).

## Important Repository files and directories when decompiling

* `asm/`: contains assembly code, waiting to be decompiled
* `src/`: contains decompiled code
* `include/`: contains header files for decompiled code
* `include/constants/`: has constant macros to make decompiled code more readable
* `main.lsf`: list of compiled files that will be linked into a ROM

## Matching-Decompiling ASM code into C code

Decompiling is the process of taking Assembly code and translating it into equivalent C code.
"Matching" Decompiling means that the resulting C code should compile into the same Assembly instructions as the Assembly code.
The general workflow is like this:

1. Choose a .s file from `asm/` to decompile (You can look at [known asm files](Known_Asm_files.md) if you're looking to decompile a specific file)
2. Make a .c file inside `src/`, and a header file for it inside `include/`
3. Add the new .c file to main.lsf
4. Match-decompile the .s file. Make sure each function you decompile matches the original assembly code (by running `make compare` in the root directory) before moving on to the next function.
5. Remove the .s file from main.lsf
6. Remove the .s file 
7. (Optional but recommended) Document the code, figure out what each function does, and rename them appropriately
8. Make sure your code adheres to the repository style guide
9. Open a pull request for your decompiled code

These documents explain different parts of the decompilation process in detail:
- [Code/Static Data Decompilation shown in an Example](Code_Decompilation.md)
- [Non-static Struct Decompilation](Struct_Decompilation.md)
- [How to figure out nonmatching code sections](How_to_see_nonmatching_code_sections.md)
- [Style guide](Style_Guide.md)