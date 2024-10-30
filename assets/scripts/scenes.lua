
scenes = {
    [0] =
    {name = "main_menu", path = "./assets/scripts/scene_menu.lua"}, -- main menu where player can choose level to play
    {name = "introduction", path = "./assets/scripts/introduction.lua"}, -- main text explaining the context
    {name = "tutorial", path = "./assets/scripts/tutorial.lua"}, -- game tutorial, showing movement, shooting mechanics, enemies, and how to beat a level
    {name = "fail_scene", path = "./assets/scripts/fail_scene.lua"}, -- scene that appear when main ship is destroyed
    {name = "win_scene", path = "./assets/scripts/win_scene.lua"}, -- scene that appear when player wins the game

    -- basic cinematic to present the story and it's advancements
    {name = "cinematic_01", path = "./assets/scripts/cinematic_01.lua"},
    {name = "cinematic_02", path = "./assets/scripts/cinematic_02.lua"},
    {name = "cinematic_03", path = "./assets/scripts/cinematic_03.lua"},

    -- actual game levels
    {name = "level_01", path = "./assets/scripts/scene_01.lua"}, 
    {name = "level_02", path = "./assets/scripts/scene_02.lua"},
    {name = "level_03", path = "./assets/scripts/scene_03.lua"},

}