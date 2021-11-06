game_set_speed(120,gamespeed_fps)
camera = camera_create()

d_width = display_get_width()
d_height = display_get_height()
 
room_width = d_width
room_height = d_height

window_set_size(d_width,d_height)

x = 0
y = 0

vm = matrix_build_lookat(0, 0, -10, 0, 0, 0, 0, 1, 0)
pm = matrix_build_projection_ortho(d_width, d_height, 1, 10000)
camera_set_view_mat(camera, vm)
camera_set_proj_mat(camera, pm)

room_set_view_enabled(room,true)
view_camera[view_current] = camera

surface_resize(application_surface, d_width, d_height);
display_reset(0, false);
scl = floor(d_width/(13*32))