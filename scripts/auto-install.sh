if [ ! -d "$DOTS_X"/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git "$DOTS_X"/Vundle.vim
    # where vundle installs plugins
    prepare_dir "$DOTS_DATA"/vim/bundle
    # TODO: auto install plugins on first installation?
fi