# No greeting, please
set fish_greeting ""

# Universal
set -x RBENV_ROOT ~/.rbenv
set -x PYENV_ROOT ~/.pyenv
set -x PATH $PYENV_ROOT/shims $PYENV_ROOT/bin $PATH
set -x PATH $HOME/.local/bin $PATH
set -x EDITOR vim
set -x VISUAL $EDITOR
set -x PATH ~/Library/Android/sdk/platform-tools $PATH

# Set the Code directory
set -x DEVELOPER $HOME/Developer

# Homebrew and brew-cask options
set -x HOMEBREW_CASK_OPTS "--appdir=~/Applications"

# Source sensitive configuration
if test -f $HOME/.config/fish/local.fish
  source $HOME/.config/fish/local.fish
end

eval (hub alias -s)

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cx\ck peco_kill
  bind \c] peco_select_ghq_repository
  bind \cx\cr peco_recentd
end

