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

  xdg.enable = true;
  targets.genericLinux.enable = true;

  programs = {

    home-manager.enable = true;

    bash = {
      enable = true;
      historyFile = "${config.xdg.configHome}/bash/bash_history";
    };

    fzf = {
      enable = true;
      enableBashIntegration = true;
    };
  };
}
