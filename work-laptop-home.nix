{ pkgs, ... }:

{

  home = {
    username = "christian.dietiker";
    homeDirectory = "/home/christian.dietiker";

    packages = (with pkgs; [
    ]);
  };
  programs = {
    
    bash = {
      initExtra = ''
      export NEXUS_HOST_RELEASES=https://nexus.test.paidy.io/nexus/content/repositories/releases
      '';
      shellAliases = {
        vpn = "nix run git+ssh://git@github.com/paidy/openvpn3-manager-nix";
        race_condish = "cd Paidy/set-bau-scripts/reprocess_race_conditions/ && nix develop --command bash -c 'DELTA_HOURS=72 ./reprocess.sh'";
      };
    };
    starship.enable = true;
  };

  imports = [
    ./home.nix
    ./starship.nix
  ];
}