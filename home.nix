{ config, pkgs, ... }:

{
  home.username = "ruyu";
  home.homeDirectory = "/home/ruyu";

  home.packages = with pkgs; [
 	fastfetch
	
	# Dev Tools
	asdf-vm
	curl
	gawk
	gnupg
  ];

  programs.git = {
    enable = true;
    userName = "Winston W";
    userEmail = "wjw5326@psu.edu";
  };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
