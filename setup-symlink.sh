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
ln -s $dir/oh-my-zsh/themes/mytheme.zsh-theme ~/.oh-my-zsh/themes/mytheme.zsh-theme 

# Lets make it look nicer
echo ""
echo "- - - - - - - - - -"
echo ""
echo "All done. Have a great day :-*"
echo " "
echo "- - - - - - - - - -"
echo ""
