LUI $1,200;从内存中调2个数相加
LW $0,0($1);
LW $2,1($1);
ADD $0,$0,$2;
DW 200,4;
DW 201,11;