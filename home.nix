{
  config,
  pkgs,
  ...
}: {
  home = {
    packages = with pkgs; [
      obsidian
      cowsay
      vscode
      okular
      fzf
      tealdeer
    ];
    stateVersion = "24.05";
    
  };

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  xdg.enable = true;
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
