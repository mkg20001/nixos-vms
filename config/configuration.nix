# Build this as a test
{ lib, config, pkgs, ... }:

{
  # Pull in Global additions
  imports = [
    ./config
  ];
}
