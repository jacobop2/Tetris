module final_project_background_7_rom (
	input logic clock,
	input logic [17:0] address,
	output logic [3:0] q
);

logic [3:0] memory [0:172799] /* synthesis ram_init_file = "./final_project_background_7/final_project_background_7.COE" */;

always_ff @ (posedge clock) begin
	q <= memory[address];
end

endmodule
