// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Mon Oct 13 12:51:51 2014"

module clk_delay(
	M1,
	T2,
	clk,
	reset,
	in_intr,
	Tw1,
	Tw2,
	hold_clk_delay,
	T2_en
);


input wire	M1;
input wire	T2;
input wire	clk;
input wire	reset;
input wire	in_intr;
output wire	Tw1;
output wire	Tw2;
output wire	hold_clk_delay;
output wire	T2_en;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_3;
reg	SYNTHESIZED_WIRE_8;
reg	SYNTHESIZED_WIRE_9;

assign	Tw1 = SYNTHESIZED_WIRE_8;
assign	Tw2 = SYNTHESIZED_WIRE_9;
assign	SYNTHESIZED_WIRE_7 = 1;




always@(posedge clk or negedge SYNTHESIZED_WIRE_0 or negedge SYNTHESIZED_WIRE_7)
begin
if (!SYNTHESIZED_WIRE_0)
	begin
	SYNTHESIZED_WIRE_8 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_7)
	begin
	SYNTHESIZED_WIRE_8 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_8 <= SYNTHESIZED_WIRE_6;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_3 or negedge SYNTHESIZED_WIRE_7)
begin
if (!SYNTHESIZED_WIRE_3)
	begin
	SYNTHESIZED_WIRE_9 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_7)
	begin
	SYNTHESIZED_WIRE_9 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_9 <= SYNTHESIZED_WIRE_8;
	end
end

assign	SYNTHESIZED_WIRE_3 =  ~reset;

assign	SYNTHESIZED_WIRE_6 = M1 & T2 & in_intr;

assign	SYNTHESIZED_WIRE_0 = ~(SYNTHESIZED_WIRE_9 | reset);

assign	hold_clk_delay = SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_6;


assign	T2_en = ~(SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_8);


endmodule
