# CLI-P

Acronym for "CLI for Php". 

Because many developers need to work on many versions, and may occasionally want to try new versions, this tool
should give you enough flexibility to work with the many versions.

<u>**CAUTION**</u> currently this is only aimed on <u>Stable</u> builds of php, using a predefined URL, only filling in
the PHP version of your choice and architecture (32 or 64 bit) .

Only the NTS (non-thread safe or single-thread) versions, which is usually enough for CLI actions.

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

# Files

| Name        | Description                                                                   |
|-------------|-------------------------------------------------------------------------------|
| install.sh  | Prepares your Win-Bash environment for use                                    |
| include.sh  | Contains globally used variables and functions                                |
| php         | Wrapper for the PHP instance you want to run                                  |
| cli-p       | Wrapper for the PHP functions like setver, install, remove, etc               |
| php-install | Install a PHP version from PHP (will download WIN binaries, unusable for n*x) |
| php-remove  | Remove a PHP version                                                          |
| php-set     | Sets the PHP version to be used                                               |
| php.ver     | Contains the currently chosen PHP version                                     |
| cli-p.ansi  | ANSI art                                                                      |

# Easy to use
Usage (also intended, may not be final):
```
cli-p [ansi|set|install|remove] [version]
ansi                 Show ANSI banner (for fun)
set                  Set PHP version
install              Install PHP version
remove               Remove PHP version
```
```
$ cli-p install  <-- no arguments
PHP version installer
Fetching from        https://windows.php.net/downloads/releases
Architecture         x64
Available versions:
7.3.33
7.4.27
8.0.14
8.1.1
```
```
$ cli-p install 8.1.1
PHP version installer
You are about to install version 7.4.27
Are you sure? [y/N] y
Trying to install 7.4.27
Architecture         x64
Found version        7.4.27
Downloading          https://windows.php.net/downloads/releases/php-7.4.27-nts-Win32-vc15-x64.zip
Extracting zip to    /d/Sites/bagiwi/bin/php-7.4.27
Removing zip file    /d/Sites/bagiwi/bin/php-7.4.27-nts-Win32-vc15-x64.zip
Done
```
```
$ cli-p set 8.1.1
Currently no PHP version set - Setting PHP version to: 8.1.1
```
```
$ cli-p set  <-- no arguments
Currently set to 8.1.1 - Installed versions are:
8.1.1 *
7.4.27 
```
```
$ cli-p remove  <-- no arguments
Remove PHP version
Installed versions are:
8.1.1 *
7.4.27 
```
```
$ cli-p remove 8.1.1
Remove PHP version
You are about to remove version 7.4.27
Are you sure? [y/N] y
Deleting version     7.4.27
Done
```

# License

## The Unlicense

I UNLICENSED this project. Feel free to extend, expand, contribute.

## Extension to license

Although keeping in mind everything the Unlicense stands for, I will not permit anyone to sell a copy of this package or
its components, neither as-is nor edited.
