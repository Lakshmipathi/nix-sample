nixops create statichtml.nix vbox.nix -d staticpage
nixops info -d staticpage
nixops deploy -d staticpage
nixops ssh -d staticpage webserver
