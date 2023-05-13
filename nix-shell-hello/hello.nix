{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "nix-shell-hello";
  buildInputs = [
    pkgs.hello
  ];
  shellHook = "
    echo Exemplo de Nix Shell
    hello
  ";
}