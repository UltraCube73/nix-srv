{ pkgs, ... }:
{
  environment.systemPackages = [
    git
    git-crypt
  ]
}