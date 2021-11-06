function make_station(){
	regions = ds_list_create()
	
	var stations = ds_list_create()
	// Красный
	var station = ds_map_create()
	ds_map_add(station, "x", -60)
	ds_map_add(station, "y", -76)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -58)
	ds_map_add(station, "y", -51)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -36)
	ds_map_add(station, "y", -61)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -26)
	ds_map_add(station, "y", -46)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -41)
	ds_map_add(station, "y", -36)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -41)
	ds_map_add(station, "y", -49)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -26)
	ds_map_add(station, "y", -31)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -14)
	ds_map_add(station, "y", -20)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	ds_list_add(regions, stations)
	
	//фиолетовый
	var stations = ds_list_create()
	
	var station = ds_map_create()
	ds_map_add(station, "x", 4)
	ds_map_add(station, "y", -17)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 14)
	ds_map_add(station, "y", -29)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 42)
	ds_map_add(station, "y", -31)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 34)
	ds_map_add(station, "y", -17)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 19)
	ds_map_add(station, "y", -11)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 3.75)
	ds_map_add(station, "y", -0.25)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 42)
	ds_map_add(station, "y", -6)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	ds_list_add(regions, stations)
	
	//синий
	var stations = ds_list_create()
	
	var station = ds_map_create()
	ds_map_add(station, "x", -66.5)
	ds_map_add(station, "y", -5.5)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -39.25)
	ds_map_add(station, "y", -5.25)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -47.5)
	ds_map_add(station, "y", 3.5)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -20)
	ds_map_add(station, "y", 6.5)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -33)
	ds_map_add(station, "y", 39)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -36.5)
	ds_map_add(station, "y", 26.5)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -31)
	ds_map_add(station, "y", 14)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -51.5)
	ds_map_add(station, "y", -11)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	ds_list_add(regions, stations)	
	
	//жёлтый
	var stations = ds_list_create()
	
	
	var station = ds_map_create()
	ds_map_add(station, "x", 20)
	ds_map_add(station, "y", 14)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 13)
	ds_map_add(station, "y", 6)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 34)
	ds_map_add(station, "y", 11)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 61)
	ds_map_add(station, "y", 4)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 47)
	ds_map_add(station, "y", 9)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	ds_list_add(regions, stations)
	
	//зелёный
	var stations = ds_list_create()
	
	var station = ds_map_create()
	ds_map_add(station, "x", 6)
	ds_map_add(station, "y", 26.75)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 34)
	ds_map_add(station, "y", 32)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 19)
	ds_map_add(station, "y", 32)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -4.25)
	ds_map_add(station, "y", 38.75)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -12.25)
	ds_map_add(station, "y", 56)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", -1)
	ds_map_add(station, "y",72)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 5.50)
	ds_map_add(station, "y", 54.25)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 44.50)
	ds_map_add(station, "y", 54.25)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 32.50)
	ds_map_add(station, "y", 49.25)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 64.50)
	ds_map_add(station, "y", 54.25)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	var station = ds_map_create()
	ds_map_add(station, "x", 60.50)
	ds_map_add(station, "y", 64.25)
	ds_map_add(station, "used", false)
	ds_list_add(stations, station)
	ds_list_mark_as_map(stations, ds_list_size(stations))
	
	ds_list_add(regions, stations)
	
	ds_list_mark_as_list(regions, ds_list_size(regions))
}

function map_init(){
	now_stations = ds_list_create()
	now_railways = ds_list_create()
	now_lines = ds_list_create()
	now_trains = ds_list_create()
	random_set_seed(current_time)
}

function draw_map(d_x, d_y){
	draw_rectangle_color(d_x-90*scl, d_y-90*scl, d_x+90*scl, d_y+90*scl, c_b, c_b, c_b, c_b, false)
	draw_sprite_ext(spr_map, 0, d_x, d_y, scl, scl, 0, noone, 1)
}

function draw_stations(d_x, d_y){
	for (var k = 0; k < ds_list_size(now_stations); k++){
		var station = ds_list_find_value(now_stations, k)
		var a_x = ds_map_find_value(station, "x")
		var a_y = ds_map_find_value(station, "y")
		draw_sprite_ext(spr_station, 0, d_x+a_x*scl, d_y+a_y*scl, scl, scl, 0, noone, 1)	
	}
}

function draw_stations_all(d_x, d_y){
	for (var z = 0; z < ds_list_size(regions); z++){
		var stations = ds_list_find_value(regions, z)
		for (var k = 0; k < ds_list_size(stations); k++){
			var station = ds_list_find_value(stations, k)
			var a_x = ds_map_find_value(station, "x")
			var a_y = ds_map_find_value(station, "y")
			draw_sprite_ext(spr_station, 0, d_x+a_x*scl, d_y+a_y*scl, scl, scl, 0, noone, 1)
		}
	}
}

function buy_station(unit){
	var stations = ds_list_find_value(regions, unit)
	var bad = true;
	for (var i = 0; i < ds_list_size(stations); i++){
		var station = ds_list_find_value(stations, i)
		if !(ds_map_find_value(station, "used")){
			bad = false
			break;			
		}
	}
	if bad return true
	while true{
		var pos = irandom_range(0, ds_list_size(stations)-1)
		var new_station = ds_list_find_value(stations, pos)
		if !(ds_map_find_value(new_station,"used")) break;
	}
	ds_map_set(new_station, "used", true);
	ds_list_set(stations, pos, new_station)
	ds_list_set(regions, unit, stations)
	
	ds_list_add(now_stations, new_station)
	ds_list_mark_as_map(now_stations, ds_list_size(now_stations))
}

function draw_metro_line(d_x, d_y, stat1, stat2, col){
	var x1 = ds_map_find_value(stat1, "x")*scl+d_x
	var y1 = ds_map_find_value(stat1, "y")*scl+d_y
	
	var x2 = ds_map_find_value(stat2, "x")*scl+d_x
	var y2 = ds_map_find_value(stat2, "y")*scl+d_y
	draw_line_width_color(x1, y1, x2, y2, scl, col, col)
}

function draw_metro(d_x, d_y){
	for (var i = 0; i < ds_list_size(now_railways); i++){
		var railway = ds_list_find_value(now_railways, i)
		var col = line_colors[0]
		var pos1 = ds_map_find_value(railway, "pos1")
		var pos2 = ds_map_find_value(railway, "pos2")
		for (var j = 0; j < ds_list_size(now_lines); j++){
			var find = false
			var line = ds_list_find_value(now_lines, j)
			var stations_way = ds_map_find_value(line, "stations_way")
			for (var k = 0; k < ds_list_size(stations_way); k++){
				if (pos1 == ds_list_find_value(stations_way, k) and pos2 == ds_list_find_value(stations_way, k+1)) or (pos2 == ds_list_find_value(stations_way, k) and pos1 == ds_list_find_value(stations_way, k+1)){
					col = ds_map_find_value(line, "line_col")
					find = true
					break;
				}
			}
		}
		draw_metro_line(d_x, d_y, ds_map_find_value(railway,"stat1"),  ds_map_find_value(railway,"stat2"), col)
	}
}

function add_railway(pos1, pos2){
	
	var railway = ds_map_create()
	ds_map_add(railway, "pos1", pos1)
	ds_map_add(railway, "pos2", pos2)
	
	var stat1 = ds_list_find_value(now_stations, pos1)
	var x1 = ds_map_find_value(stat1, "x")
	var y1 = ds_map_find_value(stat1, "y")
	var stat2 = ds_list_find_value(now_stations, pos2)
	var x2 = ds_map_find_value(stat2, "x")
	var y2 = ds_map_find_value(stat2, "y")
	
	ds_map_add(railway, "stat1", stat1)
	ds_map_add(railway, "stat2", stat2)
	
	ds_map_add(railway, "lenth", point_distance(x1, y1, x2, y2))
	ds_map_add(railway, "cost", ds_map_find_value(railway, "lenth")*100)
	
	ds_map_add(railway, "col", 0)
	ds_list_add(now_railways, railway)
	ds_list_mark_as_map(now_railways, ds_list_size(now_railways)-1)
}

function add_line(stations){
	var line = ds_map_create()
	var line_way = ds_list_create()
	for (var i = 0 ; i < ds_list_size(stations); i++){
		ds_list_add(line_way, ds_list_find_value(now_stations, ds_list_find_value(stations, i)))
		ds_list_mark_as_map(line_way, ds_list_size(line_way)-1)
	}
	ds_map_add_list(line, "line_way", line_way)
	ds_map_add_list(line, "stations_way", stations)
	ds_map_add(line, "line_col", line_colors[how_lines+1])
	how_lines++
	ds_list_add(now_lines, line)
	ds_list_mark_as_map(now_lines, ds_list_size(now_lines)-1)
}

function create_train(line_num, train_speed){
	var line = ds_list_find_value(now_lines, line_num)
	var train = ds_map_create()
	var start = ds_list_find_value(ds_map_find_value(line, "line_way"), 0)
	ds_map_add(train, "line", line)
	ds_map_add(train, "way_pos", 0)
	ds_map_add(train, "way_direction", 1)
	ds_map_add(train, "x", ds_map_find_value(start,"x"))
	ds_map_add(train, "y", ds_map_find_value(start,"y"))
	ds_map_add(train, "train_speed", train_speed)
	ds_list_add(now_trains, train)
	ds_list_mark_as_map(now_trains, ds_list_size(now_trains))
}

function move_trains(){
	for (var i = 0; i < ds_list_size(now_trains); i++){
		var train = ds_list_find_value(now_trains, i)
		var line = ds_list_find_value(now_lines, ds_map_find_value(train, "line"))
		var line_way = ds_map_find_value(line, "line_way")
		var way_pos = ds_map_find_value(train, "way_pos")
		var train_x = ds_map_find_value(train, "x")
		var train_y = ds_map_find_value(train, "y")
		var way_direction = ds_map_find_value(train, "way_direction")
		if (way_pos+way_direction >= 0) and (way_pos+way_direction < ds_list_size(line_way)){
			
		}
		else{
			show_message("cant find way")
		}
	}
}

function draw_trains(d_x, d_y){
	for (var i = 0; i < ds_list_size(now_trains); i++){
		var train = ds_list_find_value(now_trains, i)
		var train_x = ds_map_find_value(train, "x")
		var train_y = ds_map_find_value(train, "y")	
		draw_sprite_ext(spr_train, 0, d_x+train_x*scl, d_y+train_y*scl, scl, scl, 0, noone, 1)
	}
}

how_lines = 0

line_colors[0] = c_gray
line_colors[1] = c_red
line_colors[2] = c_blue
line_colors[3] = c_yellow
line_colors[4] = c_green

make_station()
map_init()

buy_station(0)
buy_station(1)
buy_station(2)
buy_station(3)
buy_station(4)

add_railway(0, 1)
add_railway(1, 2)
add_railway(3, 1)

//create_train(0, 10)

var test = ds_list_create()
ds_list_add(test, 0, 1, 2)
add_line(test)

c_text = make_color_rgb(25, 25, 25)

c_b = make_color_rgb(43, 46, 74)
scl = obj_camera.scl