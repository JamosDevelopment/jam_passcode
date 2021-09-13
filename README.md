# jam_passcode
 passcode system for everything
 
 this is an example of what you have to do to use this
 
```
    local code = {
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
    local result = exports.jam_passcode:OpenPasscode(code)
    if result == true then
        print("right code")
    elseif result == false then
        print("wrong code")
    end
```

This is what you see in game:
![image](https://user-images.githubusercontent.com/86268488/133113153-60294b6a-8956-4e6e-9da8-7042ed93c2cf.png)

