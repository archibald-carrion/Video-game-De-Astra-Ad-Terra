scene = {
    -- sprites table
    sprites = {
        [0] = 
        {asset_id = "background", file_path = "./assets/images/background_0.png"},
    },

    -- sounds table
    sounds = {
        [0] =
        {sound_id = "other_sound", file_path ="./assets/sounds/lazer.mp3"},
    },

    -- music table
    music = {
        [0] =
        {music_id = "game_over_music", file_path ="./assets/sounds/GAL_v1.mp3"}, -- change to actual game over music
    },

    -- font table
    fonts = {
        [0] = 
        {font_id = "font_0", file_path = "./assets/fonts/highway_gothic.ttf", font_size = 32},
        {font_id = "arcade_classic_font", file_path = "./assets/fonts/prstart.ttf", font_size = 32},
        {font_id = "arcade_classic_large", file_path = "./assets/fonts/prstart.ttf", font_size = 48},
    },
    
    -- actions and keys table
    keys = {
        [0] =
        {name = "up", key = 119}, -- SDLK_w
        {name = "left", key = 97}, -- SDLK_a
        {name = "down", key = 115}, -- SDLK_s
        {name = "right", key = 100}, -- SDLK_d
    },

    -- actions and mouse button table
    buttons = {
        [0] =
        {name = "mouse_left_button", button_code = 1}, -- SDL_BUTTON_LEFT
    },

    -- entities table
    entities = {
        [0] =
        -- Background
        {
            components = {
                sprite = {
                    asset_id = "background",
                    width = 3000,
                    height = 3000,
                    src_rect = {x = 0, y = 0},
                },
                transform = {
                    position = { x = 0, y = 0},
                    scale = { x = 1.5, y = 1.5},
                    rotation = 0.0
                },
            }
        },
        -- Mission Failed Title
        {
            components = {
                text = {
                    text = "Mission  Failed!",
                    font_id = "arcade_classic_large",
                    r = 255, g = 0, b = 0, a = 255  -- Red color
                },
                transform = {
                    position = { x = 100, y = 50},
                    scale = { x = 1.5, y = 1.5},
                    rotation = 0.0
                },
            }
        },
        -- Message
        {
            components = {
                text = {
                    text = "Avoid  touching  enemy  ships ",
                    font_id = "arcade_classic_font",
                    r = 255, g = 0, b = 0, a = 255  -- Red color
                },
                transform = {
                    position = { x = 100, y = 250},
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            }
        },
        -- Message
        {
            components = {
                text = {
                    text = "and  meteors to survive",
                    font_id = "arcade_classic_font",
                    r = 255, g = 0, b = 0, a = 255  -- Red color
                },
                transform = {
                    position = { x = 100, y = 300},
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            }
        },
        -- Level 1 Button
        {
            components = {
                clickable = {
                },
                script = {
                    path = "./assets/scripts/goto_level_1.lua",
                },
                text = {
                    text = "Level  01:  The  Beginning",
                    font_id = "arcade_classic_font",
                    r = 255, g = 255, b = 255, a = 255  -- White color
                },
                transform = {
                    position = { x = 100, y = 450},
                    scale = { x = 1.2, y = 1.2},
                    rotation = 0.0
                },
            }
        },
        -- Level 2 Button
        {
            components = {
                clickable = {
                },
                script = {
                    path = "./assets/scripts/goto_level_2.lua", -- change to goto level 01
                },
                text = {
                    text = "Level  02:  The  Journey",
                    font_id = "arcade_classic_font",
                    r = 200, g = 200, b = 200, a = 255  -- Light gray color
                },
                transform = {
                    position = { x = 100, y = 525},
                    scale = { x = 1.2, y = 1.2},
                    rotation = 0.0
                },
            }
        },
        -- Level 3 Button
        {
            components = {
                clickable = {
                },
                script = {
                    path = "./assets/scripts/goto_level_3.lua", -- change to goto level 3
                },
                text = {
                    text = "Level  03:  The  Discovery",
                    font_id = "arcade_classic_font",
                    r = 150, g = 150, b = 150, a = 255  -- Darker gray color
                },
                transform = {
                    position = { x = 100, y = 600},
                    scale = { x = 1.2, y = 1.2},
                    rotation = 0.0
                },
            }
        },
    }
}