{ pkgs, ... }:

{

  home = {
    username = "kamuela";
    homeDirectory = "/home/kamuela";

    packages = (
      with pkgs;
      [
        nerd-fonts.fira-code
        opencode
        vscode
        ghostty
        kitty
      ]
    );
  };

  imports = [
    ./home.nix
    ./starship.nix
  ];
}
