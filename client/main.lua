ESX = exports["es_extended"]:getSharedObject()

HaveCagoule = false
RegisterNetEvent("mettreLaCagoule")
RegisterNetEvent("mettreLaCagoule", function()
    useCagoule()
end)


RegisterNetEvent("useCagoule")
AddEventHandler("useCagoule", function()
    ESX.ShowNotification("Quelqu'un viens de vous mettre une cagoule")
    HaveCagoule = not HaveCagoule
    while HaveCagoule do 
        wait = 1000
        DoScreenFadeOut(wait)
        Wait(0)
    end
    DoScreenFadeIn(1000)
end)

function useCagoule()
    local closestPlayer, closestPlayerDistance = ESX.Game.GetClosestPlayer()
    if closestPlayer ~= -1 and closestPlayerDistance <= 3 then
        TriggerServerEvent("useCagoule", GetPlayerServerId(closestPlayer), closestPlayerDistance)
    else
        ESX.ShowNotification("Personne dans les alentours")
    end
end


RegisterCommand("testCagoule", function()
    useCagoule()
end)