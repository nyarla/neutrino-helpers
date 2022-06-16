# neutrino-helpers

The perl script collection for [NEUTRINO](https://n3utrino.work/) AI Singing Synthizer on Linux.

## Suported Version

- NEUTRINO-Oneline v1.1.0

## Requirements

- perl (with core modules)
- sh
- coreutils
- unzip

## Contains

- `bin/install-neutrino`
  - a installer script for NEUTRINO and model zip file to local machine.
- `bin/{neutrino, musicxml-to-label, nsf, world}`
  - a useful wrapper script for NEUTRINO executable files.
- `flake.nix` and `flake.lock`
  - a **EXAMPLE** nix flake files for using NEUTRINO executable files.
  - this package _NOT_ support nix flake yet.

## Author

These perl script written by OKAMURA Naoki aka nyarla <nyarla@kalaclista.com>.

The Greatest work to create NEUTRINO AI Singing Synthizer by [shachi](https://twitter.com/SHACHI_NEUTRINO) <https://n3utrino.work>

## License

Perl scripts about contains this repository are same license of Perl itself.
