function scr_hurtbox_scale(xscale = noone, yscale = noone){
	var _hurt = instance_create_layer(x,y,"Instances",obj_hurtbox)
	_hurt.owner = id
	
	if(xscale != noone || yscale != noone) 
	{
		_hurt.image_xscale = xscale
		_hurt.image_yscale = yscale
	}else{
		var _width_owner = sprite_get_width(sprite_index)
		var _height_owner = sprite_get_height(sprite_index)
		var _width_hurt = sprite_get_width(_hurt.sprite_index) 
		var _height_hurt = sprite_get_height(_hurt.sprite_index) 
		
		_hurt.image_xscale = _width_owner / _width_hurt
		_hurt.image_yscale = _height_owner / _height_hurt
	}
	return _hurt
}