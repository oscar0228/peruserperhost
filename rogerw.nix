 {pkg, ... }:
 {

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.rogerw = {
    isNormalUser = true;
    description = "Roger Walz";
    extraGroups = [ "networkmanager" "wheel" ];
    openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBxpo1SH1rlnkGKcdBkfguJww+B6JiLvMH35nUBTlp06 rogerw@saturn"
    ];
  };
}
