{ config, pkgs, ... }:
{
  imports = [ <nixpkgs/nixos/modules/virtualisation/amazon-image.nix> 
 		./web.nix
            ];
    environment.systemPackages = with pkgs; [ vim ];
  ec2.hvm = true;

}
