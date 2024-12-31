# Game development - De Astra Ad Terra :rocket:

![C++17](https://img.shields.io/badge/C++-17-blue?style=flat-square)
![Lua](https://img.shields.io/badge/Scripting-Lua-2C2D72?style=flat-square)
![Build Status](https://img.shields.io/badge/Build-Passing-brightgreen?style=flat-square)
![GitHub Repo Size](https://img.shields.io/github/repo-size/archibald-carrion/Video-game-De-Astra-Ad-Terra?style=flat-square)

## Game Description
This is a science fiction game where the player controls a spaceship that must avoid asteroids and enemy ships while shooting enemies.  
The game includes:  
- A main menu  
- An introduction screen providing context about the story  
- Three levels  
- A "death" screen displayed when the player dies, allowing redirection to any of the three levels  
- A "congratulation" screen that allows redirection to the main menu  

The game features background music and custom assets.  

## Controls
- **W**: Move the spaceship upward  
- **S**: Move the spaceship downward  
- **A**: Move the spaceship to the left  
- **D**: Move the spaceship to the right  
- **Space**: Shoot  
- **P**: Pause the game  

## Game Story
The game is set in a distant future where humanity has colonized other solar systems and galaxies. Over millennia, humanity has forgotten its origins and Earth, referred to as "Terra" in the game.  
After so much time, humans believe they have always lived in space, but a legend speaks of a small planet lost in the vastness of space—a planet that was humanity's origin, called "Terra."  

The player takes on the role of Captain Castellum. Upon discovering an ancient artifact in one of the colonies, the captain finds it to be a kind of map leading to a portal to "Terra." The captain decides to follow the map and uncover the truth about humanity's origins.  

After collecting the necessary artifacts, the captain reaches "Terra." The game ends with a "congratulation" screen, leaving the player wondering what the captain discovered on "Terra."  

## Game Objectives
To progress in the game, the player must:  
- Collect power-ups that increase movement speed. Narratively, these items represent ancient technologies that allow the ship to traverse portals to the next level.  
- Shoot enemies to achieve the highest score possible.  
- Avoid asteroids and enemy ships to stay alive.  
- Collect all necessary artifacts to advance to the next level.  

## Four Enemies
The game features four types of enemies:  
- **Asteroids**: Cannot be destroyed but can be avoided.  
- **Spider enemies**: Can be destroyed with one shot, awarding 10 points. They typically move slowly.  
- **Blue circular enemies**: Can be destroyed with one shot, awarding 15 points. They usually move faster than spider enemies and "roll."  
- **Red circular enemies**: Very large and cannot be destroyed.  

## Usage Guide
To compile the program, run the following command:  
```bash
make clean; make; make run
```  
The project was developed on Ubuntu 24.04 in WSL2 using the g++ 13.2.0 compiler.  

The Makefile was modified to work with my folder architecture.  

## Development Process
The game was developed using the engine provided in class, gradually adding the functionalities required for the assignment by following the available platform videos.  

Key modifications made to the engine include:  
- Adding an audio manager for background music and sound effects.  
- Adding new Lua bindings to load and play music and sound effects.  
- Fixing several bugs in the engine, such as a bug that failed to delete entities and components when changing scenes, which led to new entities inheriting components from the previous scene.  
- Adding a score system to track and display the player's score on the screen.  
- Implementing a shooting system that allows the player to shoot enemies infinitely, limited only by how fast they can press the spacebar.  
- Splitting the ECS file into several smaller files (component.hpp, entity.hpp, entity.cpp, system.hpp, and system.cpp) for better readability. The ECS.hpp file was modified to include these new files, without affecting engine functionality or runtime performance.  

Screenshots of the game in action are included below:  
![screenshot del menu del juego](documentation/main_menu.PNG)
![screenshot del primer nivel](documentation/level_01.PNG)
![screenshot del segundo nivel](documentation/level_02.PNG)
![screenshot del tercer nivel](documentation/level_03.PNG)
![screenshot de la pantalla de "muerte"](documentation/fail_screen.PNG)
![screenshot de la pantalla de "congratulation"](documentation/win_screen.PNG)


## Installing Required Libraries
To install the necessary libraries on Linux, run the following command:  
```bash
sudo apt install libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev libsdl2-mixer-dev lua5.3 liblua5.3-dev
```  

## Extra Points
To earn extra points, the following features were implemented:  
- [x] An audio manager to play background music and sound effects, using original audio by [Namlin](https://github.com/namlin).  
- [x] All graphic assets, except fonts and backgrounds, were created by [me](https://github.com/archibald-carrion) using [GIMP](https://www.gimp.org/).  

## Game Engine UML Diagram
```mermaid
classDiagram

    class Game {
        -window: SDL_Window*
        -camera: SDL_Rect
        -isRunning: bool
        -mPreviousFrame: int
        -isPaused: bool
        -map_height: int
        -map_width: int
        -player_location: std::tuple<int, int>
        -player_score: int
        -WINDOW_WIDTH: int
        -WINDOW_HEIGHT: int
        -renderer: SDL_Renderer*
        -registry: std::unique_ptr<Registry>
        -scene_manager: std::unique_ptr<SceneManager>
        -assets_manager: std::unique_ptr<AssetsManager>
        -events_manager: std::unique_ptr<EventManager>
        -controller_manager: std::unique_ptr<ControllerManager>
        -audio_manager: std::unique_ptr<AudioManager>
        -lua: sol::state
        +Game()
        +~Game()
        +processInput()
        +update()
        +render()
        +setup()
        +run_scene()
        +init()
        +run()
        +destroy()
        +print_game_data()
        +get_instance(): Game&
    }
    class SceneManager{
        -std::map<std::string, std::string> scenes
        -std::string next_scene
        -bool is_scene_running
        -std::unique_ptr<SceneLoader> scene_loader

        +get_next_scene()
        +load_scene_from_script()
        +load_scene()
        +set_next_scene()
        +is_current_scene_running()
        +start_scene()
        +stop_scene()
    }
    class AssetsManager {
        -textures: std::map<std::string, SDL_Texture*>
        -fonts: std::map<std::string, TTF_Font*>
        +AssetsManager()
        +~AssetsManager()
        +clear_assets()
        +add_texture(SDL_Renderer*, std::string, std::string)
        +get_texture(std::string): SDL_Texture*
        +add_font(std::string, std::string, int)
        +get_font(std::string): TTF_Font*
    }
    class EventManager {
        -subscribers: std::map<std::type_index, std::unique_ptr<handler_list>>
        +EventManager()
        +~EventManager()
        +reset()
        +subscribe_to_event<TEvent, TOwner>(TOwner*, void (TOwner::*)(TEvent&))
        +emit_event<TEvent, TArgs>(TArgs...)
    }

    class ControllerManager {
        -action_key_name: std::map<std::string, int>
        -key_state: std::map<int, bool>
        -mouse_buttons_name: std::map<std::string, int>
        -mouse_button_state: std::map<int, bool>
        -mouse_position_x: int
        -mouse_position_y: int
        +ControllerManager()
        +~ControllerManager()
        +clear()
        +add_key(std::string, int)
        +is_key_pressed(std::string): bool
        +update_key(std::string, bool)
        +update_key(int, bool)
        +set_key_to_pressed(int)
        +set_key_to_pressed(std::string)
        +set_key_to_up(int)
        +set_key_to_up(std::string)
        +add_mouse_button(std::string, int)
        +is_mouse_button_pressed(std::string): bool
        +update_mouse_button(int, bool)
        +set_mouse_position(int, int)
        +get_mouse_position(): std::tuple<int, int>
        +set_mouse_button_to_pressed(int)
        +set_mouse_button_to_up(int)
    }

    class AudioManager {
        -music_tracks: std::map<std::string, Mix_Music*>
        -sound_effects: std::map<std::string, Mix_Chunk*>
        +AudioManager()
        +~AudioManager()
        +add_music(std::string, std::string)
        +get_music(std::string): Mix_Music*
        +add_sound_effect(std::string, std::string)
        +get_sound_effect(std::string): Mix_Chunk*
        +play_music(std::string, int)
        +play_sound_effect(std::string, int)
        +stop_music(std::string)
        +stop_sound_effect(std::string)
        +stop_all_sounds()
        +clear_audio()
    }

    class Registry {
        -componentsPools: std::vector<std::shared_ptr<IPool>>
        -entityComponentSignatures: std::vector<Signature>
        -systems: std::unordered_map<std::type_index, std::shared_ptr<System>>
        -entities_to_be_added: std::set<Entity>
        -entities_to_be_killed: std::set<Entity>
        -free_ids: std::deque<int>
        +num_entities: int
        +Registry()
        +~Registry()
        +update()
        +create_entity(): Entity
        +kill_entity(Entity)
        +add_component<TComponent, TArgs>(Entity, TArgs...)
        +remove_component<TComponent>(Entity)
        +has_component<TComponent>(Entity): bool
        +get_component<TComponent>(Entity): TComponent&
        +add_system<TSystem, TArgs>(TArgs...)
        +remove_system<TSystem>(Entity)
        +has_system<TSystem>(Entity): bool
        +get_system<TSystem>(): TSystem&
        +add_entity_to_system(Entity)
        +remove_entity_from_system(Entity)
        +clear_all_entities()
    }
     class Entity {
        -id: int
        -registry: Registry*
        +Entity(int)
        +~Entity()
        +get_id(): int
        +kill()
        +operator==(const Entity& other) const: bool
        +operator!=(const Entity& other) const: bool
        +operator>(const Entity& other) const: bool
        +operator<(const Entity& other) const: bool   

        +add_component<TComponent, TArgs>(TArgs...)
        +remove_component<TComponent>()
        +has_component<TComponent>(): bool
        +get_component<TComponent>(): TComponent&
    }

    class System {
        -componentSignature: Signature
        -entities: std::vector<Entity>
        +System()
        +~System()
        +add_entity_to_system(Entity)
        +remove_entity_from_system(Entity)
        +get_entities(): std::vector<Entity>
        +get_signature(): const Signature&
        +RequireComponent<TComponent>()
    }


    class Component {
        +get_id() int
    }

    class SceneLoader {
        +SceneLoader()
        +~SceneLoader()
        +load_scene(std::string, sol::state&, std::unique_ptr<AssetsManager>&, std::unique_ptr<ControllerManager>&, std::unique_ptr<AudioManager>&, std::unique_ptr<Registry>&, SDL_Renderer*)
        -load_sounds(sol::table&, std::unique_ptr<AudioManager>&)
        -load_music(sol::table&, std::unique_ptr<AudioManager>&)
        -load_sprites(SDL_Renderer*, sol::table&, std::unique_ptr<AssetsManager>&)
        -load_fonts(sol::table&, std::unique_ptr<AssetsManager>&)
        -load_buttons(sol::table&, std::unique_ptr<ControllerManager>&)
        -load_keys_actions(sol::table&, std::unique_ptr<ControllerManager>&)
        -load_entities(sol::state&, sol::table&, std::unique_ptr<Registry>&)
    }


    SceneLoader "1" -- "1" SceneManager
    Game "1" -- "1" Registry
    Game "1" -- "1" SceneManager
    Game "1" -- "1" AssetsManager
    Game "1" -- "1" EventManager
    Game "1" -- "1" ControllerManager
    Game "1" -- "1" AudioManager
    Game "1" -- "1" Registry
    Registry "1" -- "*" Entity
    Registry "1" -- "*" System
    Entity "1" -- "0..*" Component
    System "*" -- "*" Entity

```

## Resources used for the game
- [arcade classic font](https://www.1001fonts.com/arcadeclassic-font.html)
- [background generator](https://deep-fold.itch.io/space-background-generator)
- Music made by game developer [Namlin] (https://github.com/namlin)


## TODO
- [ ] Implement new scene introducing the characters after intro scene in some sort of "cinematic"