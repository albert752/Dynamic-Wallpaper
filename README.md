# Dynamic-Wallpaper
A simple script that dynamicaly changes the wallaper according to the time
inspired on Mac OS X Mohave.

## Getting Started

### Prerequisites

You'll just need to install two dependencies:

**wget**

```
sudo apt install wget
```

**Nitrogen**

```
sudo apt install nitrogen
```

### Installing

If you want to use the script as a command, just run the following commands:

```
sudo cp ./DynWall.sh /bin/usr/DynWall
sudo chmod +x /bin/usr/DynWall 
```

Now you can try any hour by running:

```
DynWall debug <h> <m>
```

### Usage

To run the script use this command:

```
DynWall start <m>
```

Where `m` is the interval of minutes between checks.


## Authors

* **Albert Azemar i Rovira** - *Initial work* -
	[albert752](https://github.com/albert752)

* **Pol Perez** - *Initial work* -
	[mefiso](https://github.com/mefiso)


## License

This project is licensed under the MIT License - see the
[LICENSE](LICENSE) file for details

## Acknowledgments
* To our friend [Jaume Planas](https://github.com/jplanas98) to share his Mac
	with us.
