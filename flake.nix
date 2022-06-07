{
  inputs = { nixpkgs.url = "github:NixOS/nixpkgs/master"; };
  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShell.${system} = (pkgs.buildFHSUserEnv rec {
        name = "neutrino-env";
        targetPkgs = p:
          (with p; [
            python3
            stdenv.cc.libc
            stdenv.cc.cc.lib
            zsh
            cudaPackages.cudatoolkit
          ]) ++ (with p.python3Packages; [
            cffi
            click
            future
            numpy
            pillow
            protobuf
            pytorch
            pyyaml
            six
            tensorboard
            typing-extensions
            scipy
          ]);
        runScript = toString (pkgs.writeScript "env.sh" ''
          export PYTHONPATH=/usr/lib/python3.9/site-packages/
          zsh
        '');
      }).env;
    };
}
