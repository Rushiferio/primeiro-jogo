if(life <= 0) 
{
	if(state == "dead") instance_destroy()
	state = "dead"
	life = 2
	armor = 9999
}
if(instance_exists(obj_player))
{
	var _dir = point_direction(x, y, obj_player.x, obj_player.y)
	
	var _interx = lengthdir_x(enemy_spd, _dir)
	var _intery = lengthdir_y(enemy_spd, _dir)
	
	var _hspd = lerp(hspd, _interx,0.1)
	var _vspd = lerp(vspd, _intery,0.1)
	
	switch(state) {
		case "life":
			var _enemy = instance_place(x, y, obj_enemy);
            if (_enemy != noone && _enemy != id) 
            {
                var _push_dir = point_direction(_enemy.x, _enemy.y, x, y);
                
                _hspd += lengthdir_x(0.5, _push_dir);
                _vspd += lengthdir_y(0.5, _push_dir);
            }
			if (place_meeting(x + _hspd, y, obj_wall)) 
			{
				while (!place_meeting(x + sign(_hspd), y, obj_wall)) 
				{
					x += sign(_hspd);
				}
				_hspd = 0; 
			}
			x += _hspd;

			if (place_meeting(x, y + _vspd, obj_wall)) 
			{
				while (!place_meeting(x, y + sign(_vspd), obj_wall)) 
				{
					y += sign(_vspd);
				}
				_vspd = 0; 
			}
			y += _vspd;
			
		break
		case "dead":
			sprite_index = spr_enemy_dead;
			instance_destroy(hit)
			_hspd = 0;
			_vspd = 0;
		break
		case "throw":
			if (place_meeting(x, y, obj_wall))
			{
				instance_destroy();
				exit; 
			}
			var _enemy_hit = instance_place(x, y, obj_enemy);
			
			if (_enemy_hit != noone && _enemy_hit != id)
			{
				_enemy_hit.life -= (damage * multi_body_damage) - _enemy_hit.armor;
				instance_destroy();
			}
		break
	}
	
}
