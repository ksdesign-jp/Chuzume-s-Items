
# 爆発
    execute if entity @s[type=end_crystal] run summon tnt

# 何で攻撃されたのかタグ付与
    tag @s add ChuzItems.Hit.Bullet

# ヒット音
    playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1

# 胴体ダメージ設定
    execute store result storage csr_score_damage: Damage int 1 run data get storage csr_score_damage: ChuzDamage.Body

# ヘッドショットチェック
    execute anchored eyes positioned ^ ^ ^ positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=marker,tag=Chuz.Projectile,dx=0] run function chuz_items:entity/projectile/recursive_bullet/hit_headshot

# ダメージを与える
    execute if entity @s[type=!end_crystal] run function csr_score_damage:api/attack
    data remove storage csr_score_damage: Damage