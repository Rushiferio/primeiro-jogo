atk_cooldown = 25 //intervalo entre os tiros
damage = 5
type_attack = "default"
faccao = "player"
destroy = true

image_angle = direction;
image_xscale = 2
image_yscale = 2
creator = noone


penetration = false
ghost = false
bounced = false
multiplication = 1
hit = instance_create_layer(x,y,"Instances", obj_hitbox)
scr_hitbox_scale(noone,hit)

alarm[0] = 60*120