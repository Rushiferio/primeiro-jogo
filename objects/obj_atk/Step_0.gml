switch(type_attack)
{
	case "default":
		penetration = false
		bounced = false
	break
}
if (place_meeting(x,y,obj_wall))
{
	if(ghost == false) 
	{
		instance_destroy()
	}
}