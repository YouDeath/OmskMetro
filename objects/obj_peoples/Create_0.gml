function draw_peoples(d_x, d_y){
	draw_set_halign(fa_left)
	draw_set_valign(fa_bottom)
	draw_set_font(global.time_font)
	draw_sprite_ext(spr_peoples, 0, d_x, d_y, scl, scl, 0, noone, 1)
	draw_text_color(d_x+11*scl,d_y,string(peoples), c_text, c_text, c_text, c_text, 1)
}

function add_peoples(){
	if how_add > 4{
		peoples+= round(ln(how_add)) 
		how_add-= round(ln(how_add)) 
	}
	else{
		peoples += 1
		how_add -= 1
	}
}

how_add = 0

c_text = make_color_rgb(225, 225, 225)
peoples = 1000
scl = obj_camera.scl