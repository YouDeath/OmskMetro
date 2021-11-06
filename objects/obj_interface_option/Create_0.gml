function draw_option(alp){
	draw_sprite_ext(spr_event_back, pos, x, y, scl, scl, 0, noone, alp)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_text_color(x-20*scl,y-16*scl,title,c_text,c_text,c_text,c_text,alp)
	draw_sprite_ext(spr_events_imgs, icon_num, x-14*scl, y, scl, scl, 0, noone, alp)
	draw_text_color(x-1*scl,y-7*scl,obj_time.time_to_str(event_time),c_text,c_text,c_text,c_text,alp)
	draw_text_color(x-1*scl,y+1*scl,obj_money.money_to_str(event_price),c_text,c_text,c_text,c_text,alp)
}

function init_but(){
	but_id = instance_create_depth(x+20*scl,y+16*scl,depth-1,obj_buy_but)
	but_id.par_id = id
	update_buy()
}

function update_buy(){
	if event_price < obj_money.money but_id.can_buy = true
	else but_id.can_buy = false
}

c_text = make_color_rgb(225, 225, 225)
scl = obj_camera.scl

alp = 1
title = "Новый поезд"
pos = 0
icon_num = 0
event_num = 0
event_price = 1000000
event_time = 120

init_but()