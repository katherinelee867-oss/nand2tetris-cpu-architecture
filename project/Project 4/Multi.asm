
@R0
D=M
@n
M=D // n = R0
@product
M=0 // product = 0
@R1
D=M
@i
M=D // i = R1

(LOOP)
    @i
    D=M
    @STOP
    D;JLE //if i<=0 goto STOP

    @product
    D=M
    @n
    D=D+M
    @product
    M=D //product = product + n
    @i
    M=M-1
    @LOOP
    0;JMP

(STOP)
@product
D=M
@R2
M=D // R2 = product

(END)
@END
0;JMP
