// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/Not.tst

load OneToTwoDecoder.hdl,
output-file OneToTwoDecoder.out,
compare-to OneToTwoDecoder.cmp,
output-list a%B3.1.3 outA%B3.1.3 notA%B3.1.3;

set a 0,
eval,
output;

set a 1,
eval,
output;
