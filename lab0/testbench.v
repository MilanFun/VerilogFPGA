`timescale 1 ns / 100 ps

module lab00_test(
    input wire clk,
    output wire clk1
);

assign clk1 = clk;

endmodule

module testbench();

    reg clk = 1'b0; /*Инициализация переменной равной 0 (вход в модуль)*/

    always begin
        #1 clk = ~clk; /* Логическое отрицание каждую 1 нс (0 -> 1, 1 -> 0) */
    end

    wire clk1; /*выход*/

    lab00_test lab00_test(.clk(clk), .clk1(clk1)); /*Тестируемый модуль*/

    initial begin
        $dumpvars; /*Сигналы*/
        $display("Test started..."); /*Вывод строки*/
        #10 $finish; /*Завершить через 10 нс*/
    end

endmodule