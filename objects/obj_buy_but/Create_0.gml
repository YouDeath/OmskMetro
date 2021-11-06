function draw_buy_but(){
	draw_set_halign(fa_right)
	draw_set_valign(fa_bottom)
	if can_buy draw_text_color(x, y, "купить", c_can_buy, c_can_buy, c_can_buy, c_can_buy, par_id.alp)
	else draw_text_color(x, y, "купить", c_cant_buy, c_cant_buy, c_cant_buy, c_cant_buy, par_id.alp)
}

scl = obj_camera.scl
image_xscale = scl
image_yscale = scl
c_can_buy = make_color_rgb(98, 204, 103)
c_cant_buy = make_color_rgb(241, 78, 86)
can_buy = false
par_id = noone