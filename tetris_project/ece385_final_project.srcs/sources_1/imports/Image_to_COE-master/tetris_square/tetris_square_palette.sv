module tetris_square_palette (
	input logic [3:0] index,
	output logic [3:0] red, green, blue
);

localparam [0:15][11:0] palette = {
	{4'hD, 4'hA, 4'h1},
	{4'hF, 4'hA, 4'h4},
	{4'hC, 4'h9, 4'h1},
	{4'hD, 4'hA, 4'h2},
	{4'hE, 4'hA, 4'h3},
	{4'hE, 4'hA, 4'h3},
	{4'hD, 4'hA, 4'h1},
	{4'hD, 4'h9, 4'h1},
	{4'hE, 4'hA, 4'h3},
	{4'hF, 4'hA, 4'h4},
	{4'hD, 4'hA, 4'h2},
	{4'hC, 4'h9, 4'h1},
	{4'hD, 4'hA, 4'h1},
	{4'hC, 4'h9, 4'h1},
	{4'hF, 4'hA, 4'h4},
	{4'hD, 4'hA, 4'h2}
};

assign {red, green, blue} = palette[index];

endmodule