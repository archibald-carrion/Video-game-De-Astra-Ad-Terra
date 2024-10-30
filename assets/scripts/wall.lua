function on_collision(other)
    this_tag = get_tag(this)
    other_tag = get_tag(other)

    if other_tag == "bullet" then
        kill_entity(other)
    end
end