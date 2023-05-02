{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/50c23cd4ff6c8344e0b4d438b027b3afabfe58dd.tar.gz") {
    config = {
        allowUnfree = true;
    };
  }
}:

pkgs.mkShell {
  name = "nix-teste";
  buildInputs = [
    pkgs.nodejs-16_x
    pkgs.yarn
    pkgs.curl
  ];
}