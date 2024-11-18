if [[ "$(uname)" = "Darwin" ]]; then
    dots_func_log "[OS] host OS is Darwin(macOS)"
    dots_func_newline

    if [ "$(path_exists /opt/homebrew/bin/brew)" -eq 0 ]; then
        # https://mirrors.tuna.tsinghua.edu.cn/help/homebrew/
        export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
        export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
        export HOMEBREW_INSTALL_FROM_API=1
        # https://mirrors.tuna.tsinghua.edu.cn/help/homebrew-bottles/
        export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
        export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
        # https://mirrors.tuna.tsinghua.edu.cn/help/pypi/
        export HOMEBREW_PIP_INDEX_URL="https://mirrors.tuna.tsinghua.edu.cn/pypi/web/simple"

        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi

    if command_exists brew; then
        dots_func_log "[brew] brew available"
        dots_func_log "[brew] start installing apps with brew"

        if ! command_exists mvim; then
            dots_func_log "[macvim] start installing macvim"
            brew install --cask macvim
            dots_func_log "[macvim] macvim installation complete"
        fi

        if ! command_exists tmux; then
            dots_func_log "[tmux] start installing tmux"
            brew install tmux
            dots_func_log "[tmux] tmux installation complete"
        fi

        if ! command_exists tmuxinator; then
            dots_func_log "[tmuxinator] start installing tmuxinator"
            brew install tmuxinator
            dots_func_log "[tmuxinator] tmuxinator installation complete"
        fi

        if ! command_exists tig; then
            dots_func_log "[tig] start installing tig"
            brew install tig
            dots_func_log "[tig] tig installation complete"
        fi

        if ! command_exists tree; then
            dots_func_log "[tree] start installing tree"
            brew install tree
            dots_func_log "[tree] tree installation complete"
        fi

        if ! command_exists ag; then
            dots_func_log "[the_silver_searcher] start installing the_silver_searcher"
            brew install the_silver_searcher
            dots_func_log "[the_silver_searcher] the_silver_searcher installation complete"
        fi

        if ! command_exists nvim; then
            dots_func_log "[neovim] start installing neovim"
            brew install neovim
            dots_func_log "[neovim] neovim installation complete"
        fi

        # casks
        dots_func_log "[casks] start installing casks"
        # brew install --cask alfred
        # brew install --cask baiduinput
        # brew install --cask font-jetbrains-mono-nerd-font
        # brew install --cask google-chrome
        # brew install --cask iterm2
        # brew install --cask jetbrains-toolbox
        # brew install --cask karabiner-elements
        # brew install --cask vscodium
        # brew install --cask zoom
        # brew install --cask xmind
        # brew install --cask megasync
        dots_func_log "[casks] casks installation complete"

        dots_func_log "[brew] done installing apps with brew"
        dots_func_newline
    fi
fi
