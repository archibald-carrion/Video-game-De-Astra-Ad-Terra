scene = {
    -- sprites table
    sprites = {
        [0] = 
        {asset_id = "background", file_path = "./assets/images/background_0.png"},
    },

    -- sounds table
    sounds = {
        [0] =
        {sound_id = "other_sound",file_path ="./assets/sounds/lazer.mp3"},
    },

    -- music table
    music = {
        [0] =
        {music_id = "menu_music",file_path ="./assets/sounds/GAL_v1.mp3"},
    },

    -- font table
    fonts = {
        [0] = 
        {font_id = "arcade_classic_large", file_path = "./assets/fonts/prstart.ttf", font_size = 48},
        {font_id = "arcade_classic_font", file_path = "./assets/fonts/prstart.ttf", font_size = 24},
    },
    
    -- actions and mouse button table
    buttons = {
        [0] =
        {name = "mouse_left_button", button_code = 1}, -- SDL_BUTTON_LEFT
    },

    -- actions and keys table
    keys = {
        [0] =
        {name = "up", key = 119}, -- SDLK_w
        {name = "left", key = 97}, -- SDLK_a
        {name = "down", key = 115}, -- SDLK_s
        {name = "right", key = 100}, -- SDLK_d
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
        -- Main congratulation text
        {
            components = {
                text = {
                    text = "Congratulations",
                    font_id = "arcade_classic_large",
                    r = 255, g = 215, b = 0, a = 255  -- Golden color
                },
                transform = {
                    position = { x = 320, y = 100},
                    scale = { x = 1.5, y = 1.5},
                    rotation = 0.0
                },
            }
        },
        -- Reached Terra text
        {
            components = {
                text = {
                    text = "You  reached  Terra",
                    font_id = "arcade_classic_font",
                    r = 255, g = 255, b = 255, a = 255  -- White color
                },
                transform = {
                    position = { x = 350, y = 200},
                    scale = { x = 1.2, y = 1.2},
                    rotation = 0.0
                },
            }
        },
        -- Ominous message 1
        {
            components = {
                text = {
                    text = "However...",
                    font_id = "arcade_classic_font",
                    r = 150, g = 0, b = 0, a = 255  -- Dark red color
                },
                transform = {
                    position = { x = 450, y = 300},
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            }
        },
        -- Ominous message 2
        {
            components = {
                text = {
                    text = "Terra,  Cradle  of  humanity",
                    font_id = "arcade_classic_font",
                    r = 100, g = 0, b = 0, a = 255  -- Darker red color
                },
                transform = {
                    position = { x = 300, y = 380},
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            }
        },
        -- Ominous message 3
        {
            components = {
                text = {
                    text = "is  not  exactly  as  you  expected...",
                    font_id = "arcade_classic_font",
                    r = 50, g = 0, b = 0, a = 255  -- Very dark red color
                },
                transform = {
                    position = { x = 250, y = 440},
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            }
        },
        -- Return to main menu button
        {
            components = {
                clickable = {
                },
                script = {
                    path = "./assets/scripts/goto_main_menu.lua",
                },
                text = {
                    text = "Return  to  Main  Menu",
                    font_id = "arcade_classic_font",
                    r = 255, g = 255, b = 255, a = 255  -- White color
                },
                transform = {
                    position = { x = 350, y = 580},
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            }
        },
    }
}