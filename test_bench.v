`timescale 1ns/1ns

module test_bench;

    reg a;
    reg b;

    initial begin
        // ==================== CASE 1 ====================
        a = 4'b1001;
        b = 4'b0011;
        $display("Bitwise XOR:  a=%b,b=%b", a,b,a ^ b);
        $display("Bitwise And:  a=%b,b=%b" ,a,b,a & b);
        $display("Bitwise Or:   a=%b,b=%b" ,a,b,a | b);
        $display("Reduction And: a=%b,b=%b",&a);
        &display("Reduction XOr: b=%b", ^a);
    end

endmodule
