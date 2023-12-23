eval "$(starship init zsh)"

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

zinit light-mode for \
  zdharma/fast-syntax-highlighting \
  zsh-users/zsh-completions \
  zsh-users/zsh-autosuggestions \
  OMZ::lib/history.zsh \
  OMZ::lib/clipboard.zsh \
  OMZP::colored-man-pages \
  OMZP::extract \
  ajeetdsouza/zoxide \
  # romkatv/powerlevel10k \

eval $(thefuck --alias)

alias l='eza --group-directories-first --icons=auto'
alias ll='eza -l --icons=auto'
alias ls='eza --group-directories-first --icons=auto'
alias la='eza -a --icons=auto'

# helpful cds
alias .='cd .'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'
function mkcd { mkdir "$1"; cd "$1"; }

# helpful tools
alias ex='extract'
alias open="exo-open"
alias trash="gio trash"
alias info="info --vi-keys"

alias jos="joshuto"
alias hm="home-manager"
