-- Client Side RZ Progress Bar --

--[[ EXAMPLE:
exports['rz-progressbar']:initProgress('Text in Progress', timeMS)
exports['rz-progressbar']:initProgress('Looting...', 30000)
]]

-- Test Command --
RegisterCommand('+testProgress', function(source, args, rawCommand)
	initProgress('Test Progress Bar...', args[1])
end)

-- Functions --
function initProgress(text, time) 
	SendNUIMessage({
		display = true,
		type = "ui",
		time = time,
		text = text
	})
end