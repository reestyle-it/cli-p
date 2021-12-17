# PHP Bagiwi

PHP Bagiwi [bah-gi-whi _or_ /bə'gi:'wi:/] (like kiwi, but with a G). Acronym to PHP BAsh GIt WIndows, aimed at making it
easier to use and maintain PHP versions under MingW (or other Bash-compatible systems, like CygWin).

Because many developers need to work on many versions, and may occasionally want to try new versions, this set tools
should give you enough flexibility to work with the many versions.

<u>**CAUTION**</u> currently this is only aimed on <u>Stable</u> builds of php, using a predefined URL, only filling in
the PHP version of your choice and architecture (32 or 64 bit) .

Only the NTS (non-thread safe or single-thread) versions (which is enough for CLI actions)

This may also work under Linux or other Unix and Linux systems, but no guarantees.

Written in Bash script. My knowledge of Bash may be limited, so use the shorter or better version where
applicable, just remember it's for Windows, not n*x OSses.

# Prerequisites

Either install GIT-SCM or MingW. CygWin is also a good choice, but it's initially aimed towards the bash CLI shipped
with GIT-SCM (#1 choice for GIT on Windows).

If you don't, the current package may prove VERY difficult to run :)

# Work In Progress

This project is far from ready for the real world. I only have a few directions in place where I want this project to
go.

If you want to help, just fork and go. :)

# Easy to use
Usage (also intended, may not be final):
```
$ cli-p install  <-- no arguments
PHP version installer
Available versions
Fetching from        https://windows.php.net/downloads/releases
Architecture         x64
7.3.33
7.4.27
8.0.14
8.1.1
```
```
$ cli-p install 8.1.1
PHP version installer
You are about to install version 8.1.1
Are you sure? [y/N] y
Installing version 8.1.1
Downloading
Extracting
Done
```
```
$ cli-p set 8.1.1
Currently no PHP version set - Setting PHP version to: 8.1.1
```
```
$ cli-p set  <-- no arguments
Currently set to 8.1.1 - Available versions are
8.1.1 *
7.4.27 
```
```
$ cli-p remove  <-- no arguments
Remove PHP version
Available versions are:
8.1.1 *
7.4.27 
```
```
$ cli-p remove 8.1.1
Remove PHP version
Deleting version     8.1.1
Done
```

# Files

| Name        | Description                                                                   |
|-------------|-------------------------------------------------------------------------------|
| install.sh  | Prepares your Win-Bash environment for use                                    |
| include.sh  | Contains globally used variables and functions                                |
| php         | Wrapper for the PHP instance you want to run                                  |
| cli-p       | Wrapper for the PHP functions like setver, install, remove, etc               |
| php-install | Install a PHP version from PHP (will download WIN binaries, unusable for n*x) |
| php-remove  | Remove a PHP version                                                          |
| php-setver  | Sets the PHP version to be used                                               |
| php.ver     | Contains the currently chosen PHP version                                     |

# License

## The Unlicense

I UNLICENSED this project. Feel free to extend, expand, contribute.

## Extension to license

Although keeping in mind everything the Unlicense stands for, I will not permit anyone to sell a copy of this package or
its components, neither as-is nor edited.
