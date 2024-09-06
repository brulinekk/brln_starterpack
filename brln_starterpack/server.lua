RegisterCommand('starterpack', function(source, args)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getGroup() == 'best' then
        if ESX.GetPlayerFromId(tonumber(args[1])) then
            TriggerClientEvent('brln:starterpack:openMenu', xPlayer.source, tonumber(args[1]))
        else
            xPlayer.showNotification('~r~Wpisz prawidłowe ID!')
        end
    end
end)

RegisterServerEvent('brln:starterpack:selectOptions', function(type, targetPlayer, guns)
    local player = ESX.GetPlayerFromId(targetPlayer)
    if type == 'org_starterpack' then
        if guns == 'vintagepistol' then
            print('(#DEBUG-SNAILY_CORE-STARTERPACK) VINTAGEPACK ADDED')
            player.addInventoryWeapon('WEAPON_VINTAGEPISTOL', 75, 125)
            player.addInventoryItem('krotkofalowka', 750)
            player.addInventoryItem('kawa', 1000)
        elseif guns == 'snspistol_mk2' then
            print('(#DEBUG-SNAILY_CORE-STARTERPACK) SNSPACK ADDED')
            player.addInventoryWeapon('WEAPON_SNSPISTOL_MK2', 75, 125)
            player.addInventoryItem('krotkofalowka', 750)
            player.addInventoryItem('kawa', 1000)
        end
    end
end)