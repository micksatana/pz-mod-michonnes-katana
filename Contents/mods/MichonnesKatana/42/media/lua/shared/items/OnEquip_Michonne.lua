local function onEquipValidateSheathed(character, item)
  local inv = character:getInventory():getItems()

	for i = 0, inv:size() - 1 do
		local obj = inv:get(i)
    local fullType = obj:getFullType()

    if fullType == "Michonne.MichonnesKatana" then
      if character:isAttachedItem(obj) then
        obj:setWeaponSprite("Michonne.MichonnesKatana_Sheathed")
      elseif character:isEquipped(obj) then
        obj:setWeaponSprite("Michonne.MichonnesKatana")
      end
    end
	end
end

Events.OnEquipPrimary.Add(onEquipValidateSheathed)
Events.OnEquipSecondary.Add(onEquipValidateSheathed)
