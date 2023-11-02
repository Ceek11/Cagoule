ESX = exports["es_extended"]:getSharedObject()
nameItem = "cagoule"
ESX.RegisterUsableItem(nameItem, function(source)
    local _src = source 
    TriggerClientEvent("mettreLaCagoule", _src)
end)

RegisterNetEvent("useCagoule")
AddEventHandler("useCagoule", function(id, closestPlayerDistance)
    local _src = source
    if closestPlayerDistance <= 3 then 
        TriggerClientEvent("useCagoule", id)
    else
        DropPlayer(_src, "Le cheat n'est pas bon")
    end
end)