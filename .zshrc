[ -f ~/.bash_profile ] && source ~/.bash_profile

# zsh prompt syntax (prevents literal "\w$" from bash PS1)
PROMPT='%~$ '

# zsh vi keymap + `v` to edit current command in $EDITOR.
if [[ -o interactive ]]; then
  bindkey -v
  autoload -Uz edit-command-line
  zle -N edit-command-line
  bindkey -M vicmd 'v' edit-command-line

  # Keep common emacs/readline shortcuts while using vi mode (insert keymap).
  bindkey -M viins '^A' beginning-of-line
  bindkey -M viins '^E' end-of-line
  bindkey -M viins '^B' backward-char
  bindkey -M viins '^F' forward-char
  bindkey -M viins '^K' kill-line
  bindkey -M viins '^U' backward-kill-line
  bindkey -M viins '^W' backward-kill-word
fi

# Claude Code (native installer)
export PATH="$HOME/.local/bin:$PATH"

# Homebrew (vim with +python3, node, fzf, ag, …)
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
