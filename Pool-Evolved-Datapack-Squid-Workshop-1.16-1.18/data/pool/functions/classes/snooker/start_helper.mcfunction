tag @s add swPool_startmpsnooker
execute if entity @a[tag=swPool_poolplay] run tellraw @s [{"text":"A game is already on.","color":"red"},{"text":" ","color":"white"},{"text":"If you are sure: ","color":"white"},{"text":"<Start Anyway>","underlined":true,"clickEvent":{"action":"run_command","value":"/function pool:classes/snooker/start"}}]
execute unless entity @a[tag=swPool_poolplay] unless entity @a[tag=swPool_wait_snooker] run tellraw @s [{"text":"Please join again from lobby.","color":"red"}]
execute unless entity @a[tag=swPool_poolplay] if entity @a[tag=swPool_wait_snooker] as @a[tag=swPool_wait_snooker,limit=1,sort=random] at @s unless entity @a[tag=swPool_wait_snooker,distance=0.001..] run tellraw @a[tag=swPool_startmpsnooker] [{"text":"Not enough players in queue.","color":"red"}]
execute unless entity @a[tag=swPool_poolplay] if entity @a[tag=swPool_wait_snooker] as @a[tag=swPool_wait_snooker,limit=1,sort=random] at @s if entity @a[tag=swPool_wait_snooker,distance=0.001..] run function pool:classes/snooker/start

tag @s remove swPool_startmpsnooker