module SRFF(
input Q,
input R,
input S,

output  wire blinkled,
output a,
output b,
output c,
output d,
output e,
output f,
output g,
);

 wire clk;

    qlal4s3b_cell_macro u_qlal4s3b_cell_macro (
        .Sys_Clk0 (clk),
    );

reg[26:0] delay;
reg       led;

always@(posedge clk)
begin
delay = delay+1;
if(delay>20000000)
begin
delay = 27'b0;
led = !led;
end
end


assign blinkled = led;

assign a = ((!R&&S) || (Q&&!R));
assign b = 0;
assign c = 0;
assign d = ((!R&&S) || (Q&&!R));
assign e = ((!R&&S) || (Q&&!R));
assign f = ((!R&&S) || (Q&&!R));
assign g = 1;



endmodule

