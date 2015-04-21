# WoWutils

WoWutils is a command line tool, designed for handling World of Warcraft addons. It is written in bash, and can provides functionalities such as downloading, installing, updating and taking backups of addons.

Currently, WoWutils can:

* Download and install addons from Curse.
* Handle the Curse URI, the "Download with Curse Client" button.
* Update the installed addons that are on CurseForge.
* Create and restore backups of your addons and settings.
* Clean the WoW cache.

# Requirements

* bash
* wget
* tar
* grep
* sed
* gzip
* unzip
* some parts of `coreutils`

The requirements may seem excessive, but if you are on Linux, you likely have most, if not all already installed. If you are on Windows, you can get these through [Cygwin](https://cygwin.com).

# Installation and Usage

To install WoWUtils, simply run `make install`.

Afterwards, you can get information about the usage by running `wowutils help`.

To use functionalities like install and clean, you will need to set up some configuration. You can get a sample configuration file by running `wowutils config`. This configuration file can be placed in the following locations:

   * $XDG_CONFIG_HOME/wowutils
   * $HOME/.config/wowutils
   * $HOME/.wowutils

To get started with configuration, you can do:

    % wowutils config > ~/.config/wowutils

Then edit this configuration file. The important line is `WOW_DIR`, please change this so that it points to your World of Warcraft installation.

# Why?

Because Curse doesn't have a Linux client, and it is the most popular World of Warcraft addon hosting website.

# Problems

Comparing the metadata in addon .toc files, and the information presented in Curse's pages, the main problem the tool has is the naming of the addons. Purely based on my observations:

* Addons that are available on CurseForge have a X-Curse-Project-ID field.
* If the addon is available for download, then the name in the download link is the same as Project-ID.
* Not all names presented in X-Curse-Project-ID have their own download pages, sometimes they are downloaded as a part of a bigger package.
* The addons that are not available on CurseForge but are available on Curse usually have download links similiar to the name of their folder, or their Title field. However, there is no standard.

This makes it hard to reliably find and download addons. While I will be leaving the project up in case that it is useful to someone, I am not really willing to continue development on it.
