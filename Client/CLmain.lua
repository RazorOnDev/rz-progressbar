-- Client Side RZ Progress Bar --

--[[ EXAMPLE:
exports['rz-progressbar']:initProgress('Text in Progress', timeMS)
exports['rz-progressbar']:initProgress('Looting...', 30000)
]]

-- Test Command --
RegisterCommand('+testProgress', function(source, args, rawCommand)
	initProgress('Progress Bar test...', args[1])
end)

-- Functions --
initProgress = function(text, time) 
	SendNUIMessage({
		display = true,
		type = "ui",
		time = time,
		text = text
	})
end

RegisterNetEvent('rz-progressbar:initProgress', function(text, time)
    initProgress(text, time)
end)