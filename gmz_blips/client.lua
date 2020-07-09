local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
func = Tunnel.getInterface("gmz_roubo")
vRP = Proxy.getInterface("vRP")

local dynamicBlips = {}

RegisterNetEvent('gmz_blips:dynamicBlip:create')
AddEventHandler('gmz_blips:dynamicBlip:create',function(x,y,z , type, color, scale, name, blip_id)
    if dynamicBlips[blip_id] then
        RemoveBlip(dynamicBlips[blip_id])
    end

    dynamicBlips[blip_id] = AddBlipForCoord(x,y,z)
	SetBlipSprite(dynamicBlips[blip_id],type)
	SetBlipAsShortRange(dynamicBlips[blip_id],true)
	SetBlipColour(dynamicBlips[blip_id],color)
	SetBlipScale(dynamicBlips[blip_id],scale)

	if name then
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(name)
		EndTextCommandSetBlipName(dynamicBlips[blip_id])
    end
end)

RegisterNetEvent("gmz:resetBlips")
AddEventHandler("gmz:resetBlips", function()
    for k,v in pairs(dynamicBlips) do
        if dynamicBlips[k] then
            RemoveBlip(dynamicBlips[k])
        end
    end
end)