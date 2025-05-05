movimento = function() {
	direction = irandom(359)
	speed = irandom(2)
	image_angle = direction
}

in_room = function() {
	image_angle = direction
	if(x - sprite_width / 2 < 0 || x + sprite_width / 2 > room_width) {
		hspeed *= -1	
	}
	if(y - sprite_height / 2 < 0 || y + sprite_height / 2 > room_height) {
		vspeed *= -1
	}
}

movimento()