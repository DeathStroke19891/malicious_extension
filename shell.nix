{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell
{
  nativeBuildInputs = [
  ];

  shellHook = ''
    alias rm="trash -c always put"
  '';
}
