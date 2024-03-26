# Love2D for the Miyoo Mini (Plus)

This repository contains a port of the [Love2D](https://love2d.org/) (version 11.5) game engine for the Miyoo Mini (Plus) handheld gaming device. The port is based on the [SDL2 libraries](https://github.com/steward-fu/sdl2) by Steward.

## Installation

To install Love2D on your Miyoo Mini (Plus), follow these steps:

1. Copy the `love` folder from this repository to `/mnt/SDCARD/App/` on your Miyoo Mini (Plus). The final path should be `/mnt/SDCARD/App/love`.

2. Copy the Love2D game files you want to run to the `game` folder located at `/mnt/SDCARD/App/love/game`. This repository includes a demo app, so replace the existing files if necessary.

## Compatibility

### What works

- Graphics rendering
- Image loading and display
- Font loading and rendering

### What doesn't work

- Audio playback is significantly slower than expected.
- MP3 playback is not supported.

## Additional Considerations

When developing a Love2D game for the Miyoo Mini (Plus), it's important to set the default configuration values in the `conf.lua` file to account for the device's specifications. Here's an example:

```lua
function love.conf(t)
    t.window.width = 640
    t.window.height = 480
    t.window.fullscreentype = "exclusive"
    t.window.fullscreen = true
    t.window.vsync = 0
end
```

## Acknowledgements

This port wouldn't have been possible without the contributions of the following individuals:

- [Steward](https://github.com/steward-fu/sdl2) for the SDL2 port and the virtual GPU implementation with SwiftShader.
- [XK9274](https://github.com/XK9274/pico-8-wrapper-miyoo) for the Pico-8 wrapper that inspired and guided this project.

Thank you for your hard work and dedication to the Miyoo Mini (Plus) community!