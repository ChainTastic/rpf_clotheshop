
-- blips on the map
-- blip sur la carte

local blips = {
   {title="valentine", id=1687768444, x=-322.25, y=803.97, z=116.95},
}

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = Citizen.InvokeNative(0x554d9d53f696d002, info.id, info.x, info.y, info.z)
    end      
end)

-- Clothe shop
-- magasin de vetement

Citizen.CreateThread(function()
    local checkbox2 = false
    WarMenu.CreateMenu('tenu', "Vetements")
    WarMenu.SetSubTitle('tenu', 'Acheter une Tenue')
    WarMenu.CreateSubMenu('tail', 'tenu', 'Tenue disponible')
    WarMenu.CreateSubMenu('tail2', 'tenu', 'Aller dans la creation')
     WarMenu.CreateSubMenu('tail3', 'tenu', 'Perso online de base')


    while true do

        local ped = GetPlayerPed(-1)
        local coords = GetEntityCoords(PlayerPedId())
        local model = GetHashKey("mp_male")
        local player = PlayerId()

        if WarMenu.IsMenuOpened('tenu') then

            if WarMenu.MenuButton('Perso de base', 'tail3') then 
            end

            if WarMenu.MenuButton('Creation Perso', 'tail2') then 
            end

            if WarMenu.MenuButton('Tenue complet', 'tail') then
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('tail') then
            if WarMenu.Button('Cowboy Barbe 1 $') then
                TriggerServerEvent("buy:clothe", 1, 30) 
            elseif WarMenu.Button('Foue blinder 2 $') then
                TriggerServerEvent("buy:clothe", 2, 1) 
            elseif WarMenu.Button('Fermier 1.5 $') then
                TriggerServerEvent("buy:clothe", 1.5, 2) 
            elseif WarMenu.Button('Cowboy en cuir Mexique 1.4 $') then
                TriggerServerEvent("buy:clothe", 1.4, 4) 
            elseif WarMenu.Button('Cowboy en cuir USA 0.5 $') then
                TriggerServerEvent("buy:clothe", 0.5, 5) 
            elseif WarMenu.Button('Cowboy Echarpe 0.5 $') then
                TriggerServerEvent("buy:clothe", 0.5, 6) 
            elseif WarMenu.Button('CowBoy cape 1 $') then
                TriggerServerEvent("buy:clothe", 1, 7) 
            elseif WarMenu.Button('Explorateur 0.2 $') then
                TriggerServerEvent("buy:clothe", 0.2, 8) 
            elseif WarMenu.Button('Explorateur gilet 0.4 $') then
                TriggerServerEvent("buy:clothe", 0.4, 9) 
            elseif WarMenu.Button('Chasseur 0.1') then
                TriggerServerEvent("buy:clothe", 0.1, 10) 
            elseif WarMenu.Button('Chasseur barbe 3 $') then
                TriggerServerEvent("buy:clothe", 3, 11) 
            elseif WarMenu.Button('Indien 0 $') then
                TriggerServerEvent("buy:clothe", 0, 12) 
            elseif WarMenu.Button('Indien frange $') then
                TriggerServerEvent("buy:clothe", 0.6, 13) 
            elseif WarMenu.Button('Braconnier 2 $') then
                TriggerServerEvent("buy:clothe", 2, 14) 
            elseif WarMenu.Button('Braconnier class rich 5 $') then
                TriggerServerEvent("buy:clothe", 5, 15) 
            elseif WarMenu.Button('Cowboy blon 7 $') then
                TriggerServerEvent("buy:clothe", 7, 36) 
            elseif WarMenu.Button('Cowboy favorie 0.6 $') then
                TriggerServerEvent("buy:clothe", 0.6, 37) 
            elseif WarMenu.Button('Cowboy favorie classe 1 $') then
                TriggerServerEvent("buy:clothe", 1, 38) 
            elseif WarMenu.Button('Manteau barde 3$') then
                TriggerServerEvent("buy:clothe", 3, 19) 
            elseif WarMenu.Button('Manteau moustache 2 $') then
                TriggerServerEvent("buy:clothe", 2, 20) 
            elseif WarMenu.Button('Cowboy pauvre 0 $') then
                TriggerServerEvent("buy:clothe", 0, 21) 
            elseif WarMenu.Button('Costume veste 3.2 $') then
                TriggerServerEvent("buy:clothe", 3.2, 22) 
            elseif WarMenu.Button('Bolero 3 $') then
                TriggerServerEvent("buy:clothe", 3, 23) 
            elseif WarMenu.Button('Cowboy Nice 4 $') then
                TriggerServerEvent("buy:clothe", 4, 24) 
            elseif WarMenu.Button('Cowboy Chaps 3.2 $') then
                TriggerServerEvent("buy:clothe", 3.2, 25) 
            elseif WarMenu.Button('Cowboy 3 $') then
                TriggerServerEvent("buy:clothe", 3, 26) 
            elseif WarMenu.Button('Cowboy Bordeau 4 $') then
                TriggerServerEvent("buy:clothe", 4, 27) 
            elseif WarMenu.Button('Manteau barde 3$') then
                TriggerServerEvent("buy:clothe", 3, 28) 
            elseif WarMenu.Button('Manteau moustache 2 $') then
                TriggerServerEvent("buy:clothe", 2, 29) 
            elseif WarMenu.Button('Cowboy pauvre 0 $') then
                TriggerServerEvent("buy:clothe", 0, 30) 
            elseif WarMenu.Button('Costume veste 3.2 $') then
                TriggerServerEvent("buy:clothe", 3.2, 31) 
            elseif WarMenu.Button('Bolero 3 $') then
                TriggerServerEvent("buy:clothe", 3, 32) 
            elseif WarMenu.Button('Cowboy Nice 4 $') then
                TriggerServerEvent("buy:clothe", 4, 33) 
            elseif WarMenu.Button('Cowboy Chaps 3.2 $') then
                TriggerServerEvent("buy:clothe", 3.2, 34) 
            elseif WarMenu.Button('Cowboy blond 3 $') then
                TriggerServerEvent("buy:clothe", 4, 36) 
            elseif WarMenu.Button('Cowboy Bordeau 4 $') then
                TriggerServerEvent("buy:clothe", 4, 35) 
            --elseif WarMenu.Button('Cowboy Bordeau 4 $') then -- for add clothe -- ajouter tenue 90 +
                --TriggerServerEvent("buy:clothe", 4, 35) 
            end

            WarMenu.Display()

        elseif WarMenu.IsMenuOpened('tail2') then   
            if WarMenu.Button('Creer le votre') then
               TriggerEvent('redemrp_skin:openCreator')
            --elseif WarMenu.Button('Perso online') then
                 --SetPlayerModel(ped, `mp_male`, true)
            --elseif WarMenu.Button('Perso Arthur') then
                 --SetPlayerModel(ped, `player_zero`, true) -- if you dont have redemrp_skin - si tu as pas redemrp_skin
            end

            WarMenu.Display()

        elseif WarMenu.IsMenuOpened('tail3') then   
            if WarMenu.Button('Peso online') then
               SetPlayerModel(ped, `mp_male`, true)
            --elseif WarMenu.Button('Perso Arthur') then
                 --SetPlayerModel(ped, `player_zero`, true) -- if you dont have redemrp_skin - si tu as pas redemrp_skin
            end

            WarMenu.Display()

        elseif (Vdist(coords.x, coords.y, coords.z, -322.25, 803.97, 116.95) < 1.0) then
               TriggerEvent("enter:clothe")
               if IsControlJustReleased(0, 0xC7B5340A) then
                WarMenu.OpenMenu('tenu')
               end
            --WarMenu.OpenMenu('tenu')
            WarMenu.Display()
        elseif (Vdist(coords.x, coords.y, coords.z, 1225.60, -1293.85, 76.90) < 1.0) then --added new shop
                if IsControlJustReleased(0, 0xC7B5340A) then
                WarMenu.OpenMenu('tenu')
               end
            WarMenu.Display()
        elseif (Vdist(coords.x, coords.y, coords.z, -248.717, 764.2324, 117.3572) < 1.0) then --added new shop
                if IsControlJustReleased(0, 0xC7B5340A) then
                WarMenu.OpenMenu('tenu')
               end
        end
        Citizen.Wait(0)
    end
end)

-- callback or?

RegisterNetEvent('cancel')
  AddEventHandler('cancel', function()
    SetTextScale(0.5, 0.5)
    --SetTextFontForCurrentCommand(1)
    local msg = "Tu as pas de cash !!!"
    local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", msg, Citizen.ResultAsLong())

    Citizen.InvokeNative(0xFA233F8FE190514C, str)
    Citizen.InvokeNative(0xE9990552DEC71600)
  end)

RegisterNetEvent('enter:clothe')
  AddEventHandler('enter:clothe', function()
    SetTextScale(0.5, 0.5)
    --SetTextFontForCurrentCommand(1)
    local msg = "Touche Entrée pour ouvrir le Menu"
    local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", msg, Citizen.ResultAsLong())

    Citizen.InvokeNative(0xFA233F8FE190514C, str)
    Citizen.InvokeNative(0xE9990552DEC71600)
  end)

-- save clothe

RegisterNetEvent('loadtenue')
AddEventHandler('loadtenue', function(kek) 

    SetPedOutfitPreset(PlayerPedId(), kek) 
    ---TriggerServerEvent("redemrp_skin:createSkin", kek) -- save on db work
end)

---- spawn npc

function lePlayerModel(name)
    local model = GetHashKey(name)
    local player = PlayerId()
    
    if not IsModelValid(model) then return end
    PerformRequest(model)
    
    if HasModelLoaded(model) then
        Citizen.InvokeNative(0xED40380076A31506, player, model, false)
        Citizen.InvokeNative(0x283978A15512B2FE, PlayerPedId(), true)
        SetModelAsNoLongerNeeded(model)
    end
end

local function PerformRequest(hash)
    print("requesting model " .. hash)

    RequestModel(hash, 0) -- RequestModel

    local times = 1

    print("requested " .. times .. " times")

    while not Citizen.InvokeNative(0x1283B8B89DD5D1B6, hash) do -- HasModelLoaded
        Citizen.InvokeNative(0xFA28FE3A6246FC30, hash, 0) -- RequestModel

        times = times + 1

        print("requested " .. times .. " times")

        Citizen.Wait(0)
        
        if times >= 100 then break end
    end
end