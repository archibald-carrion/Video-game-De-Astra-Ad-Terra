
scene = {
    -- sprites table
    sprites = {
        [0] = 
        {asset_id = "enemy_spider_small", file_path = "./assets/images/enemy_spider_small.png"},
        {asset_id = "enemy_circle", file_path = "./assets/images/enemy_circle_thing.png"},
        {asset_id = "enemy_circle_red", file_path = "./assets/images/enemy_circle_thing_red.png"},
        {asset_id = "player_ship", file_path = "./assets/images/admiral_ship_sprite_sheet.png"},
        {asset_id = "background", file_path = "./assets/images/background_0.png"},
        {asset_id = "wall_0", file_path = "./assets/images/wall_0.png"},
        {asset_id = "wall_1", file_path = "./assets/images/wall_1.png"},
        {asset_id = "meteor_0", file_path = "./assets/images/meteor_0.png"},
        {asset_id = "orange_portal", file_path = "./assets/images/orange_portal.png"},
        {asset_id = "bullet", file_path = "./assets/images/bullet_more_visible.png"},
        {asset_id = "speed_boost", file_path = "./assets/images/speed_boost.png"},
    },

    -- sounds table
    sounds = {
        [0] =
        {sound_id = "lazer",file_path ="./assets/sounds/lazer.mp3"},
    },

    -- music table
    music = {
        [0] =
        {music_id = "menu_music", file_path ="./assets/sounds/GAL_v1.mp3"},
        {music_id = "first_level_music", file_path ="./assets/sounds/HBS.mp3"},
    },

    -- font table
    fonts = {
        [0] = 
        {font_id = "font_0", file_path = "./assets/fonts/highway_gothic.ttf", font_size = 32},
        {font_id = "arcade_classic_font", file_path = "./assets/fonts/ARCADECLASSIC.TTF", font_size = 32},

    },
    
    -- actions and keys table
    keys = {
        [0] =
        {name = "up", key = 119}, -- SDLK_w
        {name = "left", key = 97}, -- SDLK_a
        {name = "down", key = 115}, -- SDLK_s
        {name = "right", key = 100}, -- SDLK_d
        {name = "shoot", key = 32}, -- SDLK_SPACE
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

        -- -- bullet
        -- {
        --     components = {
        --         box_collider = {
        --             width = 8,
        --             height = 8,
        --             offset = {x = 0, y= 0},
        --         },
        --         rigid_body = {
        --             velocity = {x = 0, y = 0},
        --         },
        --         script = {
        --             path = "./assets/scripts/bullet.lua"
        --         },
        --         sprite = {
        --             asset_id = "bullet",
        --             width = 8,
        --             height = 8,
        --             src_rect = {x = 0, y = 0},
        --         },
        --         tag = {
        --             tag = "bullet",
        --         },
        --         transform = {
        --             position = { x = 100, y = 100},
        --             scale = { x = 1.0, y = 1.0},
        --             rotation = 0.0
        --         },
        --         player_score = {
        --             player_score = 0
        --         }
        --     }
        -- },

        -- player
        {
            components = {
                animation = {
                    num_frames = 3,
                    frame_speed_rate = 5,
                    is_loop = true
                },
                camera_follow = {},
                tag = {
                    tag = "player",
                },
                box_collider = {
                    width = 32*2,
                    height = 32*2,
                    offset = {x = 0, y= 0},
                },
                rigid_body = {
                    velocity = {x = 0, y = 0},
                },
                script = {
                    path = "./assets/scripts/player.lua"
                },
                sprite = {
                    asset_id = "player_ship",
                    width = 32,
                    height = 32,
                    src_rect = {x = 16, y = 0},
                },
                transform = {
                    position = { x = 1500, y = 300},
                    scale = { x = 2.0, y =2.0},
                    rotation = 0.0
                },
                player_velocity = {
                    player_velocity = 150
                }
            }
        },

        -- speed boost 1
        {
            components = {
                animation = {
                    num_frames = 2,
                    frame_speed_rate = 5,
                    is_loop = true
                },
                box_collider = {
                    width = 32,
                    height = 32,
                    offset = {x = 0, y= 0},
                },
                rigid_body = {
                    velocity = {x = 100, y = 0},
                },
                script = {
                    path = "./assets/scripts/speed_boost.lua"
                },
                sprite = {
                    asset_id = "speed_boost",
                    width = 32,
                    height = 32,
                    src_rect = {x = 0, y = 0},
                },
                tag = {
                    tag = "speed_boost",
                },
                transform = {
                    position = { x = 500, y = 600},
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                }
            }
        },

         -- enemy_circle of speed boost 1
         {
            components = {
                animation = {
                    num_frames = 2,
                    frame_speed_rate = 2,
                    is_loop = true
                },
                script = {
                    path = "./assets/scripts/enemy_circle_small.lua"
                },
                box_collider = {
                    width = 64,
                    height = 64,
                    offset = {x = 0, y= 0},
                },
                rigid_body = {
                    velocity = {x = 110, y = 0},
                },
                sprite = {
                    asset_id = "enemy_circle",
                    width = 32,
                    height = 32,
                    src_rect = {x = 16, y = 0},
                },
                tag = {
                    tag = "enemy",
                },
                transform = {
                    position = { x = 500, y = 350},
                    scale = { x = 2.0, y = 2.0},
                    rotation = 0.0
                }
            }
        },

        -- enemy_circle of speed boost 1
        {
            components = {
                animation = {
                    num_frames = 2,
                    frame_speed_rate = 2,
                    is_loop = true
                },
                script = {
                    path = "./assets/scripts/enemy_circle_small.lua"
                },
                box_collider = {
                    width = 64,
                    height = 64,
                    offset = {x = 0, y= 0},
                },
                rigid_body = {
                    velocity = {x = -110, y = 0},
                },
                sprite = {
                    asset_id = "enemy_circle",
                    width = 32,
                    height = 32,
                    src_rect = {x = 16, y = 0},
                },
                tag = {
                    tag = "enemy",
                },
                transform = {
                    position = { x = 500, y = 500},
                    scale = { x = 2.0, y = 2.0},
                    rotation = 0.0
                }
            }
        },

         -- speed boost 2
         {
            components = {
                animation = {
                    num_frames = 2,
                    frame_speed_rate = 5,
                    is_loop = true
                },
                box_collider = {
                    width = 32,
                    height = 32,
                    offset = {x = 0, y= 0},
                },
                rigid_body = {
                    velocity = {x = 100, y = 0},
                },
                script = {
                    path = "./assets/scripts/speed_boost.lua"
                },
                sprite = {
                    asset_id = "speed_boost",
                    width = 32,
                    height = 32,
                    src_rect = {x = 0, y = 0},
                },
                tag = {
                    tag = "speed_boost",
                },
                transform = {
                    position = { x = 2500, y = 600},
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                }
            }
        },

        -- enemy_circle of speed boost 2
        {
            components = {
                animation = {
                    num_frames = 2,
                    frame_speed_rate = 2,
                    is_loop = true
                },
                script = {
                    path = "./assets/scripts/enemy_circle_small.lua"
                },
                box_collider = {
                    width = 64,
                    height = 64,
                    offset = {x = 0, y= 0},
                },
                rigid_body = {
                    velocity = {x = 110, y = 0},
                },
                sprite = {
                    asset_id = "enemy_circle",
                    width = 32,
                    height = 32,
                    src_rect = {x = 16, y = 0},
                },
                tag = {
                    tag = "enemy",
                },
                transform = {
                    position = { x = 2500, y = 350},
                    scale = { x = 2.0, y = 2.0},
                    rotation = 0.0
                }
            }
        },

        -- enemy_circle of speed boost 2
        {
            components = {
                animation = {
                    num_frames = 2,
                    frame_speed_rate = 2,
                    is_loop = true
                },
                script = {
                    path = "./assets/scripts/enemy_circle_small.lua"
                },
                box_collider = {
                    width = 64,
                    height = 64,
                    offset = {x = 0, y= 0},
                },
                rigid_body = {
                    velocity = {x = -110, y = 0},
                },
                sprite = {
                    asset_id = "enemy_circle",
                    width = 32,
                    height = 32,
                    src_rect = {x = 16, y = 0},
                },
                tag = {
                    tag = "enemy",
                },
                transform = {
                    position = { x = 2500, y = 500},
                    scale = { x = 2.0, y = 2.0},
                    rotation = 0.0
                }
            }
        },

        -- speed boost 3 (bottom left box)
        {
            components = {
                animation = {
                    num_frames = 2,
                    frame_speed_rate = 5,
                    is_loop = true
                },
                box_collider = {
                    width = 32,
                    height = 32,
                    offset = {x = 0, y= 0},
                },
                rigid_body = {
                    velocity = {x = 100, y = 0},
                },
                script = {
                    path = "./assets/scripts/speed_boost.lua"
                },
                sprite = {
                    asset_id = "speed_boost",
                    width = 32,
                    height = 32,
                    src_rect = {x = 0, y = 0},
                },
                tag = {
                    tag = "speed_boost",
                },
                transform = {
                    position = { x = 500, y = 2100},
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                }
            }
        },

        -- enemy_circle of speed boost 3
        {
            components = {
                animation = {
                    num_frames = 2,
                    frame_speed_rate = 2,
                    is_loop = true
                },
                script = {
                    path = "./assets/scripts/enemy_circle_small.lua"
                },
                box_collider = {
                    width = 64,
                    height = 64,
                    offset = {x = 0, y= 0},
                },
                rigid_body = {
                    velocity = {x = 110, y = 0},
                },
                sprite = {
                    asset_id = "enemy_circle",
                    width = 32,
                    height = 32,
                    src_rect = {x = 16, y = 0},
                },
                tag = {
                    tag = "enemy",
                },
                transform = {
                    position = { x = 500, y = 2250},
                    scale = { x = 2.0, y = 2.0},
                    rotation = 0.0
                }
            }
        },

        -- enemy_circle of speed boost 3
        {
            components = {
                animation = {
                    num_frames = 2,
                    frame_speed_rate = 2,
                    is_loop = true
                },
                script = {
                    path = "./assets/scripts/enemy_circle_small.lua"
                },
                box_collider = {
                    width = 64,
                    height = 64,
                    offset = {x = 0, y= 0},
                },
                rigid_body = {
                    velocity = {x = -110, y = 0},
                },
                sprite = {
                    asset_id = "enemy_circle",
                    width = 32,
                    height = 32,
                    src_rect = {x = 16, y = 0},
                },
                tag = {
                    tag = "enemy",
                },
                transform = {
                    position = { x = 500, y = 2350},
                    scale = { x = 2.0, y = 2.0},
                    rotation = 0.0
                }
            }
        },

        -- 4th boost
        {
            components = {
                animation = {
                    num_frames = 2,
                    frame_speed_rate = 5,
                    is_loop = true
                },
                box_collider = {
                    width = 32,
                    height = 32,
                    offset = {x = 0, y= 0},
                },
                rigid_body = {
                    velocity = {x = 100, y = 0},
                },
                script = {
                    path = "./assets/scripts/speed_boost.lua"
                },
                sprite = {
                    asset_id = "speed_boost",
                    width = 32,
                    height = 32,
                    src_rect = {x = 0, y = 0},
                },
                tag = {
                    tag = "speed_boost",
                },
                transform = {
                    position = { x = 2500, y = 2100},
                    scale = { x = 1.0, y = 1.0},
                    rotation = 0.0
                }
            }
        },

        -- enemy_circle of speed boost 4
        {
            components = {
                animation = {
                    num_frames = 2,
                    frame_speed_rate = 2,
                    is_loop = true
                },
                script = {
                    path = "./assets/scripts/enemy_circle_small.lua"
                },
                box_collider = {
                    width = 64,
                    height = 64,
                    offset = {x = 0, y= 0},
                },
                rigid_body = {
                    velocity = {x = 110, y = 0},
                },
                sprite = {
                    asset_id = "enemy_circle",
                    width = 32,
                    height = 32,
                    src_rect = {x = 16, y = 0},
                },
                tag = {
                    tag = "enemy",
                },
                transform = {
                    position = { x = 2500, y = 2250},
                    scale = { x = 2.0, y = 2.0},
                    rotation = 0.0
                }
            }
        },

        -- enemy_circle of speed boost 4
        {
            components = {
                animation = {
                    num_frames = 2,
                    frame_speed_rate = 2,
                    is_loop = true
                },
                script = {
                    path = "./assets/scripts/enemy_circle_small.lua"
                },
                box_collider = {
                    width = 64,
                    height = 64,
                    offset = {x = 0, y= 0},
                },
                rigid_body = {
                    velocity = {x = -110, y = 0},
                },
                sprite = {
                    asset_id = "enemy_circle",
                    width = 32,
                    height = 32,
                    src_rect = {x = 16, y = 0},
                },
                tag = {
                    tag = "enemy",
                },
                transform = {
                    position = { x = 2500, y = 2350},
                    scale = { x = 2.0, y = 2.0},
                    rotation = 0.0
                }
            }
        },

        -- orange portal
        {
            components = {
                animation = {
                    num_frames = 3,
                    frame_speed_rate = 5,
                    is_loop = true
                },
                box_collider = {
                    width = 64,
                    height = 64,
                    offset = {x = 0, y= 0},
                },
                rigid_body = {
                    velocity = {x = 0, y = 0},
                },
                script = {
                    path = "./assets/scripts/portal_level3.lua"
                },
                sprite = {
                    asset_id = "orange_portal",
                    width = 32,
                    height = 32,
                    src_rect = {x = 0, y = 0},
                },
                tag = {
                    tag = "portal",
                },
                transform = {
                    position = { x = 1500, y = 2100},
                    scale = { x = 2.0, y = 2.0},
                    rotation = 0.0
                }
            }
        },


        -- enemies

            -- small spider enemies bouncing horizontally
            -- enemy_spider_small 1
            {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 1,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_spider_small.lua"
                    },
                    box_collider = {
                        width = 64,
                        height = 64,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = -50, y = 0},
                    },
                    sprite = {
                        asset_id = "enemy_spider_small",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 700, y = 750},
                        scale = { x = 2.0, y = 2.0},
                        rotation = 0.0
                    }
                }
            },

            -- enemy_spider_small 2
            {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 1,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_spider_small.lua"
                    },
                    box_collider = {
                        width = 64,
                        height = 64,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = 50, y = 0},
                    },
                    sprite = {
                        asset_id = "enemy_spider_small",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 2300, y = 750},
                        scale = { x = 2.0, y = 2.0},
                        rotation = 0.0
                    }
                }
            },

            -- enemy_spider_small 3
            {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 1,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_spider_small.lua"
                    },
                    box_collider = {
                        width = 64,
                        height = 64,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = -50, y = 0},
                    },
                    sprite = {
                        asset_id = "enemy_spider_small",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 700, y = 2000},
                        scale = { x = 2.0, y = 2.0},
                        rotation = 0.0
                    }
                }
            },

            -- enemy_spider_small 4
            {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 1,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_spider_small.lua"
                    },
                    box_collider = {
                        width = 64,
                        height = 64,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = 50, y = 0},
                    },
                    sprite = {
                        asset_id = "enemy_spider_small",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 2300, y = 2000},
                        scale = { x = 2.0, y = 2.0},
                        rotation = 0.0
                    }
                }
            },

            -- enemy_spider_small 5
            {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 1,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_spider_small.lua"
                    },
                    box_collider = {
                        width = 64,
                        height = 64,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = 50, y = 0},
                    },
                    sprite = {
                        asset_id = "enemy_spider_small",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 300, y = 700},
                        scale = { x = 2.0, y = 2.0},
                        rotation = 0.0
                    }
                }
            },

            -- enemy_spider_small 6
            {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 1,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_spider_small.lua"
                    },
                    box_collider = {
                        width = 64,
                        height = 64,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = -50, y = 0},
                    },
                    sprite = {
                        asset_id = "enemy_spider_small",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 300, y = 2000},
                        scale = { x = 2.0, y = 2.0},
                        rotation = 0.0
                    }
                }
            },

            -- enemy_spider_small 7
            {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 1,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_spider_small.lua"
                    },
                    box_collider = {
                        width = 64,
                        height = 64,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = -50, y = 0},
                    },
                    sprite = {
                        asset_id = "enemy_spider_small",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 2300, y = 700},
                        scale = { x = 2.0, y = 2.0},
                        rotation = 0.0
                    }
                }
            },

            -- enemy_spider_small 8
            {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 1,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_spider_small.lua"
                    },
                    box_collider = {
                        width = 64,
                        height = 64,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = -50, y = 0},
                    },
                    sprite = {
                        asset_id = "enemy_spider_small",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 2000, y = 1100},
                        scale = { x = 2.0, y = 2.0},
                        rotation = 0.0
                    }
                }
            },

            -- enemy_spider_small 9
            {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 1,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_spider_small.lua"
                    },
                    box_collider = {
                        width = 64,
                        height = 64,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = -50, y = 0},
                    },
                    sprite = {
                        asset_id = "enemy_spider_small",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 200, y = 1250},
                        scale = { x = 2.0, y = 2.0},
                        rotation = 0.0
                    }
                }
            },

            -- enemy_spider_small 8
            {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 1,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_spider_small.lua"
                    },
                    box_collider = {
                        width = 64,
                        height = 64,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = -50, y = 0},
                    },
                    sprite = {
                        asset_id = "enemy_spider_small",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 500, y = 1400},
                        scale = { x = 2.0, y = 2.0},
                        rotation = 0.0
                    }
                }
            },

             -- enemy_spider_small 8
             {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 1,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_spider_small.lua"
                    },
                    box_collider = {
                        width = 64,
                        height = 64,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = 50, y = 0},
                    },
                    sprite = {
                        asset_id = "enemy_spider_small",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 750, y = 1450},
                        scale = { x = 2.0, y = 2.0},
                        rotation = 0.0
                    }
                }
            },


            -- meteor 1
            {
                components = {
                    box_collider = {
                        width = 64,
                        height = 64,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    script = {
                        path = "./assets/scripts/meteor.lua"
                    },
                    sprite = {
                        asset_id = "meteor_0",
                        width = 32,
                        height = 32,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "meteor",
                    },
                    transform = {
                        position = { x = 1200, y = 1200},
                        scale = { x = 2.0, y = 2.0},
                        rotation = 0.0
                    }
                }
            },

            -- meteor 2
            {
                components = {
                    box_collider = {
                        width = 128,
                        height = 128,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = 100, y = 0},
                    },
                    script = {
                        path = "./assets/scripts/meteor.lua"
                    },
                    sprite = {
                        asset_id = "meteor_0",
                        width = 32,
                        height = 32,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "meteor",
                    },
                    transform = {
                        position = { x = 1000, y = 1200},
                        scale = { x = 4.0, y = 4.0},
                        rotation = 0.0
                    }
                }
            },

            -- meteor 3
            {
                components = {
                    box_collider = {
                        width = 128,
                        height = 128,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = 100, y = 0},
                    },
                    script = {
                        path = "./assets/scripts/meteor.lua"
                    },
                    sprite = {
                        asset_id = "meteor_0",
                        width = 32,
                        height = 32,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "meteor",
                    },
                    transform = {
                        position = { x = 2000, y = 1000},
                        scale = { x = 4.0, y = 4.0},
                        rotation = 0.0
                    }
                }
            },

             -- meteor 4
             {
                components = {
                    box_collider = {
                        width = 128,
                        height = 128,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = 100, y = 0},
                    },
                    script = {
                        path = "./assets/scripts/meteor.lua"
                    },
                    sprite = {
                        asset_id = "meteor_0",
                        width = 32,
                        height = 32,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "meteor",
                    },
                    transform = {
                        position = { x = 200, y = 1400},
                        scale = { x = 4.0, y = 4.0},
                        rotation = 0.0
                    }
                }
            },

            -- meteor 5
            {
                components = {
                    box_collider = {
                        width = 128,
                        height = 128,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = -100, y = 0},
                    },
                    script = {
                        path = "./assets/scripts/meteor.lua"
                    },
                    sprite = {
                        asset_id = "meteor_0",
                        width = 32,
                        height = 32,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "meteor",
                    },
                    transform = {
                        position = { x = 700, y = 1600},
                        scale = { x = 4.0, y = 4.0},
                        rotation = 0.0
                    }
                }
            },

            -- meteor 6
            {
                components = {
                    box_collider = {
                        width = 128,
                        height = 128,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = -100, y = 0},
                    },
                    script = {
                        path = "./assets/scripts/meteor.lua"
                    },
                    sprite = {
                        asset_id = "meteor_0",
                        width = 32,
                        height = 32,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "meteor",
                    },
                    transform = {
                        position = { x = 2200, y = 1800},
                        scale = { x = 4.0, y = 4.0},
                        rotation = 0.0
                    }
                }
            },




            -- red circle enemies between the two first column of boxes
            -- enemy_circle 1
            {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 2,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_circle_not_small.lua"
                    },
                    box_collider = {
                        width = 96,
                        height = 96,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = 0, y = -300},
                    },
                    sprite = {
                        asset_id = "enemy_circle_red",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 1100, y = 500},
                        scale = { x = 3.0, y = 3.0},
                        rotation = 0.0
                    }
                }
            },

            -- enemy_circle 2
            {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 2,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_circle_not_small.lua"
                    },
                    box_collider = {
                        width = 96,
                        height = 96,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = 0, y = -300},
                    },
                    sprite = {
                        asset_id = "enemy_circle_red",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 850, y = 500},
                        scale = { x = 3.0, y = 3.0},
                        rotation = 0.0
                    }
                }
            },
            -- enemy_circle 3
            {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 2,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_circle_not_small.lua"
                    },
                    box_collider = {
                        width = 96,
                        height = 96,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = 0, y = -300},
                    },
                    sprite = {
                        asset_id = "enemy_circle_red",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 975, y = 2500},
                        scale = { x = 3.0, y = 3.0},
                        rotation = 0.0
                    }
                }
            },

            -- red circle enemies between the two second column of boxes
            -- enemy_circle 4
            {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 2,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_circle_not_small.lua"
                    },
                    box_collider = {
                        width = 96,
                        height = 96,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = 0, y = -300},
                    },
                    sprite = {
                        asset_id = "enemy_circle_red",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 1825, y = 500},
                        scale = { x = 3.0, y = 3.0},
                        rotation = 0.0
                    }
                }
            },

            -- enemy_circle 5
            {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 2,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_circle_not_small.lua"
                    },
                    box_collider = {
                        width = 96,
                        height = 96,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = 0, y = -300},
                    },
                    sprite = {
                        asset_id = "enemy_circle_red",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 2125, y = 500},
                        scale = { x = 3.0, y = 3.0},
                        rotation = 0.0
                    }
                }
            },

            -- enemy_circle 6
            {
                components = {
                    animation = {
                        num_frames = 2,
                        frame_speed_rate = 2,
                        is_loop = true
                    },
                    script = {
                        path = "./assets/scripts/enemy_circle_not_small.lua"
                    },
                    box_collider = {
                        width = 96,
                        height = 96,
                        offset = {x = 0, y= 0},
                    },
                    rigid_body = {
                        velocity = {x = 0, y = -300},
                    },
                    sprite = {
                        asset_id = "enemy_circle_red",
                        width = 32,
                        height = 32,
                        src_rect = {x = 16, y = 0},
                    },
                    tag = {
                        tag = "enemy",
                    },
                    transform = {
                        position = { x = 1975, y = 2500},
                        scale = { x = 3.0, y = 3.0},
                        rotation = 0.0
                    }
                }
            },


        -- WALLS
            -- first box, top left
            -- left side of firstbox
            {
                components = {
                    box_collider = {
                        width = 32,
                        height = 500,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 32,
                        height = 500,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 250, y = 200},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },
            -- right side of first box
            {
                components = {
                    box_collider = {
                        width = 32,
                        height = 500,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 32,
                        height = 500,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 750, y = 200},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },
            -- bottom side of first box
            {
                components = {
                    box_collider = {
                        width = 500,
                        height = 32,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 500,
                        height = 32,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 250, y = 668},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },

            --second box, top middle
            -- left side of second box
            {
                components = {
                    box_collider = {
                        width = 32,
                        height = 500,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 32,
                        height = 500,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 1250, y = 200},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },

            -- right side of second box
            {
                components = {
                    box_collider = {
                        width = 32,
                        height = 500,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 32,
                        height = 500,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 1750, y = 200},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },

            -- bottom side of second box
            {
                components = {
                    box_collider = {
                        width = 500,
                        height = 32,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 500,
                        height = 32,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 1250, y = 668},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },

            --third box, top right
            -- left side of third box
            {
                components = {
                    box_collider = {
                        width = 32,
                        height = 500,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 32,
                        height = 500,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 2250, y = 200},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },

            -- right side of third box
            {
                components = {
                    box_collider = {
                        width = 32,
                        height = 500,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 32,
                        height = 500,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 2750, y = 200},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },

            -- bottom side of third box
            {
                components = {
                    box_collider = {
                        width = 500,
                        height = 32,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 500,
                        height = 32,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 2250, y = 668},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },

            --fourth box, bottom left
            -- left side of fourth box
            {
                components = {
                    box_collider = {
                        width = 32,
                        height = 500,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 32,
                        height = 500,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 250, y = 2000},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },

            -- right side of fourth box
            {
                components = {
                    box_collider = {
                        width = 32,
                        height = 500,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 32,
                        height = 500,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 750, y = 2000},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },

            -- top side of fourth box
            {
                components = {
                    box_collider = {
                        width = 500,
                        height = 32,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 500,
                        height = 32,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 250, y = 2000},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },

            --fifth box, bottom middle
            -- left side of fifth box
            {
                components = {
                    box_collider = {
                        width = 32,
                        height = 500,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 32,
                        height = 500,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 1250, y = 2000},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },

            -- right side of fifth box
            {
                components = {
                    box_collider = {
                        width = 32,
                        height = 500,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 32,
                        height = 500,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 1750, y = 2000},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },

            -- top side of fifth box
            {
                components = {
                    box_collider = {
                        width = 500,
                        height = 32,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 500,
                        height = 32,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 1250, y = 2000},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },

            --sixth box, bottom right
            -- left side of sixth box
            {
                components = {
                    box_collider = {
                        width = 32,
                        height = 500,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 32,
                        height = 500,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 2250, y = 2000},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },

            -- right side of sixth box
            {
                components = {
                    box_collider = {
                        width = 32,
                        height = 500,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 32,
                        height = 500,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 2750, y = 2000},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },

            -- top side of sixth box
            {
                components = {
                    box_collider = {
                        width = 500,
                        height = 32,
                        offset = {x = 0, y= 0},
                    },
                    script = {
                        path = "./assets/scripts/wall.lua"
                    },
                    rigid_body = {
                        velocity = {x = 0, y = 0},
                    },
                    sprite = {
                        asset_id = "wall_1",
                        width = 500,
                        height = 32,
                        src_rect = {x = 0, y = 0},
                    },
                    tag = {
                        tag = "wall_1",
                    },
                    transform = {
                        position = { x = 2250, y = 2000},
                        scale = { x = 1.0, y = 1.0},
                        rotation = 0.0
                    }
                }
            },




            -- "invisible walls" to keep player in bounds
            
                -- large upper wall
                {
                    components = {
                        box_collider = {
                            width = 3000,
                            height = 32,
                            offset = {x = 0, y= 0},
                        },
                        script = {
                            path = "./assets/scripts/wall.lua"
                        },
                        rigid_body = {
                            velocity = {x = 0, y = 0},
                        },
                        sprite = {
                            asset_id = "wall_0",
                            width = 3000,
                            height = 32,
                            src_rect = {x = 0, y = 0},
                        },
                        tag = {
                            tag = "wall_0",
                        },
                        transform = {
                            position = { x = 0, y = -30},
                            scale = { x = 1.0, y = 1.0},
                            rotation = 0.0
                        }
                    }
                },
            
                -- large lower wall
                {
                    components = {
                        box_collider = {
                            width = 3000,
                            height = 32,
                            offset = {x = 0, y= 0},
                        },
                        script = {
                            path = "./assets/scripts/wall.lua"
                        },
                        rigid_body = {
                            velocity = {x = 0, y = 0},
                        },
                        sprite = {
                            asset_id = "wall_0",
                            width = 3000,
                            height = 32,
                            src_rect = {x = 0, y = 0},
                        },
                        tag = {
                            tag = "wall_0",
                        },
                        transform = {
                            position = { x = 0, y = 2715},
                            scale = { x = 1.0, y = 1.0},
                            rotation = 0.0
                        }
                    }
                },

                -- large left wall
                {
                    components = {
                        box_collider = {
                            width = 32,
                            height = 3000,
                            offset = {x = 0, y= 0},
                        },
                        script = {
                            path = "./assets/scripts/wall.lua"
                        },
                        rigid_body = {
                            velocity = {x = 0, y = 0},
                        },
                        sprite = {
                            asset_id = "wall_0",
                            width = 32,
                            height = 3000,
                            src_rect = {x = 0, y = 0},
                        },
                        tag = {
                            tag = "wall_0",
                        },
                        transform = {
                            position = { x = -30, y = 0},
                            scale = { x = 1.0, y = 1.0},
                            rotation = 0.0
                        }
                    }
                },

                -- large right wall
                {
                    components = {
                        box_collider = {
                            width = 32,
                            height = 3000,
                            offset = {x = 0, y= 0},
                        },
                        script = {
                            path = "./assets/scripts/wall.lua"
                        },
                        rigid_body = {
                            velocity = {x = 0, y = 0},
                        },
                        sprite = {
                            asset_id = "wall_0",
                            width = 32,
                            height = 3000,
                            src_rect = {x = 0, y = 0},
                        },
                        tag = {
                            tag = "wall_0",
                        },
                        transform = {
                            position = { x = 3000, y = 0},
                            scale = { x = 1.0, y = 1.0},
                            rotation = 0.0
                        }
                    }
                },
    }
}



    
-- end