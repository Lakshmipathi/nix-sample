{ config, pkgs, ... }:
{
      networking.firewall = {
        enable = true;
        allowedTCPPorts = [ 80 443 ];
      };
      services.nginx = {
        enable = true;
        config = ''
          error_log  ./webroot/error.log;
           
          events {}
           
          http {
            server {
              access_log ./webroot/access.log;
              listen 80;
              root ./webroot;
            }
          }
        '';
      };
}
