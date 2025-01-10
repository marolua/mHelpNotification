function MaroSendOrUpdateHelpNotification(firstText, letter, secondText, timeout)
    SendNUIMessage({
        action = 'update',
        firstText = firstText,
        letter = letter,
        secondText = secondText or '',
        timeoutDuration = timeout
    })
end

function MaroCloseHelpNotification()
    SendNUIMessage({
        action = 'close'
    })
end

RegisterNetEvent('MaroSendOrUpdateHelpNotification')
AddEventHandler('MaroSendOrUpdateHelpNotification', function(firstText, letter, secondText, timeout)
    MaroSendOrUpdateHelpNotification(firstText, letter, secondText, timeout)
end)

RegisterNetEvent('MaroCloseHelpNotification')
AddEventHandler('MaroCloseHelpNotification', function()
    MaroCloseHelpNotification()
end)

RegisterCommand('testhelpnotif', function(source, args)
    MaroSendOrUpdateHelpNotification('Appuyez sur', 'E', 'pour ouvrir le menu', 2000)
end, false)

RegisterCommand('testhelpnotifindef', function(source, args)
    MaroSendOrUpdateHelpNotification('Appuyez sur', 'E', 'pour ouvrir le menu', 0)
end, false)

RegisterCommand('closehelpnotif', function(source, args)
    MaroCloseHelpNotification()
end, false)

--Commentaire pour vous voici mon discord https://discord.gg/Tpv5gcQA