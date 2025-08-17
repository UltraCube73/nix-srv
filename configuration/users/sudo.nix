{
  security.sudo.extraRules = [
    {
      users = [ "shooter" ];
      commands = [ { command = "ALL"; options = [ "NOPASSWD" ]; } ];
    }
  ];
}