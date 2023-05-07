{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/50c23cd4ff6c8344e0b4d438b027b3afabfe58dd.tar.gz") {
    config = {
        allowUnfree = true;
    };
  }
}:

let 

vscodeWithExtension = (pkgs.vscode-with-extensions.override {
        vscodeExtensions = [
            pkgs.vscode-extensions.github.github-vscode-theme
            pkgs.vscode-extensions.ms-vscode.cpptools
        ];
    }
);

in

pkgs.buildEnv {
  name = "my-c-development-environment";

  paths = [
    pkgs.git
    pkgs.gcc
    pkgs.gdb
    vscodeWithExtension
  ];
}