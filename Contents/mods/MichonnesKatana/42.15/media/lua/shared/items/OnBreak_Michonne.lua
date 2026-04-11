require "shared/Items/OnBreak"

function OnBreak.MichonnesKatana(item, player)
  local rand = newrandom()
  local roll = rand:random(0, 3)

  if roll == 0 then
    OnBreak.HeadHandler(item, player, "Michonne.MichonnesKatana_Shard", true, "Knife Shoulder", 0, true)
    OnBreak.HandleHandler(item, player, "Michonne.MichonnesKatana_Broken", false)
  elseif roll == 1 then
    OnBreak.HeadHandler(item, player, "Michonne.MichonnesKatana_Blade", true, "Knife Shoulder", 0, true)
    OnBreak.HandleHandler(item, player, "Michonne.MichonnesKatana_Handle", false)
  else
    OnBreak.HeadHandler(item, player, "Michonne.MichonnesKatana_Shard", true, "Knife Shoulder", 0, true)
    OnBreak.GroundHandler(item, player, "Michonne.MichonnesKatana_Blade_Broken")
    OnBreak.HandleHandler(item, player, "Michonne.MichonnesKatana_Handle", false)
  end
end

function OnBreak.MichonnesKatana_Broken(item, player)
  OnBreak.HeadHandler(item, player, "Michonne.MichonnesKatana_Blade_Broken", true, "Knife Shoulder", 0, true)
  OnBreak.HandleHandler(item, player, "Michonne.MichonnesKatana_Handle", false)
end
