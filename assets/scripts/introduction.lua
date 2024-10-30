scene = {

    -- sprites table
    sprites = {
        [0] = 
        {asset_id = "background", file_path = "./assets/images/space_background_0.png"},
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
        {font_id = "font_0", file_path = "./assets/fonts/highway_gothic.ttf", font_size = 32},
        {font_id = "arcade_classic_font", file_path = "./assets/fonts/ARCADECLASSIC.TTF", font_size = 32},
        {font_id = "press_start", file_path = "./assets/fonts/prstart.ttf", font_size = 24},
        {font_id = "press_start_32", file_path = "./assets/fonts/prstart.ttf", font_size = 32},
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
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
                clickable = {
                },
                script = {
                    path = "./assets/scripts/goto_level_1.lua",
                },
            }
        },
        -- First paragraph
        {
            components = {
                text = {
                    text = "In the forgotten corners of the galaxy,",
                    font_id = "press_start",
                    r = 255, g = 255, b = 255, a = 255
                },
                transform = {
                    position = { x = 50, y = 60},
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            },
        },
        {
            components = {
                text = {
                    text = "where stars burn cold and empires",
                    font_id = "press_start",
                    r = 255, g = 255, b = 255, a = 255
                },
                transform = {
                    position = { x = 50, y = 95},  -- Increased spacing
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            },
        },
        {
            components = {
                text = {
                    text = "crumble into dust, humanity drifts,",
                    font_id = "press_start",
                    r = 255, g = 255, b = 255, a = 255
                },
                transform = {
                    position = { x = 50, y = 130},  -- Increased spacing
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            },
        },
        {
            components = {
                text = {
                    text = "lost among the endless void.",
                    font_id = "press_start",
                    r = 255, g = 255, b = 255, a = 255
                },
                transform = {
                    position = { x = 50, y = 165},  -- Increased spacing
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            },
        },
        {
            components = {
                text = {
                    text = "After thousands of years of aimless",
                    font_id = "press_start",
                    r = 255, g = 255, b = 255, a = 255
                },
                transform = {
                    position = { x = 50, y = 200},  -- Increased spacing
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            },
        },
        {
            components = {
                text = {
                    text = "exploration, mankind stands divided",
                    font_id = "press_start",
                    r = 255, g = 255, b = 255, a = 255
                },
                transform = {
                    position = { x = 50, y = 235},  -- Increased spacing
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            },
        },
        {
            components = {
                text = {
                    text = "like never before.",
                    font_id = "press_start",
                    r = 255, g = 255, b = 255, a = 255
                },
                transform = {
                    position = { x = 50, y = 270},  -- Increased spacing
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            },
        },

        -- Second paragraph
        {
            components = {
                text = {
                    text = "But legends speak of ancient technology,",
                    font_id = "press_start",
                    r = 255, g = 255, b = 255, a = 255
                },
                transform = {
                    position = { x = 50, y = 320},  -- Increased spacing
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            },
        },
        {
            components = {
                text = {
                    text = "relics from an age when humans still",
                    font_id = "press_start",
                    r = 255, g = 255, b = 255, a = 255
                },
                transform = {
                    position = { x = 50, y = 355},  -- Increased spacing
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            },
        },
        {
            components = {
                text = {
                    text = "knew where they came from. One such",
                    font_id = "press_start",
                    r = 255, g = 255, b = 255, a = 255
                },
                transform = {
                    position = { x = 50, y = 390},  -- Increased spacing
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            },
        },
        {
            components = {
                text = {
                    text = "artifact has been found, and with it,",
                    font_id = "press_start",
                    r = 255, g = 255, b = 255, a = 255
                },
                transform = {
                    position = { x = 50, y = 425},  -- Increased spacing
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            },
        },
        {
            components = {
                text = {
                    text = "a spark of hope.",
                    font_id = "press_start",
                    r = 255, g = 255, b = 255, a = 255
                },
                transform = {
                    position = { x = 50, y = 460},  -- Increased spacing
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            },
        },

        -- Third paragraph
        {
            components = {
                text = {
                    text = "The stars beckon, but the answers lie",
                    font_id = "press_start",
                    r = 255, g = 255, b = 255, a = 255
                },
                transform = {
                    position = { x = 50, y = 510},  -- Increased spacing
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            },
        },
        {
            components = {
                text = {
                    text = "somewhere in the dark, on the long-lost path...",
                    font_id = "press_start",
                    r = 255, g = 255, b = 255, a = 255
                },
                transform = {
                    position = { x = 50, y = 545},  -- Increased spacing
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            },
        },
        -- Title
        {
            components = {
                text = {
                    text = "De Astra Ad Terra",
                    font_id = "press_start",
                    r = 255, g = 215, b = 0, a = 255  -- Golden color
                },
                transform = {
                    position = { x = 50, y = 600},
                    scale = { x = 1.5, y = 1.5},  -- Larger scale for the title
                    rotation = 0.0
                },
            },
        },
        -- button to continue
        {
            components = {
                clickable = {
                },
                script = {
                    path = "./assets/scripts/goto_level_1.lua",
                },
                text = {
                    text = "[click here to continue]",
                    font_id = "press_start_32",
                    r = 255, g = 215, b = 0, a = 255  -- Golden color
                },
                transform = {
                    position = { x = 50, y = 655},
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                },
            },
        },
    }

    -- music and sound effect table
}