export ANDROID_HOME=/Users/alan/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/emulator
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source $HOME/.aliases

unsetopt nomatch
export LATITUDE_USER=alanwalton:jyq_nua@KDN1zdm0wgy
export NPM_TOKEN=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
export GH_AUTH_TOKEN=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

# always nvm use if .nvmrc is present in current working dir
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
eval "$(pyenv init --path)"
alias cls='printf "\ec"'
