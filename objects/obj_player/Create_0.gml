velocidade = 5
velh = 0
velv = 0
vel_tiro = 10
time_tiro = 0;
ping_tiro = game_get_speed(gamespeed_fps) * 0.2

movimentacao = function() {
	var _up, _down, _left, _right
	
	_up = keyboard_check(ord("W"))
	_down = keyboard_check(ord("S"))
	
	velv = (_down - _up) * velocidade
	y += velv
	
	_right = keyboard_check(ord("D"))
	_left = keyboard_check(ord("A"))
	
	velh = (_right - _left) * velocidade
	x += velh
	
	if(_up || _down || _right || _left) {
		image_speed = 1	
	} else {
		image_speed = 0
		image_index = 0
	}
}

atirando = function() {
	var _dir = point_direction(x, y, mouse_x, mouse_y)
	image_angle = _dir
	
	var _fire = mouse_check_button(mb_left)
	
	if(time_tiro <= 0) {
		if(_fire) {
			var _tiro = instance_create_layer(x, y, "tiros", obj_tiro)
			_tiro.speed = vel_tiro
			_tiro.direction = _dir
			time_tiro = ping_tiro
			sprite_index = spr_player_tiro
		} else {
			sprite_index = spr_player
		}
	} else {
		time_tiro--;	
	}
}