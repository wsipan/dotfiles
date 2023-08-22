# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# --------------------------------------------
#    ███████╗███████╗██╗  ██╗██████╗  ██████╗
#    ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#      ███╔╝ ███████╗███████║██████╔╝██║     
#     ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
# ██╗███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
# --------------------------------------------
                                           
# Aliases
if [[ /usr/bin/lsd ]]; then
    alias ls='lsd --group-dirs=first'
    alias obsidian='$HOME/.local/bin/Obsidian.AppImage &disown'
fi

OS=$(< /etc/issue awk '{print $1}' | xargs)
# PATH
if [[ "$OS" == "Parrot" ]]; then
  PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$HOME/.local/bin:/snap/bin:$HOME/.cargo/bin:/usr/local/bin:/usr/bin:/bin:$HOME/.cargo/bin:$HOME/.cargo/env
else
  PATH=$PATH:$HOME/.cargo/bin:$HOME/.cargo/env
fi

# Plugins
source /opt/powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
