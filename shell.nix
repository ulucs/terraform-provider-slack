{ pkgs
, mkGoEnv ? pkgs.mkGoEnv
, gomod2nix ? pkgs.gomod2nix
}:

let
  goEnv = mkGoEnv { pwd = ./.; };
in
pkgs.mkShell {
  packages = [
    pkgs.terraform
    pkgs.markdownlint-cli
    goEnv
    gomod2nix
  ];
}
