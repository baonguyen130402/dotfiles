if status is-interactive
    # Commands to run in interactive sessions can go here
  if test -z "$TMUX"
    set id (tmux ls | grep -vm1 attached | cut -d: -f1)
    if test -z "$id"
      tmux new-session
    else
      tmux attach-session -t "$id"
    end
  end
end

set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"

# alias g git
alias gl "git log"
alias gt "git status"
alias ghlogin "gh auth login"
alias ghauth "gh auth status"
alias gc "git add . && git commit -m"
alias gp "git push origin"
alias gb "git checkout"
alias gcl "git clone"

alias py "python3"
alias c "clear"
alias vim "nvim"
alias h "cd ~"
alias nvimconf "cd ~/.config/nvim"
alias fishconf "cd ~/.config/fish"
alias tmuxconf "cd ~/.config/tmux"

# bun run
alias bunw "bun --watch "
alias buns "bun run start"
alias bund "bun run dev"

# npm run
alias npmw "npm --watch "
alias npms "npm run start"
alias npmd "npm run dev"

# yarn run
alias yarnw "yarn --watch "
alias yarns "yarn run start"
alias yarnd "yarn run dev"

#homebrew
alias br "brew"

#FZF
alias v "fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim"

command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# Neovim
set -gx PATH ~/nvim/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Mongodb
set -gx PATH /usr/local/mongodb/bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

starship init fish | source
