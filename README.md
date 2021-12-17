# PHP Bagiwi

Acronym to PHP BAsh GIt WIndows, aimed at making it easier to use and maintain PHP 
versions under MingW (or other Bash-compatible systems, like CygWin).

Because many developers need to work on many versions, and may occasionally want to try new versions,
this set tools should give you enough flexibility to work with the many versions.

<u>**CAUTION**</u> currently this is only aimed on <u>Stable</u> builds of php, using a predefined URL,
only filling in the PHP version and architecture (32 or 64 bit) and only the NTS (non-thread safe or single-thread) 
version (which is enough for CLI actions)

This may also work under Linux or other Unix and Linux systems, but no guarantees.

# Work In Progress
This project is far from ready for the real world. I only have a few directions in place where I want this project to go.

If you want to help, just fork and go. :)

# Files
| Name        | Description                                                                   |
|-------------|-------------------------------------------------------------------------------|
| install.sh  | Prepares your Win-Bash environment for use                                    |
| include.sh  | Contains globally used variables and functions                                |
| php         | Wrapper for the PHP instance you want to run                                  |
| php-install | Install a PHP version from PHP (will download WIN binaries, unusable for n*x) |
| php-setver  | Sets the PHP version to be used                                               |
| php.ver     | Contains the currently chosen PHP version                                     |

# License
## The Unlicense
I UNLICENSED this project. Feel free to extend, expand, contribute.

## Extension to license
Although keeping in mind everything the Unlicense stands for, I will not permit anyone to sell a copy of this package or its components, neither as-is nor edited.
