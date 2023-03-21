#### Adding library to your script:
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/x4h3/EasyFunctionsLib/main/library.lua"))()
```

# Documentation
#### Teleportation:
[- TpC](https://github.com/x4h3/EasyFunctionsLib/tree/main#tpc-teleport-to-coordinates)

[- TpP](https://github.com/x4h3/EasyFunctionsLib/tree/main#tpp-teleport-to-player)
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
TpP("player")
```

| Field | Type | Description | Required
| :-------- | :------- | :------- | :------- |
| player | string | Name of the player you want to teleport to | Yes |
