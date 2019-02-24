--Made by Tazio

AddEventHandler('chatMessage', function(source, name, msg)

  if string.match(msg, "[12]?%d%d?%.[12]?%d%d?%.[12]?%d%d?%.[12]?%d%d?") then -- IP address
		CancelEvent()
		msg = msg:gsub("[12]?%d%d?%.[12]?%d%d?%.[12]?%d%d?%.[12]?%d%d?", "blocked_ip")
		TriggerClientEvent('chatMessage', -1, name, { 255, 255, 255 }, msg)
  end

	if string.match(msg, "https?://[%w-_%.%?%.:/%+=&]+") then -- Link
		CancelEvent()
		msg = msg:gsub("https?://[%w-_%.%?%.:/%+=&]+", "blocked_link")
		TriggerClientEvent('chatMessage', -1, name, { 255, 255, 255 }, msg)
	end
end)
