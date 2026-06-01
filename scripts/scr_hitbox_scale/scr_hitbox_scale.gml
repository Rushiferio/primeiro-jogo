function scr_hitbox_scale(cd){
	
		var _hit = instance_create_layer(x,y,"Instances", obj_hitbox)
		_hit.creator = id
		_hit.cooldown = cd
		
		var _width_owner = sprite_get_width(sprite_index)
		var _height_owner = sprite_get_height(sprite_index)
		var _width_hurt = sprite_get_width(_hit.sprite_index) 
		var _height_hurt = sprite_get_height(_hit.sprite_index) 
		
		_hit.image_xscale = _width_owner / _width_hurt
		_hit.image_yscale = _height_owner / _height_hurt
}