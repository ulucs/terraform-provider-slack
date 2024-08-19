{ pkgs
, buildGoApplication ? pkgs.buildGoApplication
}:

buildGoApplication {
  pname = "terraform-slack-provider";
  version = "0.1";
  pwd = ./.;
  src = ./.;
  modules = ./gomod2nix.toml;
}
