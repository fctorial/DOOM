let
  pkgs = import <nixpkgs> {};
in
  pkgs.pkgsi686Linux.mkShell {
    buildInputs = with pkgs.pkgsi686Linux; [
      pkgconfig
      cmake
      gnumake
      gcc

      xorg.libX11
      xorg.libXext
      xorg.libxcb
    ];
  }
