execute as @a at @s if score @s player.state.inhand.gun = @s item.id.m107 run item modify entity @s weapon.mainhand empdev:m107/m107
execute as @a at @s if score @s player.state.inhand.gun = @s item.id.m107.onscope run item modify entity @s weapon.mainhand empdev:m107/m107_onscope
execute as @a at @s if score @s player.state.inhand.gun = @s item.id.m107.running run item modify entity @s weapon.mainhand empdev:m107/m107_running
execute as @a at @s if score @s player.state.offhand.gun = @s item.id.m107 run item modify entity @s weapon.offhand empdev:m107/m107_back

execute as @a at @s if score @s player.state.inhand.gun = @s item.id.akm run item modify entity @s weapon.mainhand empdev:akm/akm
execute as @a at @s if score @s player.state.inhand.gun = @s item.id.akm.onscope run item modify entity @s weapon.mainhand empdev:akm/akm_onscope
execute as @a at @s if score @s player.state.inhand.gun = @s item.id.akm.running run item modify entity @s weapon.mainhand empdev:akm/akm_running
execute as @a at @s if score @s player.state.offhand.gun = @s item.id.akm run item modify entity @s weapon.offhand empdev:akm/akm_back

execute as @a at @s if score @s player.state.inhand.gun = @s item.id.deagle run item modify entity @s weapon.mainhand empdev:deagle/deagle
execute as @a at @s if score @s player.state.inhand.gun = @s item.id.deagle.onscope run item modify entity @s weapon.mainhand empdev:deagle/deagle_onscope
execute as @a at @s if score @s player.state.inhand.gun = @s item.id.deagle.running run item modify entity @s weapon.mainhand empdev:deagle/deagle_running
execute as @a at @s if score @s player.state.offhand.gun = @s item.id.deagle run item modify entity @s weapon.offhand empdev:deagle/deagle_back

execute as @a at @s if score @s player.state.inhand.gun = @s item.id.python run item modify entity @s weapon.mainhand empdev:python/python
execute as @a at @s if score @s player.state.inhand.gun = @s item.id.python.onscope run item modify entity @s weapon.mainhand empdev:python/python_onscope
execute as @a at @s if score @s player.state.inhand.gun = @s item.id.python.running run item modify entity @s weapon.mainhand empdev:python/python_running
execute as @a at @s if score @s player.state.offhand.gun = @s item.id.python run item modify entity @s weapon.offhand empdev:python/python_back