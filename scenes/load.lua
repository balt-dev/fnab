local Scene = require "scene"

local load = Scene:new("load")

function load:draw()
    love.graphics.print("Hello World", 400, 300)
end

return load