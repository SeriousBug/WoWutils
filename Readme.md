# WoWutils

WoWutils is a command line tool, designed for handling World of Warcraft addons. It is written in bash, and can provides functionalities such as downloading, installing, updating and taking backups of addons. The addons are currently downloaded from Curse.

Please note that WoWutils is in early development. Not all said functionalities are implemented yet, and those that are implemented may have bugs in them. Try the tool at your own risk.

# Requirements

WoWutils requires `bash`, `wget`, `tar` and optionally a compression program supported by tar such as `gzip`, as well as some of the GNU Core Utilities (`coreutils`) or equivalent.

If you are on Linux, you likely have most, if not all already installed. If you are on Windows, you can get these through [Cygwin](https://cygwin.com). 

# Installation and Usage

To install WoWutils, simply place the script somewhere within your `$PATH`.

To use functionalities like install and clean, you will need to set up some configuration. You can get a sample configuration file by running `wowutils config`. This configuration file can be placed in the following locations:

   * $XDG_CONFIG_HOME/wowutils
   * $HOME/.config/wowutils
   * $HOME/.wowutils

To get started with configuration, you can do:

    % wowutils config > ~/.config/wowutils

Then edit this configuration file. The important line is `WOW_DIR`, please change this so that it points to your World of Warcraft installation.

# Why?

Because Curse doesn't have a Linux client, and it is the most popular World of Warcraft addon hosting website.