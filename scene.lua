local Scene = {}

function Scene:new(name)
    local scene = {name = name}
    setmetatable(scene, self)
    self.__index = self
    return scene
end

function Scene:enter()
    print("Entering scene " .. self.name)
end

function Scene:exit()
    print("Exiting scene " .. self.name)
end

function Scene:draw()
end

function Scene:update(dt)
end

function Scene:keypressed(key)
end

function Scene:keyreleased(key)
end

function Scene:mousepressed(x, y, button)
end

function Scene:mousereleased(x, y, button)
end

return Scene