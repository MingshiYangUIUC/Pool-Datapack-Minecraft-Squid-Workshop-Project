execute if entity @e[type=armor_stand,tag=swPool_pooltable,distance=..50] run function pool:classes/lobby/terminate_game
execute unless entity @e[type=armor_stand,tag=swPool_pooltable,distance=..50] run tellraw @s[tag=swPool_EN] [{"text":"Please go to the table to turn off the game.","color":"red"}]
execute unless entity @e[type=armor_stand,tag=swPool_pooltable,distance=..50] run tellraw @s[tag=swPool_CN] [{"text":"请在桌边结束游戏。","color":"red"}]