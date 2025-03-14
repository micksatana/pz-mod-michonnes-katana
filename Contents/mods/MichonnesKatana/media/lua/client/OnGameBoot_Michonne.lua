local function onGameBoot()
  if not ScriptManager.instance then return end

  local activeMods = getActivatedMods()

  for i = 0, activeMods:size() - 1 do
    local modID = activeMods:get(i):gsub("\\", "")

    if modID == "TKS" or modID == "KatanaSheath" then
      local item = ScriptManager.instance:getItem("Michonne.MichonnesKatana")
      item:DoParam("AttachmentType = Katana")
    end
  end
end

Events.OnGameBoot.Add(onGameBoot)
