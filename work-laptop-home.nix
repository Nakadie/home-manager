{ pkgs, ... }:

{

  home = {
    username = "christian.dietiker";
    homeDirectory = "/home/christian.dietiker";

    packages = (with pkgs; [
    ]);
  };
  programs = {

    # Fixes the issue with Gnome's Nautilus not opening JSON files
    # See: https://gitlab.gnome.org/GNOME/nautilus/-/issues/3273#note_2217618
    # See: https://github.com/nix-community/home-manager/issues/4955#issuecomment-2041447196
    xdg.mime.enable = false;
    
    bash = {
      initExtra = ''
      export NEXUS_HOST_RELEASES=https://nexus.test.paidy.io/nexus/content/repositories/releases
      '';
      shellAliases = {
        vpn = "nix run git+ssh://git@github.com/paidy/openvpn3-manager-nix";
        race_condish = "cd Paidy/set-bau-scripts/reprocess_race_conditions/ && nix develop --command bash -c 'DELTA_HOURS=72 ./reprocess.sh'";
      };
    };
  };

  imports = [
    ./home.nix
  ];
}