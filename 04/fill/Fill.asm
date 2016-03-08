// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

(LOOP)
//initialize @write to 0
//Initliaze i = 0
//start to @SCREEN
//stop to end of @screen
@SCREEN
D=A // get the starting address of the screen
@addr
M=D // write that to @addr
@write
M=0 // initiliaze write to 0

//if Register[key] != 0, @write = -1 else @write = 0
@KBD
D=M //load keyboard register in memory
@keypressed
D;JNE // if @kbid != 0, set write t0 -1 else set write to 0
@DRAW // go into first row loop
0;JMP

(keypressed)
@write
M=-1

(DRAW)
@addr
D=M
@KBD
D=D-A
@LOOP
D;JEQ

@write
D=M
@addr
A=M // write draw to the current screenaddr
M=D

@addr
M=M+1
D=M

@DRAW // infinite loop, we hit this if we're done drawing
0;JMP
