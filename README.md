# MusicPlayer

A Godot 4.3 addon that simplifies music playback while allowing for more dynamic music.

## Features

- **Layered tracks!**
  - Multiple stems for a track playing at once, allowing for music to be more dynamic
- Simple volume control
  - You can now adjust the volume of a track (and it's layers) using a normalized float
- Volume fading
  - You can fade the volume of a track using built-in functions
  - You can also cross-fade between tracks

## Installation

1. Download the latest relase of the project and extract its contents.

2. Move the `addons/music_player` folder into your project's `addons` folder.

3. Move `tracklist.json` into your project's root folder. You can make any changes to 

4. Open/reload the project.

5. Enable the Music Player plugin in Project > Project Settings > Plugins.

Once the plugin has been enabled, you can now use the Music Player by either:

- Adding a `MusicPlayer` node to your scene, or

- Using the `GlobalMusicPlayer` autoload for music to play across scenes!

## Usage

Loading and playing a song can be as simple as just typing this:

    GlobalMusicPlayer.load_track(track_name)

Given a track's name as referenced in `tracklist.json`, this snippet of code loads the track and plays it at full loudness after loading!

If you want to make some modifications to the track, like setting the volume of the track or its layers, you can get the current track by just calling:

    GlobalMusicPlayer.get_current_track()

Given a music track, you can do things like fading the volume:

    GlobalMusicPlayer.get_current_track().fade_volume(0.5)

This will fade the volume to half loudness for just 1 second.

Maybe you're done with a track and want to fade-transition to another. Just type:

    GlobalMusicPlayer.fade_to_track(track_name, 1.0, 2.0)

and for 2 seconds, the previous track fades out and gets unloaded. The new track loads, plays, and then fades in to full volume.

### Tracklist

`tracklist.json` should be located in the root of the project folder. Here is an example of a tracklist:

    {
        "tracks": [
            {
                "name": "Regal",
                "stream": [
                    "regal1.ogg",
                    "regal2.ogg"
                ]
            },
            {
                "name": "Hell",
                "stream": [
                    "hell1.ogg",
                    "hell2.ogg"
                ]
            }
        ]
    }

Every track comes with these pieces of information:

`name`: The name of the track. Idk what else to say

`stream`: What streams are associated with the track. Each stream is located in `res://asset/music`. You can change this in `addons/music_player/script/track.gd`.

## Planned features

- Editor UI to add/remove music to the tracklist
- Track BPM and time-signatures
- Adjust playback speed
- Time markers
- Music switching depending on time markers

## Like what you see?

Consider supporting me on [Ko-fi!](https://ko-fi.com/miguelisreal2401)