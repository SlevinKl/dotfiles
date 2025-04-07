# #!/bin/zsh

# echo "🤙 Start setup!"

# # Define a function which rename a `target` file to `target.backup` if the file
# # exists and if it's a 'real' file, ie not a symlink
# backup() {
#   target=$1
#   if [ -e "$target" ]; then
#     if [ ! -L "$target" ]; then
#       mv "$target" "$target.backup"
#       echo "-----> Moved your old $target config file to $target.backup"
#     fi
#   fi
# }

# symlink() {
#   file=$1
#   link=$2
#   if [ ! -e "$link" ]; then
#     echo "-----> Symlinking your new $link"
#     ln -s $file $link
#   fi
# }

# # For all files `$name` in the present folder except `*.sh`, `README.md`, `settings.json`,
# # and `config`, backup the target file located at `~/.$name` and symlink `$name` to `~/.$name`
# declare -A FILES_MAP
# FILES_MAP[git/gitconfig]="$HOME/.gitconfig"
# FILES_MAP[rails/aliases]="$HOME/.aliases"
# FILES_MAP[vscode/keybindings]="$HOME/.keybindings"
# FILES_MAP[vscode/settings]="$HOME/.settings"
# FILES_MAP[warp/edulib]="$HOME/.edulib"
# FILES_MAP[warp/dotfiles]="$HOME/.dotfiles"
# FILES_MAP[warp/ladys]="$HOME/.ladys"
# FILES_MAP[zsh/zshrc]="$HOME/.zshrc"

# # FILES_MAP[ruby/irbrc]="$HOME/.irbrc"
# # FILES_MAP[ruby/pryrc]="$HOME/.pryrc"
# # FILES_MAP[rspec/rspec]="$HOME/.rspec"
# # FILES_MAP[zsh/zprofile]="$HOME/.zprofile"

# # 🛠 Appliquer backup + symlink pour chaque fichier
# for file in "${(@k)FILES_MAP}"; do
#   target="${FILES_MAP[$file]}"
#   backup "$target"
#   symlink "$PWD/$file" "$target"
# done

# # for name in aliases gitconfig irbrc pryrc rspec zprofile zshrc; do
# #   if [ ! -d "$name" ]; then
# #     target="$HOME/.$name"
# #     backup $target
# #     symlink $PWD/$name $target
# #   fi
# # done

# # Symlink VS Code settings and keybindings to the present `settings.json` and `keybindings.json` files
# # If it's a macOS
# if [[ `uname` =~ "Darwin" ]]; then
#   CODE_PATH=~/Library/Application\ Support/Code/User
# # Else, it's a Linux
# else
#   CODE_PATH=~/.config/Code/User
#   # If this folder doesn't exist, it's a WSL
#   if [ ! -e $CODE_PATH ]; then
#     CODE_PATH=~/.vscode-server/data/Machine
#   fi
# fi

# for name in settings.json keybindings.json; do
#   target="$CODE_PATH/$name"
#   backup $target
#   symlink $PWD/$name $target
# done

# Refresh the current terminal with the newly installed configuration

# exec zsh

# echo "👌 Carry on with git setup!"

# ####### TODO #######
# # Install zsh-syntax-highlighting plugin
# # CURRENT_DIR=`pwd`
# # ZSH_PLUGINS_DIR="$HOME/.oh-my-zsh/custom/plugins"
# # mkdir -p "$ZSH_PLUGINS_DIR" && cd "$ZSH_PLUGINS_DIR"
# # if [ ! -d "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting" ]; then
# #   echo "-----> Installing zsh plugin 'zsh-syntax-highlighting'..."
# #   git clone https://github.com/zsh-users/zsh-autosuggestions
# #   git clone https://github.com/zsh-users/zsh-syntax-highlighting
# # fi
# # cd "$CURRENT_DIR"


# Symlink SSH config file to the present `config` file for macOS and add SSH passphrase to the keychain
# if [[ `uname` =~ "Darwin" ]]; then
#   target=~/.ssh/config
#   backup $target
#   symlink $PWD/config $target
#   ssh-add --apple-use-keychain ~/.ssh/id_ed25519
# fi


