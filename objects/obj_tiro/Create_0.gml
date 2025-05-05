image_xscale = 3
image_yscale = image_xscale

time_destroy = game_get_speed(gamespeed_fps) * 6

efeito_destroy = function() {
	time_destroy --
	if(time_destroy <= 0) {
		instance_destroy()	
	}
}

efeito_tamanho = function() {
	image_xscale = lerp(image_xscale, 1, 0.1)
	image_yscale = image_xscale
}

efeito_tiro = function() {
	draw_self()
	
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(spr_efeito_tiro, 0, x, y, image_xscale * 1.1, image_yscale * 1.1, image_angle, c_red, 0.7)
	gpu_set_blendmode(bm_normal)
}