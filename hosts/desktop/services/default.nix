{ config, pkgs, ... }:
{
  #Evremap service to fix my keyboard layout..
  systemd.services.hhkb = {
    description = "HHKB Service";
    serviceConfig.ExecStart = toString (pkgs.writeShellScript "hhkb" ''
  /home/enzo/Apps/Files/evremap/target/release/evremap remap /home/enzo/Apps/Files/evremap/hhkb.toml
'');
    wantedBy = [ "multi-user.target" ];
    serviceConfig.group = "root";
  };
}