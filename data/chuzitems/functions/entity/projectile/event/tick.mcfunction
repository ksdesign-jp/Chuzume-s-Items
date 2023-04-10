#> chuzitems:entity/projectile/event/tick
#
# 
#
# @within function chuzitems:tick

# 再帰弾丸の共通処理
    execute if entity @s[tag=ChuzItems.RecursiveBullet] run function chuzitems:entity/projectile/recursive_bullet/tick

# グレネード弾
    execute if entity @s[tag=ChuzItems.Projectile.Grenade] run function chuzitems:entity/grenade/tick

# 投げられたレヴォマシンガン
    execute if entity @s[tag=ChuzItems.Projectile.ThrownGun] run function chuzitems:entity/revo_machinegun_thrown/tick

# ウィザードシーカー
    execute if entity @s[tag=ChuzItems.Projectile.WizardSeeker] run function chuzitems:entity/projectile/wizard_seeker/tick/

# 超ビーム
    execute if entity @s[tag=ChuzItems.Projectile.Beam] run function chuzitems:entity/projectile/beam/tick/