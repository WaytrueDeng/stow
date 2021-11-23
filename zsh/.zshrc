

typeset -U path cdpath fpath manpath



for profile in ${(z)NIX_PROFILES}; do
  fpath+=($profile/share/zsh/site-functions $profile/share/zsh/$ZSH_VERSION/functions $profile/share/zsh/vendor-completions)
done

HELPDIR="/nix/store/avfyfhvvg4ksm671brksknb0nf7n2f13-zsh-5.8/share/zsh/$ZSH_VERSION/help"







path+="$HOME/.zsh/plugins/zsh-autosuggestions"
fpath+="$HOME/.zsh/plugins/zsh-autosuggestions"
path+="$HOME/.zsh/plugins/zsh-syntax-highlighting"
fpath+="$HOME/.zsh/plugins/zsh-syntax-highlighting"


# Oh-My-Zsh/Prezto calls compinit during initialization,
# calling it twice causes slight start up slowdown
# as all $fpath entries will be traversed again.




# Environment variables
. "/home/waytrue/.nix-profile/etc/profile.d/hm-session-vars.sh"


# oh-my-zsh extra settings for plugins

# oh-my-zsh configuration generated by NixOS


ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh




if [[ -f "$HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh" ]]; then
  source "$HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"
fi
if [[ -f "$HOME/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh" ]]; then
  source "$HOME/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"
fi


# History options should be set in .zshrc and after oh-my-zsh sourcing.
# See https://github.com/nix-community/home-manager/issues/177.
HISTSIZE="10000"
SAVEHIST="10000"

HISTFILE="$HOME/.zsh_history"
mkdir -p "$(dirname "$HISTFILE")"

setopt HIST_FCNTL_LOCK
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
unsetopt HIST_EXPIRE_DUPS_FIRST
setopt SHARE_HISTORY
unsetopt EXTENDED_HISTORY




# Aliases


# Global Aliases


# Named Directory Hashes
