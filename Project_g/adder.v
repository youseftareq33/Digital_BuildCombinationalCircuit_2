module adder(input1,input2,c_in,sum,c_out);

input input1,input2,c_in;
output sum,c_out;

wire w0,w1,w2;

xor gate1(w0,input1,input2);
xor gate2(sum,w0,c_in);
and gate3(c1,w0,c_in);
and gate4(w2,input1,input2);
or gate5(c_out,w1,w2);

endmodule
