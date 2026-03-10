set -o ignoreeof

eval "$(/opt/homebrew/bin/brew shellenv)"

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

if [ -f "/opt/homebrew/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/opt/homebrew/opt/bash-git-prompt/share"
  source "/opt/homebrew/opt/bash-git-prompt/share/gitprompt.sh"
fi

export EDITOR="nvim"

export PATH=/Users/dmytro.klymenkosyniti.com/.local/bin:$PATH
export PATH=/Users/dmytro.klymenkosyniti.com/.yarn/bin:$PATH
export PATH=/Users/dmytro.klymenkosyniti.com/.cargo/bin:$PATH
export PATH="/Applications/dmenu-mac.app/Contents/Resources/:$PATH"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin

export GITHUB_TOKEN=$(gh auth token)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

command -v fzf >/dev/null 2>&1 && eval "$(fzf --bash)"
export FZF_ALT_C_COMMAND="fd -t d -d 4 . $HOME/dev"

[[ -x "$HOME/Documents/scripts/employer_bashrc.sh" ]] && source "$HOME/Documents/scripts/employer_bashrc.sh"

alias oc="sed -i '' 's/api\.githubcopilot\.com/api.business.githubcopilot.com/g' ~/.cache/opencode/models.json && OPENCODE_DISABLE_MODELS_FETCH=true opencode"
