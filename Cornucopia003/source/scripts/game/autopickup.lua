gd.autopickup = {}

function gd.autopickup.onPickup( looterId, objectId )
	local player = Player.Get( looterId )
	local item = Object.Get( objectId )
	local itemName = item:GetName()

	local dbr = string.gsub( itemName, "autopickup/", "" )
	player:GiveItem( dbr, 1, false )
end
