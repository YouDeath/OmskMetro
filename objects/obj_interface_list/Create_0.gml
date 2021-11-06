function init_list(d_x, d_y){
	switch (list_num){
		case 0:{
			var list = ds_list_find_value(par_id.info, list_num)
			opt_ids = ds_list_create()
			for (var i = 0; i < 4; i++){
				var opt = ds_list_find_value(list, i)
				var opt_id = instance_create_depth(d_x+ds_map_find_value(opt, "d_x")*scl, d_y+ds_map_find_value(opt, "d_y")*scl, depth-1, obj_interface_option)
				opt_id.title = ds_map_find_value(opt, "title")
				opt_id.pos = ds_map_find_value(opt, "pos")
				opt_id.icon_num = ds_map_find_value(opt, "icon_num")
				opt_id.event_num = ds_map_find_value(opt, "event_num")
				opt_id.event_price = ds_map_find_value(opt, "event_price")
				opt_id.event_time = ds_map_find_value(opt, "event_time")
				opt_id.tag = i
				ds_list_add(opt_ids, opt_id)
			}
			break;
		}
	}
}

function draw_list(d_x, d_y, alp){
	switch (list_num){
		case 0:{
			draw_set_halign(fa_left)
			draw_set_valign(fa_top)
			draw_set_font(global.big_title)
			draw_text_color(d_x-72*scl, d_y-78*scl, "Поезда и Пути", c_text, c_text, c_text, c_text, alp)
			break;
		}
	}
}

function update_list(){
	switch (list_num){
		case 0:{
			var list = ds_list_find_value(par_id.info, list_num)
			for (var i = 0; i < 4; i++){
				var opt = ds_list_find_value(list, i)
				var opt_id = ds_list_find_value(opt_ids,i) 
				opt_id.title = ds_map_find_value(opt, "title")
				opt_id.pos = ds_map_find_value(opt, "pos")
				opt_id.icon_num = ds_map_find_value(opt, "icon_num")
				opt_id.event_num = ds_map_find_value(opt, "event_num")
				opt_id.event_price = ds_map_find_value(opt, "event_price")
				opt_id.event_time = ds_map_find_value(opt, "event_time")
			}
			break;
		}
	}
}

function create_list(){
	
}

function destroy_list(){
	
}

scl = obj_camera.scl
c_text = make_color_rgb(225, 225, 225)
par_id = noone
list_num = 0
