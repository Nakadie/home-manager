{ pkgs, ... }:

{

  home = {
    username = "christian.dietiker";
    homeDirectory = "/home/christian.dietiker";

    packages = (with pkgs; [
    ]);
  };
  
  imports = [
    ./home.nix
  ];
}