module dlatch_nand(
       input d,
       input c,
       output q,
       output nq
);

wire x,y;

nand n0(x,d,c);
nand n1(y,x,c);

nand n2(q,x,nq);
nand n3(nq,q,y);

endmodule

