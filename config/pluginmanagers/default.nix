{
  lib,
  config,
  ...
}:
{
  imports = [
    ./lazy-nvim.nix
  ];

  options = {
    pluginmanagers.enable = lib.mkEnableOption "Enable pluginmanagers module";
  };
  config = lib.mkIf config.pluginmanagers.enable {
    lazy-nvim.enable = lib.mkForce true; # changed to lib.mkForce to ensure lazy-nvim is pluginmanager
  };
}
