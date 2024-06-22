{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell
{
  nativeBuildInputs = [
    pkgs.trashy
    pkgs.python312
    pkgs.python312Packages.pip
    pkgs.python312Packages.virtualenv
  ];
  
  shellHook = ''
    source .venv/bin/activate
    alias rm="trash -c always put"
  '';
}
