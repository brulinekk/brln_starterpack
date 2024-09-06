RegisterNetEvent('brln:starterpack:openMenu', function(targetPlayer)
    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'snaily_starterpack', {
        align    = 'center',
        title    = 'WYBIERZ STARTERPACK',
        elements = {     			
            {label = 'SNS Pistol MK II x75', value = 'snspistol_mk2'},
            {label = 'Vintage Pistol x75', value = 'vintagepistol'}
        }
    }, function(data, menu)
        TriggerServerEvent('brln:starterpack:selectOptions', 'org_starterpack', targetPlayer, data.current.value)
    end, function(data, menu)
        menu.close()
    end)
end)