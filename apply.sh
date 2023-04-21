# tmux
rm ~/.tmux.conf
ln -s $(pwd)/.tmux.conf ~/.tmux.conf

# zsh
mkdir ~/.config
rm ~/.config/starship.toml
ln -s $(pwd)/starship.toml ~/.config/starship.toml
rm ~/.zshrc
ln -s $(pwd)/.zshrc ~/.zshrc