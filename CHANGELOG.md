## 1.0.8

*   New command to print password to screen, patch by @terabyte
*   New option to exclude specific characters when generating new passwords,
    patch by @alex0112
*   Update (and loosen up) clipboard dependency

## 1.0.7

*   Ruby 2.4 compat (explicitely only pass 32 bytes of the encryption key)
*   Update clipboard dependency to 1.1.1
*   Explicitely write and read password file as binary to avoid Ruby encoding
    exceptions under some circumstances

## 1.0.6

*   Ruby 2.2 compat (remove digest/hmac)

## 1.0.5

*   Ruby 2 compat
*   Use "pbkdf2-ruby" instead of "pbkdf2" gem
*   Bump paint/clipboard dependencies
*   Remove zucker dependency

## 1.0.4

*   You can now get your passwords using as short shortcuts as possible
    powered by stdlib's abbrev library

## 1.0.3

*   Fix single options (like --cwd) to really be single

## 1.0.2

*   Output a small warning when using Ruby fallback (pbkdf2 is only
    implemented in openssl >= 1.0)
*   New --cwd option for easy access to .pws files in the current directory

## 1.0.1

*   Ruby fallback if pbkdf2 is not available in OpenSSL

## 1.0.0

*   New file format, the old one needs to be  converted by calling `pws resave
    --in 0.9 --out 1.0`
*   Bruteforce protection by using pbkdf2, you can choose the number of
    iterations (default: 75_000)
*   Password files have now better integrity checks
*   Store and display updated_at timestamp for entries
*   Don't rely on Ruby marshalling
*   New actions: update (updates an entry, cannot be used to create one),
    update-gen
*   New action: resave (useful for converting safes)
*   Better exit statuses
*   Misc tweaks (password confirmation when creating, etc)

## 0.9.2

*   Configure your favourite waiting time, password length and password char
    pool using ENV options
*   More flexible command line argument parsing, allows allows overriding of
    the ENV options
*   Show action takes optional regex filter argument
*   Creating new safes also creates the directory for them and sets
    permissions to 0600

## 0.9.1
*   Add password confirmation when changing master password

## 0.9.0
*   It's working, again! (Sorry for the broken gem version that long time...)
*   Cucumber spec suite :D [based on the one by thecatwasnot]
*   Ruby 1.9 only
*   Colorized output using the paint gem
*   Fix an encoding issue
*   New redundancy data mechanism (old file format not compatible anymore)
*   Uses PWS environment variable to determine the password file location
    (default is still: ~/.pws)
*   Easy namespace support for different password files
*   Add ability to rename entry keys
*   Remove descriptions (keep it simple)
*   Different generate method interface
*   Uses SecureRandom instead of rand
*   Fix removing passwords
*   Lots of little fixes and tweaks
*   New default clipboard time: 10 seconds. Another feature: Old clipboard
    content gets restored after that time

## See gist https://gist.github.com/658494 for older changes
