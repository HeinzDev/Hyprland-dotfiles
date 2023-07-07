{ config, pkgs, user, ... }:

{
  virtualisation = {
    docker.enable = true;
  };

  users.groups.docker.members = [ "enzo" ];

  environment.systemPackages = with pkgs; [
    docker-compose
  ];
}
