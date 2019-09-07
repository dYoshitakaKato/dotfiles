# No greeting, please
set fish_greeting ""

# Universal
anyenv init - fish | source
set -x PATH $HOME/.local/bin $PATH
set -x EDITOR vim
set -x VISUAL $EDITOR
set -x PATH ~/Library/Android/sdk/platform-tools $PATH
set -x BROWSER open

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
  # gh-open
  bind \cx\cl peco_open_gh_repository
  # fzf
  bind \cx\cf '__fzf_find_file'
  bind \ctr '__fzf_reverse_isearch'
  bind \ex '__fzf_find_and_execute'
  bind \ed '__fzf_cd'
  bind \eD '__fzf_cd_with_hidden'
  # hub
  # https://qiita.com/itkrt2y/items/0671d1f48e66f21241e2
  bind \cb 'hub browse (ghq list | peco | cut -d "/" -f 2,3)'
end

