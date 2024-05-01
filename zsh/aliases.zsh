# reload zsh config
alias reload!='RELOAD=1 source ~/.zshrc'

# Filesystem aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Helpers
alias grep='grep --color=auto'
alias df='df -h' # disk free, in Gigabytes, not bytes
alias du='du -h -c' # calculate disk usage for a folder

alias lpath='echo $PATH | tr ":" "\n"' # list the PATH separated by new lines

# Applications
alias ios='open -a /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"
# remove broken symlinks
alias clsym="find -L . -name . -o -type d -prune -o -type l -exec rm {} +"


# use exa if available
if [[ -x "$(command -v eza)" ]]; then
  alias ll='eza --icons --git --long'
  alias l='eza --icons --git --all --long'
  alias ld='eza -lD'
  alias lf='eza --color=always | grep -v /'
  alias lh='eza -dl .* --group-directories-first'
  alias ls='eza -alf --color=always --sort=size | grep -v /'
else
  alias l="ls -lah ${colorflag}"
  alias ll="ls -lFh ${colorflag}"
fi
alias la="ls -AF ${colorflag}"
alias lld="ls -l | grep ^d"
alias rmf="rm -rf"

# Show more history entries by default
alias history="fc -l 100"

# show all history entries
alias histsearch="fc -l 0 | grep"
