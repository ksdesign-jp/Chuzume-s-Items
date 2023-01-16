#> chuz_items:item/techkit_revomachine_gun/gun/shot/
#
# ノーマル射撃
#
# @within function chuz_items:item/techkit_revomachine_gun/gun/

# 俺が実行者だ
    tag @s add This

# 演出
    #execute anchored eyes positioned ^ ^-0.4 ^1.0 run playsound chuzume:rifle_shot player @a ~ ~ ~ 5 0.5
    #execute anchored eyes positioned ^ ^-0.4 ^1.0 run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 0.5
    #execute anchored eyes positioned ^ ^-0.4 ^1.0 run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 0.6
    #execute anchored eyes positioned ^ ^-0.4 ^1.0 run playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 5 1.8
    #execute anchored eyes positioned ^ ^-0.4 ^1.0 run playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 3 1.5

    execute anchored eyes positioned ^ ^-0.4 ^1.0 run playsound chuzume:rifle_shot player @a ~ ~ ~ 3 1.5
    execute anchored eyes positioned ^ ^-0.4 ^1.0 run playsound minecraft:block.note_block.bit player @a ~ ~ ~ 4 2
    execute anchored eyes positioned ^ ^-0.4 ^1.0 run playsound minecraft:block.note_block.bit player @a ~ ~ ~ 4 1.98
    execute anchored eyes positioned ^ ^-0.4 ^1.0 run playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 4 2
    #execute anchored eyes positioned ^ ^-0.4 ^1.0 run playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 2 2 1

# バーストレートを設定
    scoreboard players set @s[tag=ChuzItems.Shot.Normal] ChuzItems.BurstRate 2
    scoreboard players set @s[tag=ChuzItems.Shot.ADS] ChuzItems.BurstRate 1


# バースト数をへらす
    scoreboard players remove @s ChuzItems.BurstCount 1

# リコイル
    data modify storage yv:gun Recoil set value {Magnitude:[0.0f,-1f],Smooth:5,WaitTick:0}
    # リコイル開始
        function yv_recoil:

# 弾を召喚
    execute if entity @s[tag=ChuzItems.Shot.Normal] anchored eyes positioned ^-0.25 ^ ^ run function chuz_items:item/techkit_revomachine_gun/gun/shot/summon_bullet 
    execute if entity @s[tag=ChuzItems.Shot.ADS] anchored eyes positioned ^ ^ ^ run function chuz_items:item/techkit_revomachine_gun/gun/shot/summon_bullet 

# 弾が減る
    execute in overworld run function chuz_items:item/consume_ammo

# タグ
    tag @s remove This