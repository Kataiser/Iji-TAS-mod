# Iji TAS mod
Tool-Assisted Speedrun mod for Iji 1.7

Please note that Iji was made by [Daniel Remar](https://twitter.com/reallyremar), and these modified game and source files are modified by me ([https://github.com/Kataiser](https://github.com/Kataiser)). You can find the game at http://remar.se/daniel/iji.php and the source code at http://remar.se/daniel/resources.php (in "Source codes and resources 1"). `iji_17_tas.gm81`, the main source file, requires a registered Game Maker 8.1 to load and compile. Music files are not included, copy them from your copy of the game or download them from [here](http://remar.se/daniel/games/ijimusic2.zip).

## Discord
https://discord.gg/8P9fjRW  
Please consider joining if you're at all interested!

## Download and installation
[Iji_TAS_mod.zip (14ish MB)](https://github.com/Kataiser/Iji-TAS-mod/releases/latest/download/Iji-TAS-mod.zip)  
Doesn't include an auto-updater, check back to https://github.com/Kataiser/Iji-TAS-mod occasionally for updates

## Syntax, controls, and documentation

**IMPORTANT:** this mod works by simulating key presses system-wide. As a result, defocusing the game window will result in the TAS not running and its inputs being sent wherever else. BE CAREFUL!

Keys: `escape, enter, up, down, left, right, z, x, c, a, s, d, q, 1-9`  
Line syntax: `-` after a key presses and holds it, `+` releases it, and neither presses it for 1 frame. The number afterward is the time in frames until the next step is processed (1 would be the very next frame).
`//` anywhere in the line (preferably at the beginning) is a comment and won't be executed.  
`save: ` command: creates a savestate file with the name after the colon (can include spaces). These *take a frame, clear current input*, and *are not invalidated.*  
`speed` command: sets the framerate of the game, default is 30. Useful for slow-motion and fast-forward. This doesn't take a frame.

Backspace: restart game  
Space: load a TAS file  
M: pause/unpause  
N: advance frame while paused  
B: stop TAS execution  
L: load savestate  
K: load most recently saved savestate

Debug text:  
\> Current line, step, and frame  
\> Held keys  
\> Frames until next step  
\> Target FPS, actual FPS, and activated instance count  

## Modifications
As per the rules of TAS modding, only the bare minimum of changes to the game have been made to allow the reading of the inputs from a file, along with some minor changes to make creation much easier without affecting gameplay and the final playback.

- Reading inputs from a chosen file, with guaranteed sync
- Saving and loading of savestates
- Pausing and frame-advancing
- Deterministic RNG
- Framerate control (due to the lack of delta-time in Game Maker 8.1, this doesn't affect gameplay)
- Debug text (will be toggleable at some point)
- Disabled Vsync

## It broke!
Sorry. This is a work-in-progress mod of a complex game that I didn't make, in a different version of an engine that's already being pushed to its limits by this game. There's a to-do page over at https://github.com/Kataiser/Iji-TAS-mod/projects/1, and any reproducible bugs specific to the mod should be added to https://github.com/Kataiser/Iji-TAS-mod/issues and/or mentioned on the Discord.

## Why not just use Hourglass?
I've already done a [TAS of this game](https://www.youtube.com/watch?v=eiYmJJUmzpI) using [Hourglass](https://github.com/TASVideos/hourglass-win32), and it's still a totally viable option. However, there were a few frustrations I had with it that I wanted to fix with this mod: you can't make changes to an existing TAS and have them propogate forward in time, you have to replay the entire TAS so far in fast-forward after reopening the game in order to continue, playback is laggy, it crashes occasionally, and it struggles to work with Iji 1.7. The only downside I'm aware of is that this is probably not allowed on (tasvideos.org)[http://tasvideos.org/], if that's a motivation for you.

## Contributing
If you made changes to or added a .tas file, here are the steps for sharing them.

1. Fork this repository (need a GitHub account of course)
2. Make changes in your fork, use a descriptive commit title
3. Create a pull request in this repo