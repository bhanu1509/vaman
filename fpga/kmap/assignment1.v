
module helloworldfpga(


input  wire X,
input  wire Y,
input  wire Z,

output wire a,
output wire b,
output wire c,
output wire d,
output wire e,
output wire f,
output wire g

);


reg A ;

always @(*)
begin

//assignment1
A=(((!Y)&(X))|(!Z));
  

//Display Decoder

a=(!(((Y)&(Z))|((Z)&!X)));
b=0;
c=0;
d=(!(((Y)&(Z))|((Z)&!X)));
e=(!(((Y)&(Z))|((Z)&!X)));
f=(!(((Y)&(Z))|((Z)&!X)));
g=1;

end
endmodule
//end of the module
