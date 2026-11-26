(LOOP)
    @SCREEN
    D=A
    @addr
    M=D // addr = SCREEN
    @KBD
    D=M
    @BLACK
    D;JGT //if KBD>0 goto BLACK

    @0
    D=A
    @color
    M=D // color = 0
    @DRAW
    0;JMP

    (BLACK)
    @color
    M=-1

    (DRAW)
    @color
    D=M
    @addr
    A=M //RAM[addr]=color
    M=D

    @addr
    D=M
    @1
    D=D+A
    @addr
    M=D //addr = addr+1

    @addr
    D=M //D = value stored in addr
    @KBD
    D=D-A // D = addr-KBD (KBD is the constant address 24576)
    @DRAW
    D;JLT
@LOOP
0;JMP
