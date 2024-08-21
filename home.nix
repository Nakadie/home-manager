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
    ];

    stateVersion = "24.05";
    username = "kam";
  };

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  programs.home-manager.enable = true;
  programs.bash.enable = true;

  xdg.enable = true;
  targets.genericLinux.enable = true;
}
