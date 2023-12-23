use re

use epm
epm:install &silent-if-installed         ^
  github.com/zzamboni/elvish-modules

use github.com/zzamboni/elvish-modules/alias

alias:new l eza --group-directories-first --icons=auto
alias:new ls eza --group-directories-first --icons=auto
alias:new la eza -a --icons=auto
alias:new ll eza -l --icons=auto

alias:new . cd ~
alias:new ... cd ...
alias:new .... cd ....

alias:new cp cp -i
alias:new cpr cp -ir
alias:new mv mv -i
alias:new ln ln -i
alias:new lns ln -is

alias:new g   git
alias:new gst git status
alias:new gad git add
alias:new gcm git commit
alias:new gps git push
alias:new gpl git pull
alias:new gbr git branch
alias:new gck git checkout
alias:new gcb git checkout -b
alias:new gdf git diff
alias:new glg git log --oneline --decorate --graph
alias:new gla git log --oneline --decorate --graph --all

alias:new hm home-manager
alias:new jo joshuto --change-directory

use github.com/zzamboni/elvish-modules/nix

eval (carapace _carapace|slurp)

eval (starship init elvish)
