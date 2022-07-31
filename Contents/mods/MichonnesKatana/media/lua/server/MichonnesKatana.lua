MichonnesKatana = {}

function MichonnesKatana.onCreatePlayer(index, player)
  if (player:getModData().addedKatana == true) then
    return
  end

  local inventory = player:getInventory()
  inventory:AddItem("Michonne.Katana")
  player:getModData().addedKatana = true
end

function MichonnesKatana.onPlayerDeath(player)
  player:getModData().addedKatana = false
end

Events.OnCreatePlayer.Add(MichonnesKatana.onCreatePlayer);
Events.OnPlayerDeath.Add(MichonnesKatana.onPlayerDeath)
