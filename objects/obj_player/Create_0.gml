//atributo
life = 20
armor = 2
invencible = false
faccao = "player"


//attack
atk_sprite = spr_atk_default
atk_list = []
is_atk = false

//variaveis de movimentação
hspd = 0
vspd = 0
move_speed = 1.5

//dicionário e lista com todas as direções ligadas com suas sprites
//left e right tem a mesma sprite mudando apenas o xscale
move_data = {
	"up": spr_player_up,
	"down": spr_player_down,
	"right": spr_player_right,
	"right_up": spr_player_right_up,
	"right_down": spr_player_right_down
}
sprite_direction = [
	"right",
	"right_up",
	"up",
	"right_up",
	"right",
	"right_down",
	"down",
	"right_down",
]

hurtbox = scr_hurtbox_scale()