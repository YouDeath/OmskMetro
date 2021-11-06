function draw_game_time(d_x, d_y){
	draw_set_halign(fa_right)
	draw_set_valign(fa_bottom)
	draw_set_font(global.time_font)
	var time_str = time_to_date(game_time)
	draw_text_color(d_x,d_y,time_str, c_text, c_text, c_text, c_text, 1)
}

function time_to_date(time){
	return string(time mod 31+1)+"д "+string((time div 31) mod 12 + 1)+"м "+string((time div 31) div 12 + 2021)+"г"
}

function time_to_str(time){
	if time <= 31{
		return string(time)+"д"
	}
	if time <= 372{
		return string(time mod 32)+"д "+string((time div 32) mod 12)+"м"
	}
	return string(time mod 31)+"д "+string((time div 31) mod 12)+"м "+string((time div 31) div 12)+"л"
}

function time_to_str_short(time){
	if time <= 31{
		return string(time)+"д"
	}
	if time <= 372{
		return string(ceil(time/32))+"м"
	}
	return string(ceil(time/372))+"г"
}

/*
event{
	timer
	event_img_num
	event_num
	args
	d_x
	d_y
	alp
	change
}
*/

function draw_events_time(d_x, d_y){
	for (var i = 0; i < ds_list_size(events_time); i++){
		var event = ds_list_find_value(events_time, i)
		var event_time = ds_map_find_value(event, "timer")
		var event_img_num = ds_map_find_value(event, "event_img_num")
		var event_d_x = ds_map_find_value(event, "d_x")
		var event_d_y = ds_map_find_value(event, "d_y")
		var event_alp = ds_map_find_value(event, "alp")
		var s_x = floor(d_x+event_d_x)
		var s_y = floor(d_y+event_d_y)
		draw_set_halign(fa_left)
		draw_set_valign(fa_bottom)
		draw_sprite_ext(spr_events_imgs, event_img_num, s_x, s_y, scl, scl, 0, noone, event_alp)
		draw_text_color(s_x-8*scl, s_y+10*scl, time_to_str_short(event_time), c_text, c_text, c_text, c_text, event_alp)
	}
}

function change_event(step){
	for (var i = 0; i < ds_list_size(events_time); i++){
		var event = ds_list_find_value(events_time, i)
		
		var ch = ds_map_find_value(event, "change")
		if step{
			if ch == "noone"{
				ds_map_set(event, "timer", ds_map_find_value(event, "timer")-1)
			}
		}
		
		var need_d_x = -(15*scl*ds_list_size(events_time)/2)+i*15*scl		
		var d_x = ds_map_find_value(event, "d_x")
		d_x += (need_d_x-d_x)/8
		ds_map_set(event, "d_x", d_x)
		
		if ch == "create"{
			var d_y = ds_map_find_value(event, "d_y")
			d_y += (0-d_y)/8
			ds_map_set(event, "d_y", d_y)	
			var alp = ds_map_find_value(event, "alp")
			alp += (1-alp)/8
			ds_map_set(event, "alp", alp)	
			if ((1-alp < 0.1) and d_y < 1){
				ds_map_set(event, "change", "noone")	
			}
		}
		
		if ch == "destroy"{
			var d_y = ds_map_find_value(event, "d_y")
			d_y += (10*scl-d_y)/8
			ds_map_set(event, "d_y", d_y)
			
			var alp = ds_map_find_value(event, "alp")
			alp += (0-alp)/8
			ds_map_set(event, "alp", alp)	
			
			if ((alp-0 < 0.1) and (10*scl-d_y) < 1){
				ds_map_set(event, "change", "noone")	
				ds_list_delete(events_time,i)
				continue
			}
		}
		if (ds_map_find_value(event, "timer") == 0){
		ds_map_set(event, "change", "destroy")
		}
		ds_list_set(events_time, i, event)
	}
}

function create_event(timer, event_img_num, event_num, args){
	var event = ds_map_create()
	ds_map_add(event, "timer", timer)
	ds_map_add(event, "event_img_num", event_img_num)
	ds_map_add(event, "event_num", event_num)
	ds_map_add_list(event, "args", args)
	ds_map_add(event, "d_x", -(15*scl*(ds_list_size(events_time))/2)+ds_list_size(events_time)*15*scl)
	ds_map_add(event, "d_y", 10*scl)
	ds_map_add(event, "alp", 0)
	ds_map_add(event, "change", "create")
	ds_list_add(events_time, event)
	ds_list_mark_as_map(events_time, ds_list_size(events_time))
}

events_time = ds_list_create()
c_text = make_color_rgb(225, 225, 225)
game_time = 0
time = 0

scl = obj_camera.scl
create_event(1, 2, 10, ds_list_create())
create_event(3, 2, 10, ds_list_create())
create_event(3, 2, 10, ds_list_create())
create_event(5, 2, 10, ds_list_create())