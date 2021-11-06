ds_list_clear(now_stations)
for (var z = 0; z < ds_list_size(regions); z++){
	var stations = ds_list_find_value(regions, z)
	for (var k = 0; k < ds_list_size(stations); k++){
		var station = ds_list_find_value(stations, k)
		ds_map_set(station, "used", false)
	}
}
buy_station(0)
buy_station(1)
buy_station(2)
buy_station(3)
buy_station(4)