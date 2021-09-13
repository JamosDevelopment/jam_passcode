
local risultato = nil

RegisterNUICallback('result', function(data, cb)

    SendNUIMessage({
        menu = false
    })
    SetNuiFocus(false, false)

    if data.result ~= nil then
        risultato = data.result
    end

end)

function OpenPasscode(codice)
    risultato = nil

    SendNUIMessage({
        menu = true,
        code = json.encode(codice)
    })
    SetNuiFocus(true, true)

    
    while risultato == nil do 
        Wait(1)
    end

    if risultato == true then
        return true
    elseif risultato == false then
        return false
    elseif risultato == "vuoto" then
        return nil
    end

end

RegisterCommand("passcodetest",function()
    local codee = {
        one = false,
        two = false,
        three = true,
        four = false,
        five = true,
        six = false,
        seven = true,
        eight = false,
        nine = true
    }
    local result = OpenPasscode(codee)
    if result == true then
        print("right code")
    elseif result == false then
        print("wrong code")
    end
end)

exports('OpenPasscode', OpenPasscode)