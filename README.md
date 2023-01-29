# CartConTroller
a roblox script for trolling in cart ride games.

# How to use?
paste this trash into your executor of choice

```lua
getgenv().cartsettings = {
    cartsfolder = game:GetService("Workspace"), -- change to the folder where all the carts are to reduce lag when clicking buttons
    -----------------------------------------------------------------------------
    offcolor = Color3.fromRGB(196, 40, 28), -- the color of the button when the cart is off, usually doesnt need to be changed
    oncolor = Color3.fromRGB(40, 127, 71), -- the color of the button when the cart is on, usually doesnt need to be changed
    -----------------------------------------------------------------------------
    upbuttonname = "Up", -- the name of the up button, usually doesnt need to be changed
    downbuttonname = "Down", -- the name of the down button, usually doesnt need to be changed
    onbuttonname = "On" -- the name of the on button, usually doesnt need to be changed
}
loadstring(game:HttpGet("https://github.com/grass4589/CartConTroller/blob/main/main.lua"))();
```
