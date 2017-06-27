nixops create statichtml.nix vbox.nix -d staticpage
nixops info -d staticpage
nixops deploy -d staticpage
#login if needed with
#nixops ssh -d staticpage webserver
nixops info -d staticpage
