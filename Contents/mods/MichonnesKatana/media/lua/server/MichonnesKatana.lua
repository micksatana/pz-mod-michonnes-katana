MichonnesKatana = {}

function MichonnesKatana.onCreatePlayer(index, player)
  if player:getHoursSurvived() > 1 then
    return
  end

  local inventory = player:getInventory()
  inventory:AddItem("Michonne.Katana")
end

Events.OnCreatePlayer.Add(MichonnesKatana.onCreatePlayer);
