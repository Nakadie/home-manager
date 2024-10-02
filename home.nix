{
  config,
  pkgs,
  ...
}: {
  home = {
    homeDirectory = "/home/christian.dietiker";

    packages = with pkgs; [
      obsidian
      cowsay
      vscode
      okular
      fzf
    ];

    stateVersion = "24.05";
    username = "christian.dietiker";
  };

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  programs.home-manager.enable = true;
  programs.bash.enable = true;

  xdg.enable = true;
  targets.genericLinux.enable = true;

  programs = {
    fzf = {
      enable = true;
      enableBashIntegration = true;
    }
  }
}
