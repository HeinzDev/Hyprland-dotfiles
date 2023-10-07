
{ config, pkgs, ... }:

let
  # (Workaround)
  #sudo /home/enzo/Apps/Files/evremap/target/release/evremap remap /home/enzo/Apps/Files/evremap/hhkb.toml
  hhkbCommand = ''
    sudo hhkb
  '';

in
{
  #Evremap service to fix my keyboard layout..
  systemd.services.hhkb = {
    description = "HHKB Service";
    serviceConfig.ExecStart = hhkbCommand;
    wantedBy = [ "multi-user.target" ];
  };
}
