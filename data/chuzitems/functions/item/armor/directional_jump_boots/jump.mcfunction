#> chuzitems:item/armor/directional_jump_boots/jump
#
# Deltaデータパックを用いた跳躍
#
# @within function chuzitems:item/armor/directional_jump_boots/main

# 飛ばす
    scoreboard players set $strength delta.api.launch 10000
    execute positioned ~ ~ ~ run function delta:api/launch_looking

# サウンド
    playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.goat.long_jump player @a ~ ~ ~ 1.5 1
    #playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 1

# パーティクル
    particle minecraft:poof ~ ~0.1 ~ 0.3 0 0.3 0.2 10
    particle minecraft:crit ~ ~0.3 ~ 0.3 0 0.3 0.5 10