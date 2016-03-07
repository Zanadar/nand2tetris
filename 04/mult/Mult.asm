// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// n = r1 (How many times to multiply)
// i = 1 (Where to start)
// result = r0 (initiliaze result to R0)

//  (loop)
//   if i > n GOTO STOP
//   result = result + r0
//   i = i + 1
//    goto LOOP
//  (STOP)
//  r2 = result

@R2
M=0 //Initlialize the storage to 2
@R0
D=M
@result
M=D //result = R0
@i
M=1 // i = 1
@R1
D=M
@n
M=D // n=R1

(LOOP)
@i
D=M
@n
D=D-M // Computer subtract i from n
@STOP
D;JEQ // if the above is greater than zero i is more than n, so stop

@result
D=M
@R0
D=D+M // set result to result+R0
@result
M=D
@i
M=M+1
@LOOP
0;JMP // loop

(STOP)
@result
D=M
@R2
M=D // R[2] = result

(END)
@END
0;JMP

