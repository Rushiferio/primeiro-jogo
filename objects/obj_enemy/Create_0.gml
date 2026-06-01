enemy_type = "default"
state = "life"
enemy_spd = 12
hspd = 0
vspd = 0
atk_cooldown = 20

life = 40
damage = 5
multi_body_damage = 1.5
armor = 2
destroy = false

invencible = false
body = true
faccao = "enemy"

hurtbox = scr_hurtbox_scale()
hit = instance_create_layer(x,y,"Instances", obj_hitbox)
scr_hitbox_scale(50,hit)
