function init_list_info(){
	info = ds_list_create()
	
	var list = ds_list_create()
	var option = ds_map_create()
	ds_map_add(option, "title", "Новый поезд")
	ds_map_add(option, "pos", 0)
	ds_map_add(option, "icon_num", 0)
	ds_map_add(option, "event_num", 0)
	ds_map_add(option, "event_price", 1000000)
		ds_map_add(option, "add", 100000)
	ds_map_add(option, "event_time", 15)
	ds_map_add(option, "d_x", -30)
	ds_map_add(option, "d_y", -24)
	ds_list_add(list,option)
	ds_list_mark_as_map(list, ds_list_size(list))
	
	var option = ds_map_create()
	ds_map_add(option, "title", "Новый вагон")
	ds_map_add(option, "pos", 1)
	ds_map_add(option, "icon_num", 1)
	ds_map_add(option, "event_num", 1)
	ds_map_add(option, "event_price", 500000)
	ds_map_add(option, "add", 100000)
	ds_map_add(option, "event_time", 10)
	ds_map_add(option, "d_x", 30)
	ds_map_add(option, "d_y", -24)
	ds_list_add(list,option)
	ds_list_mark_as_map(list, ds_list_size(list))
	
	var option = ds_map_create()
	ds_map_add(option, "title", "Ускорение")
	ds_map_add(option, "pos", 2)
	ds_map_add(option, "icon_num", 2)
	ds_map_add(option, "event_num", 2)
	ds_map_add(option, "event_price", 2000000)
	ds_map_add(option, "add", 100000)
	ds_map_add(option, "event_time", 31)
	ds_map_add(option, "d_x", -30)
	ds_map_add(option, "d_y", 24)
	ds_list_add(list,option)
	ds_list_mark_as_map(list, ds_list_size(list))
	
	var option = ds_map_create()
	ds_map_add(option, "title", "Оптимизация")
	ds_map_add(option, "pos", 3)
	ds_map_add(option, "icon_num", 3)
	ds_map_add(option, "event_num", 3)
	ds_map_add(option, "event_price", 10000000)
	ds_map_add(option, "add", 1000000)
	ds_map_add(option, "event_time", 62)
	ds_map_add(option, "d_x", 30)
	ds_map_add(option, "d_y", 24)
	ds_list_add(list,option)
	ds_list_mark_as_map(list, ds_list_size(list))
	
	ds_list_add(info,list)
	ds_list_mark_as_list(info, ds_list_size(info)-1)
}

function interface_init(){
	var but_id = instance_create_layer(obj_camera.x-10*scl, obj_camera.y+obj_camera.d_height*1/4,"interface",obj_interface_change_but)
	but_id.but_type = 0
	but_id.press = true
	but_id.x_to = but_id.x_open
	
	var but_id = instance_create_layer(obj_camera.x-10*scl, obj_camera.y+obj_camera.d_height*1/4+20*scl,"interface",obj_interface_change_but)
	but_id.but_type = 1
}

function draw_back(d_x, d_y){
	var s_x = d_x-80*scl
	var s_y = d_y-80*scl
	var e_x = d_x+80*scl
	var e_y = d_y+80*scl
	draw_rectangle_color(s_x, s_y, e_x, e_y, c_b, c_b, c_b, c_b, false)
}

function create_list(list){
	list_id = instance_create_depth(x, y, depth-1, obj_interface_list)
	list_id.par_id = id
	list_id.list_num = list
	with list_id{
		init_list(obj_camera.x+9*obj_camera.d_width/32, obj_camera.y+obj_camera.d_height/2+35*scl)
	}
}

list_id = noone
list = 0
c_b = make_color_rgb(43, 46, 74)
scl = obj_camera.scl
init_list_info()
interface_init()
create_list(0)