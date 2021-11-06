if can_buy{
	var list = ds_list_find_value(obj_interface_controller.info, obj_interface_list.list_num)
	var opt = ds_list_find_value(list, par_id.tag)
	ds_map_set(opt, "event_price", ds_map_find_value(opt, "event_price")+ds_map_find_value(opt, "add"))
	with obj_interface_list update_list()
	obj_time.check_id = par_id
	with obj_time create_event(check_id.event_time, check_id.icon_num, check_id.event_num, ds_list_create())
	obj_money.check_id = par_id
	with obj_money delta_money(-1*check_id.event_price)
}
