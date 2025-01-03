function on_collision(other)
    this_tag = get_tag(this)
    other_tag = get_tag(other)
    -- print("[LUA] Collision between this: "..this_tag.. " and other: "..other_tag)

   
if other_tag == "bullet" then
    kill_entity(other)
end

if other_tag == "wall_0" or other_tag=="wall_1" then

    this_x, this_y = get_position(this)
    this_velocity_x, this_velocity_y = get_velocity(this)

    other_x, other_y = get_position(other)
    other_width, other_height = get_size(other)

    if left_collision(this, other) then

        --print("[LUA] Left collision")
        set_position(this, other_x + other_width +1, this_y)
        -- react to collision/resolve collision
        set_velocity(this, this_velocity_x * -1, this_velocity_y)
    end

    if right_collision(this, other) then

        --print("[LUA] Right collision")
        set_position(this, this_x-10, this_y)
        -- react to collision/resolve collision
        set_velocity(this, this_velocity_x * -1, this_velocity_y)

    end

    if top_collision(this, other) then

        --print("[LUA] Top collision")
        set_position(this, this_x,this_y + 1)
        -- react to collision/resolve collision
        set_velocity(this, this_velocity_x, this_velocity_y * -1)

    end

    if bottom_collision(this, other) then
        
        --print("[LUA] Bottom collision")
        set_position(this, this_x,this_y-1)
        -- react to collision/resolve collision
        set_velocity(this, this_velocity_x, this_velocity_y * -1)

    end
end

-- player die when touching enemy
if other_tag == "player" then
    --print("[LUA] circle killed player")
    go_to_scene("fail_scene")
end
end

function update()
-- apply a rotation to the meteor
-- get the current rotation
rotation = get_rotation(this)
-- add 1 to the rotation, maybe I will change this to a random number later
rotation = rotation + 2
-- set the new rotation
set_rotation(this, rotation)
end