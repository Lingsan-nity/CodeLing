`timescale 1ns/1ns

module test_bench;

    reg [3:0] a;
    reg  [3:0] b;

    initial begin
        // ==================== CASE 1 ====================
        a = 4'b1001;
        b = 4'b0011;
        $display("Bitwise XOR:  a=%b,b=%b ->result=%b", a,b,a ^ b);
        $display("Bitwise And:  a=%b,b=%b ->result=%b" ,a,b,a & b);
        $display("Bitwise Or:   a=%b,b=%b -> result=%b" ,a,b,a | b);
        $display("Reduction And: a=%b ->result=%b",&a);
        $display("Reduction XOr: b=%b -> result=%b", ^a);
    end

endmodule
