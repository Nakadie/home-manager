{
  config,
  pkgs,
  ...
}:
{
  home = {
    packages = with pkgs; [
      obsidian
      cowsay
      vscode
      fzf
      tealdeer
      sbt
      nixfmt
    ];
    stateVersion = "24.05";

  };

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  xdg.enable = true;

  # Fixes the issue with Gnome's Nautilus not opening JSON files
  # See: https://gitlab.gnome.org/GNOME/nautilus/-/issues/3273#note_2217618
  # See: https://github.com/nix-community/home-manager/issues/4955#issuecomment-2041447196
  xdg.mime.enable = false;

  targets.genericLinux.enable = true;

  programs = {

    home-manager.enable = true;

    bash.enable = true;

    fzf = {
      enable = true;
      enableBashIntegration = true;
    };
  };
}
