Config = {
	{ 
		name = "Blip Teste", 
		pos = {497.68392944336,5593.4057617188,795.28533935547}, 
		permissions = {'siciliana.permissao'}, 
		sprite = 209, 
		scale = 1.0, 
		color = 35 
	},
	{ 
		name = "Blip 2", 
		pos = {455.39617919922,5572.5190429688,794.63262939453}, 
		permissions = {'policia.permissao'}, 
		sprite = 209, 
		scale = 3.0, 
		color = 35 
	},
}

async(function() Wait(1000) TriggerEvent("gmz:loadBlips", json.encode(Config)) end)

return Config