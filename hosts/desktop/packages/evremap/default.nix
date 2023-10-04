{ pkgs ? import <nixpkgs> { }}: let
  inherit (pkgs) rustPlatform fetchFromGitHub pkg-config libevdev;
in rustPlatform.buildRustPackage {
  pname = "evremap";
  version = "unstable-2023-07-25";

  src = fetchFromGitHub {
    owner = "wez";
    repo = "evremap";
    rev = "d0e8eb231fdeaf9c6457b36c1f04164150a82ad0";
    hash = "sha256-FRUJ2n6+/7xLHVFTC+iSaigwhy386jXccukoMiRD+bw=";
  };

  buildInputs = [ libevdev ];
  nativeBuildInputs = [ pkg-config ];

  cargoHash = "sha256-bTTFEKqktWD2esP7IKZxrZU3fh2uzqlJctaKtht22KU=";
}
