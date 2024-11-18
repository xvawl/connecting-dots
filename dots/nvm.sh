################################################################################
# nvm
################################################################################
dots_func_log "[nvm] setting nvm..."
# customize nvm install location
export NVM_DIR="$DOTS_X/nvm"
if [ -n "$NVM_DIR" ] && [ ! -f "$NVM_DIR/nvm.sh" ]; then
  dots_func_log "[nvm] no nvm installed, installing..."
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
  cd -
  dots_func_log "[nvm] nvm installed"
fi

# load nvm
dots_func_log "[nvm] start loading nvm..."
# TODO: nvm takes up 1 whole minute to load? WTF
[[ -s "$NVM_DIR/nvm.sh" ]] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$NVM_DIR/bash_completion" ]] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
dots_func_log "[nvm] nvm loaded"

current_nvm=$(nvm current)
if [ "$current_nvm" = "none" ]; then
  dots_func_log "[nvm] no node installed, installing default v20"
  nvm install 20
  nvm alias default 20
  dots_func_log "[nvm] node v16 installed and set to nvm default"
fi

dots_func_newline