`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:06:22 11/05/2016 
// Design Name: 
// Module Name:    Program_Memory 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Program_Memory #(parameter AB = 11, parameter DB = 16)(
    input [AB-1:0] Addr,
	 input clk,
    output reg [DB-1:0] Data
    );

//----------------------------------Conectores-----------------------------------//
reg [DB-1:0] Mem[0:100]; //2048 palabras de 16 bits
integer i;
//------------------------------------Logica-------------------------------------//

//Para simulacion
initial
	begin
		//Cargamos datos de prueba;
		Mem[0]= 'b0000000000000000;
		Mem[1]= 'b0000100000000001;
		Mem[2]= 'b0000000000000000; //HALT EN EL MEDIO PARA TESTEAR
		Mem[3]= 'b0001000000000010;
		Mem[4]= 'b0000000000000000; //HALT EN EL MEDIO PARA TESTEAR
		Mem[5]= 'b0001100000000011;
		Mem[6]= 'b0000000000000000; //HALT EN EL MEDIO PARA TESTEAR
		Mem[7]= 'b0010000000000100;
		Mem[8]= 'b0000000000000000; //HALT EN EL MEDIO PARA TESTEAR
		Mem[9]= 'b0010100000000101;
		Mem[10]= 'b0000000000000000; //HALT EN EL MEDIO PARA TESTEAR
		Mem[11]= 'b0011000000000110;
		Mem[12]= 'b0000000000000000; //HALT EN EL MEDIO PARA TESTEAR
		Mem[13]= 'b0011100000000111;
		Mem[14]= 'b0000000000000000; //HALT EN EL MEDIO PARA TESTEAR
		Mem[15]= 'b0000100000000001;//Instruccion de m�s despues del halt que no deberia hacer nada
	end

always @(posedge clk)
begin
	/*assign*/ Data [DB-1:0] = Mem[Addr];
end
endmodule
