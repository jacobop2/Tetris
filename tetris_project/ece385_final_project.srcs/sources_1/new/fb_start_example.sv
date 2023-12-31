module fp_start_example (
	input logic vga_clk,
	input logic [9:0] DrawX, DrawY,
	input logic blank,
	input logic gameOver,
	input logic ShowEndScreen,
	
	output logic [3:0] red_start, green_start, blue_start
);

logic [13:0] rom_address;
logic [2:0] rom_q;

logic [3:0] palette_red, palette_green, palette_blue;

logic negedge_vga_clk;

// Tetris Logo
logic [13:0] rom_address_tetris_logo;
logic [3:0] rom_q_tetris_logo;
logic [3:0] palette_red_tl, palette_green_tl, palette_blue_tl;

// Any Key Sprite
logic [13:0] rom_address_any_key;
logic [3:0] rom_q_any_key;
logic [3:0] palette_red_ak, palette_green_ak, palette_blue_ak;

// Game Over Sprite
logic [13:0] rom_address_end_screen;
logic [3:0] rom_q_end_screen;
logic [3:0] palette_red_es, palette_green_es, palette_blue_es;

// read from ROM on negedge, set pixel on posedge
assign negedge_vga_clk = ~vga_clk;

// address into the rom = (x*xDim)/640 + ((y*yDim)/480) * xDim
// this will stretch out the sprite across the entire screen
assign rom_address = ((DrawX * 120) / 640) + (((DrawY * 80) / 480) * 120 );

assign rom_address_tetris_logo = ( ( ( DrawX - 81 ) * 120 ) / 480 ) + ( ( ( ( DrawY - 131 ) * 40 ) / 160 ) * 120 );

assign rom_address_any_key = DrawX - 230 + ( DrawY - 320 ) * 180;

assign rom_address_end_screen = ( ( ( DrawX - 201 )  * 120 ) / 240 ) + ( ( DrawY - 320 ) * 120 );

always_ff @ (posedge vga_clk) begin
	red_start <= 4'h0;
	green_start <= 4'h0;
	blue_start <= 4'h0;

	// if starting, draw start screen
	if ( ShowEndScreen == 1'b0 ) begin
		if ( ( 81 < DrawX && DrawX <= 560 && 131 <= DrawY && DrawY <= 290 ) && ( { palette_red_tl, palette_green_tl, palette_blue_tl } != 12'h0 ) && ( { palette_red_tl, palette_green_tl, palette_blue_tl } != 12'hDFF ) ) begin
			red_start <= palette_red_tl;
			green_start <= palette_green_tl;
			blue_start <= palette_blue_tl;
		end
		else if ( ( 231 < DrawX && DrawX < 410 && 320 <= DrawY && DrawY <= 420 ) ) begin
			red_start <= palette_red_ak;
			green_start <= palette_green_ak;
			blue_start <= palette_blue_ak;
		end
		else if (blank) begin
			red_start <= palette_red;
			green_start <= palette_green;
			blue_start <= palette_blue;
		end
	end

	// If game over
	else begin
		if ( ( 81 < DrawX && DrawX <= 560 && 131 <= DrawY && DrawY <= 290 ) && ( { palette_red_tl, palette_green_tl, palette_blue_tl } != 12'h0 ) && ( { palette_red_tl, palette_green_tl, palette_blue_tl } != 12'hDFF ) ) begin
			red_start <= palette_red_tl;
			green_start <= palette_green_tl;
			blue_start <= palette_blue_tl;
		end
		else if ( ( 201 < DrawX && DrawX <= 440 && 320 <= DrawY && DrawY < 410 ) && ( { palette_red_es, palette_green_es, palette_blue_es } != 12'h0 ) ) begin
			red_start <= palette_red_es;
			green_start <= palette_green_es;
			blue_start <= palette_blue_es;
		end
		else if (blank) begin
			red_start <= palette_red;
			green_start <= palette_green;
			blue_start <= palette_blue;
		end
	end
end

fp_start_rom fp_start_rom (
	.clka   (negedge_vga_clk),
	.addra (rom_address),
	.douta       (rom_q)
);

// Tetris logo sprite memory
tetris_logo tetris_logo_rom (
	.clka   (negedge_vga_clk),
	.addra (rom_address_tetris_logo),
	.douta       (rom_q_tetris_logo)
);

// Any key sprite memory
any_key_rom any_key_rom (
	.clka   (negedge_vga_clk),
	.addra (rom_address_any_key),
	.douta       (rom_q_any_key)
);

// End Screen sprite memory
end_screen_rom end_screen_rom (
	.clka   (negedge_vga_clk),
	.addra (rom_address_end_screen),
	.douta       (rom_q_end_screen)
);

fp_start_palette fp_start_palette (
	.index (rom_q),
	.red   (palette_red),
	.green (palette_green),
	.blue  (palette_blue)
);

tetris_logo_palette tetris_logo_palette (
	.index (rom_q_tetris_logo),
	.red   (palette_red_tl),
	.green (palette_green_tl),
	.blue  (palette_blue_tl)
);

any_key_sprite_palette any_key_palette (
	.index (rom_q_any_key),
	.red   (palette_red_ak),
	.green (palette_green_ak),
	.blue  (palette_blue_ak)
);

end_screen_palette end_screen_palette (
	.index (rom_q_end_screen),
	.red   (palette_red_es),
	.green (palette_green_es),
	.blue  (palette_blue_es)
);

endmodule

