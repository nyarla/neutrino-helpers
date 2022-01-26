neutrino-helpers
================

> The perl script collection for [NEUTRINO](https://n3utrino.work) AI Vocal Synthizer on Linux

Requirements
------------

### For these perl script contians in this repository.

- perl with Core modules
- coreutils
- sh
- curl
- unzip

### For run NEUTRINO binaries

- by `nsf-io` with CUDA
  - python3
  - python3-setuptools
  - numpy
  - scipy
  - cudatoolkit

Contain Scripts
---------------

### `bin/neutrino-installer`

A install or uninstall script for NEUTRINO software or libraries.

### `bin/{neutrino,musicxml-to-label,nsf-io,world}`

A useful wrapper script for NEUTRINO binaries.

Known Problems
--------------

### Google Drive throws *Too many request*

`neutrino-installer` script has automatic download mechanism from Google Drive,
but Google Drive sometimes throws *Too many request* message.

If you got this error message, you're (maybe) enable to recover this error:

1. LogIn your google account.
2. Access to `https://drive.google.com/uc?export=download&id=${id}"`
  - `${id}` is a unique file id on Google Drive
  - Well-known `${id}` is contain `bin/neutrino-installer` script as `$DB`;
3. Download NEUTRINO zip file from Google Drive
4. Rename downloaded file to `${id}.zip`
5. Move zip file to `~/.cache/neutrino/${id}.zip`
6. Restart install script
  - Installer script skips download if `~/.cache/neutrino/${id}.zip` already exists and same sha256sum in `$DB`.

### Some NEUTRINO executable file requires fixed directory structure

these perl scripts inside this repository are automatic resolve to this problem,
but that result is copied some directories to your current dir (`$(pwd)`).

Well-known copied directories are:

- `NSF`
- `settings`

these directoires can remove if you don't need to using NEUTRINO.

Tip
---

`bin/neutrino-installer` supports custom install prefix about NEUTRINO with `--prefix` flag.

And if you installed NEUTRINO to custom prefix, you must sets `NEUTRINO_PREFIX` environment variable as same as arguments of `--prefix`.

Author
------

These perl script is made by OKAMURA Naoki aka nyarla <nyarla@kalaclista.com>.

Great works about NEUTRINO AI Vocal Synthizer by [shachi](https://twitter.com/SHACHI_NEUTRINO) <https://n3utrino.work>

License
-------

These perl scripts under the same license of Perl.
