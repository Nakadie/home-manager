{ pkgs, ... }:

{

  home = {
    username = "kam";
    homeDirectory = "/home/kam";

    packages = (with pkgs; [
    ]);
  };
  
  imports = [
    ./home.nix
  ];
}