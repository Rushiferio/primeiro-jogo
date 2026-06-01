function scr_hitbox_scale(cd,hit){
	
		hit.creator = id
		hit.cooldown = cd
		
		var _width_owner = sprite_get_width(sprite_index)
		var _height_owner = sprite_get_height(sprite_index)
		var _width_hurt = sprite_get_width(hit.sprite_index) 
		var _height_hurt = sprite_get_height(hit.sprite_index) 
		
		hit.image_xscale = _width_owner / _width_hurt
		hit.image_yscale = _height_owner / _height_hurt
}