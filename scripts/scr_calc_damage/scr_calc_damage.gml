function scr_calc_damage(_atacante, _vitima, destroy) {
    if (_vitima.life <= 0 || _vitima.invencible == true) return;
    var _dano_do_golpe = _atacante.damage; 
    var _defesa_da_vitima = _vitima.armor;

    var _dano_final = max(1, _dano_do_golpe - _defesa_da_vitima);
	
	_vitima.life -= _dano_final;   
	if(destroy)
	{
		instance_destroy(_atacante)
	}
	show_debug_message(_vitima.life)
}