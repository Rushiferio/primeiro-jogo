//mapeamento de teclas
key_up = keyboard_check(ord("W"))
key_down = keyboard_check(ord("S"))
key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))

//movimentação
hspd = key_right - key_left
vspd = key_down - key_up
var _spd = [hspd, vspd];
var _axis = ["x", "y"]; 

//angulo
var _dir = point_direction(x,y,mouse_x,mouse_y)
var _index = floor((((_dir + 22.5) % 360) + 360) % 360 / 45);
var _direction = sprite_direction[_index]

//colisão com a parede
for (var i = 0; i < 2; i++) {
    if (_spd[i] != 0) {
        switch(_axis[i]) {
			case "x": x += _spd[i] * move_speed; break;
			case "y": y += _spd[i] * move_speed; break;
		}

        if (place_meeting(x, y, obj_wall)) {
            switch(_axis[i]) {
				case "x": x -= _spd[i] * move_speed; break;
				case "y": y -= _spd[i] * move_speed; break;
			}
        }
    }
}

//troca de sprite
sprite_index = move_data[$ _direction]
image_xscale = (mouse_x > x ) ?  1 : -1
if (hspd != 0 || vspd != 0)
{
	image_speed = 1

}else{
	image_speed = 0
	image_index = 0
}

//atacando
if (mouse_check_button(mb_left) && !is_atk)
{
	is_atk = true
	atk_obj = instance_create_depth(x,y, -100, obj_atk, {direction: _dir})
	alarm[0] = atk_coolwdon
}


