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
      shellAliases = {
        vpn = "nix run git+ssh://git@github.com/paidy/openvpn3-manager-nix";
        race_condish = "cd Paidy/set-bau-scripts/reprocess_race_conditions/ && nix develop --command bash -c 'DELTA_HOURS=72 ./reprocess.sh'";
      };
    };

    fzf = {
      enable = true;
      enableBashIntegration = true;
    };
  };
}
