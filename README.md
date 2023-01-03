# Wine Pyinstaller

Compile Python 3.x scripts with Pyinstaller into 32 bit Windows executables on Ubuntu with Wine.
This work has been forked and adapted from [kicsikrumpli/wine-pyinstaller](https://github.com/kicsikrumpli/wine-pyinstaller)

## Build Image

By default X window display is set to X virtual frame buffer as `DISPLAY=:1`. Winecfg popups are not displayed, button presses are automated.

To observe build time windows on external X server:

- `--build-arg DISPLAY=host.docker.internal:0`
- `xhost + 127.0.0.1` on host to enable connection to X11 from docker image
- enable XTEST for XQuartz on mac for automated keypresses to work

### Example Build

Running `make` will get python installer, wine sources and build docker image.

## Build 32-bit Windows Python Apps

- bind mount current directory with script to `/src/`
- assumes presence of `requirements.txt`
- docker run parameters are passed to pyinstaller

### Example Run

````bash
docker run -it -v $(pwd):/src outscale-dev/wine-pyinstaller --clean --onefile my_python_script.py
````

## Run Bash in Container

````bash
docker run -it outscale-dev/wine-pyinstaller --bash
````

## Contributing

Feel free to open an issue to ask questions or raise an issue
