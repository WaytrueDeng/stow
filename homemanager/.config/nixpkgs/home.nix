{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "waytrue";
  home.homeDirectory = "/home/waytrue";
  programs = {
    emacs = {
      enable = true;};
    alacritty = {
      enable = true;};
    neofetch.enable = true;  

    zsh = {
	enable = true;
	enableCompletion = true;
	plugins = [
		{
                   name = "zsh-autosuggestions";
                   src = pkgs.fetchFromGitHub {
                     owner = "zsh-users";
                     repo = "zsh-autosuggestions";
                     rev = "v0.7.0";
		     sha256 = "1g3pij5qn2j7v7jjac2a63lxd97mcsgw6xq6k5p7835q9fjiid98";
                   };}
		{
                   name = "zsh-syntax-highlighting";
                   src = pkgs.fetchFromGitHub {
                     owner = "zsh-users";
                     repo = "zsh-syntax-highlighting";
                     rev = "0.7.0";
		     sha256 = "0s1z3whzwli5452h2yzjzzj27pf1hd45g223yv0v6hgrip9f853r";
                   };}
	];
	};
    zsh.oh-my-zsh = {
    enable = true;
    theme = "robbyrussell";
    };
    rofi = {
    enable = true;
    };
    tmux = {
      enable = true;
      shortcut = "a";
      keyMode = "vi";
      customPaneNavigationAndResize = true;};
  };
  
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.03";
}
