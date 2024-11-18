source "$DOTS"/scripts/logger.sh

source "$DOTS"/scripts/command-exists.sh
source "$DOTS"/scripts/proxy.sh
source "$DOTS"/scripts/path-check.sh

source "$DOTS"/scripts/prepare.sh
source "$DOTS"/scripts/auto-install.sh

################################################################################

prepare_dir "$DOTS_X"
prepare_dir "$DOTS_DATA"
prepare_dir "$DOTS_CACHE"
dots_func_log "[env] loaded STUDIO $STUDIO"
dots_func_log "[env] loaded DOTS $DOTS"
dots_func_log "[env] loaded DOTS_X $DOTS_X"
dots_func_log "[env] loaded DOTS_DATA $DOTS_DATA"
dots_func_log "[env] loaded DOTS_CACHE $DOTS_CACHE"
dots_func_newline

source "$DOTS"/dots/common.sh
source "$DOTS"/dots/zsh.sh
source "$DOTS"/dots/aliases.sh
source "$DOTS"/dots/git.sh
source "$DOTS"/dots/rust.sh
source "$DOTS"/dots/brew-install.sh
source "$DOTS"/dots/cargo.sh

source "$DOTS"/dots/scripts.sh

# source "$DOTS"/dots/nvm.sh
source "$DOTS"/dots/vim.sh
source "$DOTS"/dots/tmux.sh
source "$DOTS"/dots/sdk.sh
