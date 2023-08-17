
{ config, pkgs, ... }:

let
  hhkbCommand = ''
    sudo /home/enzo/Downloads/evremap/target/release/evremap remap /home/enzo/Downloads/evremap/hhkb.toml
  '';

in
{
  systemd.services.hhkb = {
    description = "HHKB Service";
    serviceConfig.ExecStart = hhkbCommand;
    wantedBy = [ "multi-user.target" ];
    user = "enzo";
  };
}
