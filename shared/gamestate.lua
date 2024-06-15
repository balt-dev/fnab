local scenes = require "scenes"

local GAME_STATE = {
    scene = "load"
    -- Add stuff here as needed
}

function GAME_STATE:switch(scene_name)
    local old_name
    if self.scene then
        old_name = self.scene
        scenes[self.scene]:exit()
    end
    self.scene = scene_name
    scenes[self.scene]:enter(old_name)
end

function GAME_STATE:get_scene()
    return scenes[self.scene]
end

return GAME_STATE