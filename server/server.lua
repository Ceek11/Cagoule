ESX = exports["es_extended"]:getSharedObject()
nameItem = "cagoule"
ESX.RegisterUsableItem(nameItem, function(source)
    local _src = source 
    local xPlayer = ESX.GetPlayerFromId(_src)
    TriggerClientEvent("mettreLaCagoule", _src)
end)

RegisterNetEvent("useCagoule")
AddEventHandler("useCagoule", function(id)
    TriggerClientEvent("useCagoule", id)
end)