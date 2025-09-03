{ pkgs, ... }:

{

  home = {
    username = "kamuela";
    homeDirectory = "/home/kamuela";

    packages = (with pkgs; [
      nerd-fonts.fira-code
    ]);
  };
  
  imports = [
    ./home.nix
    ./starship.nix
  ];
}