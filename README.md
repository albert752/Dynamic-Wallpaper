# Dynamic-Wallpaper
A simple script tha dynamicaly changes the wallaper according to the time
inspired on Mac OS X Mohave.

## Getting Started

To start using this simple script it's pretty easy. Just follow me!

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


