module MUX2x1_B(input1,input2,s,out);

input input1,input2,s;
output out;

wire w1, w2, w3;
and gate1(w1, input1, s);
and gate2(w3, input2, w2); 
not gate3(w2, s); 
or gate4(out, w1,w3);

endmodule
