
# パーティクル
    function chuz_items:entity/projectile/recursive_bullet/particle

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={Chuz.Recursion=1..,Chuz.Range=1..}] run scoreboard players operation @s Chuz.Recursion = @s Chuz.Speed

# 前進
    execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=1..}] run tp @s ^ ^ ^0.5 ~ ~

# スコア減算
    scoreboard players remove @s Chuz.Recursion 1
    scoreboard players remove @s Chuz.Range 1

# エンティティへの衝突判定
    #execute positioned ~-0.5 ~0.0 ~-0.5 positioned ~-0.3 ~-0.1 ~-0.3 if entity @e[type=!#chuz_items:unhurtable,type=!ender_dragon,dx=0,sort=nearest,limit=1] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[type=!#chuz_items:unhurtable,nbt={Invulnerable:0b},dx=0,sort=nearest,limit=1] run function chuz_items:entity/projectile/recursive_bullet/hit
    execute positioned ~-0.1 ~-0.1 ~-0.1 if entity @e[type=!#chuz_items:unhurtable,type=!ender_dragon,dx=0,sort=nearest,limit=1] positioned ~-0.8 ~-0.8 ~-0.8 if entity @e[type=!#chuz_items:unhurtable,nbt={Invulnerable:0b},dx=0,sort=nearest,limit=1] run function chuz_items:entity/projectile/recursive_bullet/hit

# 対ドラゴン
    execute at @s at @e[type=minecraft:ender_dragon,team=!null,distance=..6,sort=nearest,limit=1] run function chuz_items:entity/projectile/recursive_bullet/hit

# 壁の衝突判定
    execute unless block ~ ~ ~ #chuz_items:no_collision run function chuz_items:entity/projectile/recursive_bullet/break
     
# 再帰
    execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=1..}] at @s run function chuz_items:entity/projectile/recursive_bullet/move

# キル
    execute if entity @s[scores={Chuz.Range=0}] run kill @s