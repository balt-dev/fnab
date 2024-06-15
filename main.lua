local GAME_STATE = require "shared.gamestate"

setmetatable(love, {__index = function (t, k)
    return GAME_STATE:get_scene()[k]
end})

function love.load()
end

