# Variables
dir=~/.dotfiles
files=".zshrc"

# Lets make it look nicer
echo ""
echo "- - - - - - - - - -"
echo ""

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir

# Lets make it look nicer
echo ""
echo "- - - - - - - - - -"
echo ""

# Create symlinks
for file in $files; do
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/$file
  echo "- - -"
done

# Create symlinks for VSCode
echo "Creating symlink for VSCode configs."
ln -s $dir/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s $dir/VSCode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s $dir/VSCode/snippets/ ~/Library/Application\ Support/Code/User/snippets

# Create symlinks for zsh theme
echo "Creating symlink for zsh configs."
rm -rf ~/.oh-my-zsh/custom/themes
ln -s ~/.dotfiles/oh-my-zsh/custom/themes ~/.oh-my-zsh/custom/themes
ln -s ~/.dotfiles/oh-my-zsh/custom/zsh-autosuggestions.zsh ~/.oh-my-zsh/custom/zsh-autosuggestions.zsh

# Lets make it look nicer
echo ""
echo "- - - - - - - - - -"
echo ""
echo "All done. Have a great day :-*"
echo " "
echo "- - - - - - - - - -"
echo ""
