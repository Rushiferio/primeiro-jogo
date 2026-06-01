var _hurt = other
var _target = _hurt.owner

if(instance_exists(creator) && instance_exists(_target))
{
	if(!isDamage)
	{
		if(creator.faccao == _target.faccao) exit
		scr_calc_damage(creator,_target,creator.destroy)
		isDamage = true
		alarm[0] = cooldown
	}
}

