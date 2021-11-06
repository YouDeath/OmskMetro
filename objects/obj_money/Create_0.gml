function draw_money(d_x, d_y, money, col, delta, alp){
	if (delta) var str = string(money)
	else var str = money_to_str(money)
	
	var n = (string_length(str)+2)*5
	draw_sprite_ext(spr_money, 2, d_x, d_y, scl, scl, 0, noone, alp)
	draw_sprite_ext(spr_money, 1, d_x-scl, d_y, scl*n, scl, 0, noone, alp)
	draw_sprite_ext(spr_money, 0, d_x-(n+1)*scl, d_y, scl, scl, 0, noone, alp)
	draw_set_font(global.money_font)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text_color(d_x-(n+1)/2*scl, d_y+(12/2)*scl, str, col, col, col, col, alp)
}

function money_to_str(how){
	if how >= 1000000000{
		how = how div 100000000
		return "$"+string(how div 10)+","+string(how mod 10)+" млрд"
	}
	if how >= 1000000{
		how = how div 100000
		return "$"+string(how div 10)+","+string(how mod 10)+" м"
	}
	if how >= 1000{
		how = how div 100
		return "$"+string(how div 10)+","+string(how mod 10)+" к"
	}
	return "$"+string(how)
}

function delta_money(how){
	var delta = ds_map_create()
	ds_map_add(delta, "how", how)
	ds_map_add(delta, "time", o_s)
	ds_map_add(delta, "s_y", obj_camera.y+40*scl+15*scl*ds_list_size(deltas))
	ds_list_add(deltas, delta)
	ds_list_mark_as_map(deltas, ds_list_size(deltas))
}

function delta_money_analyse(d_x, d_y){
	for (var i = 0; i < ds_list_size(deltas); i++){
		var delta = ds_list_find_value(deltas, i)
		ds_map_set(delta, "time", ds_map_find_value(delta, "time")-1)
		var val = ds_map_find_value(delta, "how")
		var time = ds_map_find_value(delta, "time")
		var s_x = d_x
		var s_y = ds_map_find_value(delta, "s_y")
		var alp = 1
		if time < (o_s/3){
			s_y += (obj_camera.y+5*scl-s_y)/32
			ds_map_set(delta, "s_y", s_y)
			alp = time/(o_s/3)
		}
		else{
			s_y += (obj_camera.y+20*scl+15*scl*i-s_y)/32
			ds_map_set(delta, "s_y", s_y)
		}
		if time > (2*o_s/3){
			alp = (o_s-time)/(o_s/3)
		}
		var time = ds_map_find_value(delta, "time")
		if val > 0 draw_money(s_x, s_y, "+"+money_to_str(val), c_text_add, true, alp)
		else draw_money(s_x, s_y, "-"+money_to_str(abs(val)), c_text_lose, true, alp)
		if time == 0{
			ds_list_delete(deltas, i)
			money+=val
			with obj_interface_option update_buy()
		}
	}
}

o_s = 100

deltas = ds_list_create()
money = 11000
scl = obj_camera.scl
c_text = make_color_rgb(225, 225, 225)
c_text_add = make_color_rgb(55, 170, 61)
c_text_lose = make_color_rgb(232, 69, 69)