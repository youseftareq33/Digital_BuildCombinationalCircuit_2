module whole_system(a,b,invertA,invertB,c_in,input4,s,c_out,res);
input a,b,invertA,invertB,c_in,input4;
input [1:0]s;

output c_out,res;

wire w1,w2,w3,w4,w5;

MUX2x1_A(a,~a,invertA,w1);
MUX2x1_B(b,~b,invertB,w2);

pAnd(w3,w1,w2);
pOr(w4,w1,w2);

adder(w5,c_out,w1,w2,c_in);

MUX4x1(res,w3,w4,w5,input4,s);

endmodule