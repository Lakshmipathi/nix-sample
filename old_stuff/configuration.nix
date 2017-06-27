{ pkgs, ... }:
{
  imports = [ ./web.nix ];
  environment.systemPackages = with pkgs; [ vim ];
}
