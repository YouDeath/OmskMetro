function load_fonts(){
	switch lang{
		case "_en":{	
			var f_start = 32
			var f_end =	128
			//font_add_enable_aa(false)
			global.time_font = font_add("ChixaDemibold.ttf", 5*scl, true, true, f_start, f_end);
			global.money_font = font_add("ChixaDemibold.ttf", 7*scl, true, true, f_start, f_end);
			global.big_title = font_add("ChixaDemibold.ttf", 9*scl, true, true, f_start, f_end);
			global.station_font = font_add("ChixaDemibold.ttf", 4*scl, true, true, f_start, f_end);
			break
		}
		case "_ru":{
			var f_start = 1072
			var f_end =	1096
			//font_add_enable_aa(false)
			global.time_font = font_add("ChixaDemibold.ttf", 5*scl, true, true, f_start, f_end);
			global.money_font = font_add("ChixaDemibold.ttf", 7*scl, true, true, f_start, f_end);
			global.big_title = font_add("ChixaDemibold.ttf", 9*scl, true, true, f_start, f_end);
			global.station_font = font_add("ChixaDemibold.ttf", 4*scl, true, true, f_start, f_end);
			break
		}
	}
}

scl = obj_camera.scl
lang = "_ru"
load_fonts()