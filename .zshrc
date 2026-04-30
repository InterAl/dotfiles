# Shared aliases, functions, and environment.
[ -f ~/.bash_profile ] && source ~/.bash_profile

# Claude Code (native installer)
export PATH="$HOME/.local/bin:$PATH"

# Homebrew (vim with +python3, node, fzf, ag, …)
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# rupa/z jump-around utility
. /opt/homebrew/etc/profile.d/z.sh

# Restore reverse history search on Ctrl+R.
bindkey '^R' history-incremental-search-backward
