# Globe

Animated plymouth theme with rotating globe.

Modified from [vortex-ubuntu-plymouth-theme](https://github.com/emanuele-scarsella/globe-plymouth-theme)
and [hawt-rotor-plymouth-theme](https://github.com/andre-kotze/hawt-rotor-plymouth-theme)

## Dependencies

* plymouth, libplymouth5, plymouth-label
* Recommended: plymouth-x11
* Install dependencies with `sudo apt install plymouth libplymouth5 plymouth-label`

### Boot up splash screen

![boot up splash screen](demo_boot.png)

### Shutdown splash screen

![shutdown splash screen](demo_shutdown.png)

## Installation

* clone repo and enter the folder `globe-plymouth-theme` in terminal

```bash
git clone https://github.com/andre-kotze/globe-plymouth-theme.git
cd globe-plymouth-theme/
```

* make the `install` file executable

```bash
sudo chmod +x install
```

* execute the `install` file

```bash
sudo ./install
```

## Test

* navigate to `globe-plymouth-theme` folder from terminal

* make the `show-splash.sh` file executable

```bash
sudo chmod +x show-splash.sh
```

* execute the `show-splash.sh` file

```bash
sudo ./show-splash.sh
```

## Removal

* make the `uninstall` file executable

```bash
sudo chmod +x uninstall
```

* execute the `uninstall` file

```bash
sudo ./uninstall
```

* choose an existing installed plymouth theme to replace the uninstalled one

## Customisation

* change the colour of `globe/bg.png` in an image editor, to change the theme backgrouund colour

* replace the file `globe/bg.png` with any custom background image as `bg.png`

* reinstall

### License

GNU GENERAL PUBLIC LICENSE
Version 2, June 1991
For the comlete GPL v.2 license see the [LICENSE](LICENSE) file.
