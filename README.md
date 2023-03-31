#### Adding library to your script:
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/x4h3/EasyFunctionsLib/main/library.lua"))()
```

# Documentation
#### Teleportation:
[- TpC](https://github.com/x4h3/EasyFunctionsLib/tree/main#tpc-teleport-to-coordinates)

[- TpP](https://github.com/x4h3/EasyFunctionsLib/tree/main#tpp-teleport-to-player)
#### Randomization:
[- RNumber](https://github.com/x4h3/EasyFunctionsLib/tree/main#rnumber-random-number)

### TpC (Teleport To Coordinates)
`TpC` **will allow you to teleport to specified coordinates.**

#### Usage:
```lua
TpC(x, y, z)
```

| Field | Type | Description | Required
| :-------- | :------- | :------- | :------- |
| x | number | X coordinate | Yes |
| y | number | Y coordinate | Yes |
| z | number | Z coordinate | Yes |

### TpP (Teleport To Player)
`TpP` **will allow you to teleport to specified player.**

#### Usage:
```lua
TpP("plr")
```

| Field | Type | Description | Required
| :-------- | :------- | :------- | :------- |
| plr | string | Name of the player you want to teleport to | Yes |

### RNumber (Random Number)
`RNumber` **will generate a random number.**

#### Usage:
```lua
local randomNumber = RNumber(min, max)
```

| Field | Type | Description | Required
| :-------- | :------- | :------- | :------- |
| min | number | Minimum number | No |
| max | number | Maximum number | No |

#### If number not specified:
```lua
min = 1
max = 100
```

### RNumber (Random Number)
`pSpeed` **will generate a random number.**

#### Usage:
```lua
pSpeed(speed)
```

| Field | Type | Description | Required
| :-------- | :------- | :------- | :------- |
| speed | number | Speed number | No |

#### If number not specified:
```lua
speed = 16
```
