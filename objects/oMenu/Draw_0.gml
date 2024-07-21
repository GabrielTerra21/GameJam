
// Desenha o menu na cena com os parametros ae, tem q usar a versão "ext" pra poder setar mais parametros
draw_sprite_ext(sprite_index,image_index, x, y, w/sprite_width, h/sprite_height, 0, c_white, 1);

// Desenha as opções do menu
draw_set_font(global.font1);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0 ; i < menu_size ; i++)
	{
		var current_color = c_white;
		if pos == i {current_color = c_green};
		draw_text_color(x + txt_border, y + txt_border + txt_spacing * i, option[i], current_color, current_color, current_color, current_color, 1);
	}


