function on_collision(other)
    this_tag = get_tag(this)
    other_tag = get_tag(other)

    if other_tag == "wall_0" or other_tag=="wall_1" then
        if left_collision(this, other) then
            -- avoid superposition
            this_x, this_y = get_position(this)
            this_velocity_x, this_velocity_y = get_velocity(this)

            other_x, other_y = get_position(other)
            other_width, other_height = get_size(other)

            set_position(this, other_x + other_width +1, this_y)

            -- react to collision/resolve collision
            set_velocity(this, this_velocity_x * -1, this_velocity_y)
        end

        if right_collision(this, other) then
            -- avoid superposition
            this_x, this_y = get_position(this)
            this_velocity_x, this_velocity_y = get_velocity(this)

            other_x, other_y = get_position(other)
            other_width, other_height = get_size(other)

            set_position(this, other_x - other_width -1, this_y)

            -- react to collision/resolve collision
            set_velocity(this, this_velocity_x * -1, this_velocity_y)

        end

        if top_collision(this, other) then
            -- avoid superposition
            this_x, this_y = get_position(this)
            this_velocity_x, this_velocity_y = get_velocity(this)

            other_x, other_y = get_position(other)
            other_width, other_height = get_size(other)

            set_position(this, this_x, other_y + other_height +1)

            -- react to collision/resolve collision
            set_velocity(this, this_velocity_x, this_velocity_y * -1)
        end

        if bottom_collision(this, other) then
            -- avoid superposition
            this_x, this_y = get_position(this)
            this_velocity_x, this_velocity_y = get_velocity(this)

            other_x, other_y = get_position(other)
            other_width, other_height = get_size(other)

            set_position(this, this_x, other_y - other_height -1)

            -- react to collision/resolve collision
            set_velocity(this, this_velocity_x, this_velocity_y * -1)
        end
    end

    if other_tag == "player" then
        -- add 50 to the player velocity
        increment_player_velocity(other, 50)

        -- destroy the speed boost entity
        kill_entity(this)

    end
end