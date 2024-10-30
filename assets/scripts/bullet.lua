is_bullet_shot = false


function update()
    -- get the mouse position and check if the mouse_left_button is pressed
    if not is_bullet_shot then
        -- mouse_x, mouse_y = get_mouse_position()
        is_shot_button_pressed = is_mouse_button_pressed("mouse_left_button")
    
        if is_shot_button_pressed then
            -- shoot the bullet in the direction of the rotation
            rotation = get_rotation(this)

            -- rotation 0 is point to the top of the screen

            bullet_speed = 1000

            -- get the velocity of the bullet
            velocity_x = 0
            velocity_y = 0


            if rotation == 0 then
                velocity_y = -bullet_speed

            elseif rotation == 90 then
                velocity_x = bullet_speed
            
            elseif rotation == 180 then
                velocity_y = bullet_speed
            end
            
            if rotation == -90 then
                velocity_x = -bullet_speed
            end

            -- check for diagonal movement
            if rotation == 45 then
                velocity_x = bullet_speed
                velocity_y = -bullet_speed
            
            elseif rotation == 135 then

                velocity_x = bullet_speed
                velocity_y = bullet_speed
            
            elseif rotation == -45 then
                velocity_x = -bullet_speed
                velocity_y = -bullet_speed  
            
            elseif rotation == -135 then
                velocity_x = -bullet_speed
                velocity_y = bullet_speed
            end
            
            -- Set the velocity
            set_velocity(this, velocity_x, velocity_y)

            is_bullet_shot = true
        end
    -- else
    --     -- if bullet is shot, rotate the bullet to look like it is moving
    --     rotation = get_rotation(this)
    --     set_rotation(this, rotation + 10)
    end
end

function on_collision(other)
    other_tag = get_tag(other)

    -- if bullet shot, check if the bullet collided with a wall or enemy, then place the bullet at the player location
    if is_bullet_shot then
        if other_tag ~= "player" then
            is_bullet_shot = false
            reset_bullet(this)
        end


            -- place the bullet at the player location

            -- set rotation to player rotation
            -- set_rotation(this, get_rotation(player))

    end

    -- if bullet not shot, just place the bullet at the player location
    if other_tag == "player" then
        if not is_bullet_shot then
            other_x, other_y = get_position(other)

            -- place the bullet at the center of the player location, which is 32x32

            other_x = other_x + 32
            other_y = other_y + 32

            set_position(this, other_x, other_y)

            -- set rotation to player rotation
            set_rotation(this, get_rotation(other))
        end
    end



end