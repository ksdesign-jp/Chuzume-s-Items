#> chuzitems:item/gunblade/craft
#
# 作成
#
# @within advancement chuzitems:craft/gunblade

# 演出
    execute anchored eyes positioned ^ ^ ^1.5 run playsound minecraft:block.smithing_table.use player @a ~ ~ ~ 1 1
    execute anchored eyes positioned ^ ^ ^1.5 run playsound minecraft:block.wood.break player @a ~ ~ ~ 1 1

# 実行者の位置にアイテムを召喚
    execute at @s run loot spawn ~ ~ ~ loot chuzitems:item/gunblade/ranged

# すぐに拾えるようにNBT変更
    data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0

# 次回以降も実行するためにレシピ没収
    recipe take @s chuzitems:gunblade

# クラフト時のダミー表示のチェストを削除
    clear @s chest 1

# 進捗消去
    advancement revoke @s only chuzitems:craft/gunblade