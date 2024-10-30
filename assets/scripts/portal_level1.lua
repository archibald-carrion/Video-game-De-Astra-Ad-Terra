
function on_collision(other)
    other_tag = get_tag(other)
    if other_tag == "player" then

        -- -- get the player velocity to check if the play is fast enough to teleport using get_velocity
        -- velocity_x, velocity_y = get_velocity(other)
        -- velocity = math.sqrt(velocity_x * velocity_x + velocity_y * velocity_y)

        -- -- check if the player is fast enough to teleport
        -- if velocity > 300 then
        --     go_to_scene("level_02")
        -- end

        -- print("[LUA] Collision with player")
        -- -- check if player has key

        -- if player has key, teleport to next level
        velocity = get_player_velocity(other)
        -- print("[LUA] Player velocity: " .. velocity)

        if velocity >= 300 then
            go_to_scene("level_02")
        end

    end
end

function update()
    rotation = get_rotation(this)
    -- add 1 to the rotation, maybe I will change this to a random number later
    rotation = rotation + 1
    -- set the new rotation
    set_rotation(this, rotation)
end