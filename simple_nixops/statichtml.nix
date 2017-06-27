{
  network.description = "Static web server";

  webserver =
    { config, pkgs, ... }:
    { services.httpd.enable = true;
      services.httpd.adminAddr = "lakshmipathi.g@giis.co.in";
      services.httpd.documentRoot = ./www;
      networking.firewall.allowedTCPPorts = [ 80 ];
      environment.systemPackages = with pkgs; [ 
      vim 
      python35 
      python35Packages.flask
      ]; 
    }; 
}
