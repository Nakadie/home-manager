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
        ollama
        flutter
      ]
    );
  };

  programs = {
    starship.enable = true;
  };

  fonts.fontconfig.enable = true;

  imports = [
    ./home.nix
    ./starship.nix
  ];
}
