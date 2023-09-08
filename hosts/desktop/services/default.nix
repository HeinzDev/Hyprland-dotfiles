
{ config, pkgs, ... }:

let
  # (Workaround)
  hhkbCommand = ''
    sudo /home/enzo/Downloads/evremap/target/release/evremap remap /home/enzo/Downloads/evremap/hhkb.toml
  '';

in
{
  #Evremap service to fix my keyboard layout..
  systemd.services.hhkb = {
    description = "HHKB Service";
    serviceConfig.ExecStart = hhkbCommand;
    wantedBy = [ "multi-user.target" ];
    user = "enzo";
  };
}
