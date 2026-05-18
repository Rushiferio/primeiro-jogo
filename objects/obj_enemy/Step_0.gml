if(instance_exists(obj_player))
{
	var _dir = point_direction(x, y, obj_player.x, obj_player.y)
	
	var _interx = lengthdir_x(enemy_spd, _dir)
	var _intery = lengthdir_y(enemy_spd, _dir)
	
	var _hspd = lerp(hspd, _interx,0.1)
	var _vspd = lerp(vspd, _intery,0.1)
	
	x += _hspd;
    y += _vspd;
}
