module MUX4x1(input1,input2,input3,input4,res,s);

input input1,input2,input3,input4;
input [1:0]s;

output res;

wire w_s1,w_s0;
wire w1, w2, w3;


not n1(w_s1,s[1]);
not n2(w_s0,s[0]);

and a1(w1,input1,w_s1,w_s0);
and a2(w2,input2,w_s1,s[0]);
and a3(w3,input3,s[1],w_s0);
and a4(w4,input4,s[1],s[0]);

or a5(res,w1,w2,w3);

endmodule