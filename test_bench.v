`timescale 1ns/1ns

module test_bench;

    reg a;
    reg b;
    wire z;

    top u_dut (
        .a(a),
        .b(b),
        .z(z)
    );

    initial begin
        // ==================== CASE 1 ====================
        $display("--------------------------------");
        $display("==== Case 1: a = 0, b = 0   ====");
        $display("--------------------------------");
        a = 0;
        b = 0;
        #100;
        if( z === 0 ) begin
            $display("--------------------------------");
            $display("t=%10d PASS: a=%b b=%b z=%b", $time, a,b,z);
            $display("--------------------------------");
        end else begin
            $display("--------------------------------");
            $display("t=%10d FAIL: a=%b b=%b z=%b, Expect z = 0", $time, a,b,z);
            $display("--------------------------------");
            #100;
            $finish;
        end
        #100;

        // ==================== CASE 2 ====================
        $display("--------------------------------");
        $display("==== Case 2: a = 0, b = 1   ====");
        $display("--------------------------------");
        a = 0;
        b = 1;
        #1;
        if( z === 1 ) begin
            $display("--------------------------------");
            $display("t=%10d PASS: a=%b b=%b z=%b", $time, a,b,z);
            $display("--------------------------------");
        end else begin
            $display("--------------------------------");
            $display("t=%10d FAIL: a=%b b=%b z=%b, Expect z = 1", $time, a,b,z);
            $display("--------------------------------");
            #100;
            $finish;
        end
        #100;

        // ==================== CASE 3 ====================
        $display("--------------------------------");
        $display("==== Case 3: a = 1, b = 0   ====");
        $display("--------------------------------");
        a = 1;
        b = 0;
        #1;
        if( z === 1 ) begin
            $display("--------------------------------");
            $display("t=%10d PASS: a=%b b=%b z=%b", $time, a,b,z);
            $display("--------------------------------");
        end else begin
            $display("--------------------------------");
            $display("t=%10d FAIL: a=%b b=%b z=%b, Expect z = 1", $time, a,b,z);
            $display("--------------------------------");
            #100;
            $finish;
        end
        #100;

        // ==================== CASE 4 ====================
        $display("--------------------------------");
        $display("==== Case 4: a = 1, b = 1   ====");
        $display("--------------------------------");
        a = 1;
        b = 1;
        #1;
        if( z === 0 ) begin
            $display("--------------------------------");
            $display("t=%10d PASS: a=%b b=%b z=%b", $time, a,b,z);
            $display("--------------------------------");
        end else begin
            $display("--------------------------------");
            $display("t=%10d FAIL: a=%b b=%b z=%b, Expect z = 0", $time, a,b,z);
            $display("--------------------------------");
            #100;
            $finish;
        end

        #100;
        $finish;
    end

endmodule