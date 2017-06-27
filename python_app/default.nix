{ pkgs ? import <nixpkgs> {} }:
let
   # alias for std env
   stdenv = pkgs.stdenv;
in rec {
  app = stdenv.mkDerivation {
    name = "Python_Flask_App";
    # app source code 
    src = ./app;
    # package dependencies
    buildInputs = with pkgs.python27Packages; [
	python
	flask
        emoji
    ];
    # copy files from the source to $out.
    installPhase = ''
      mkdir -p $out
      cp -r * $out/
    '';
  };
}
