set -e

# Variables
dir=~/.dotfiles
files=(
  ".zshrc"
  ".oh-my-zsh/custom/themes"
  ".oh-my-zsh/custom/zsh-autosuggestions.zsh"
)

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir

# Create symlinks
for file in "${files[@]}"; do
  if [ -L ~/$file ]; then
    echo "Skip ~/$file, it's already a symbolic link"
    continue
  fi

  if [ -e ~/$file ]; then 
    echo "Moving ~/$file to ~/$file.bak"
    mv ~/$file ~/$file.bak
  fi

  echo "Creating symlink to $dir/$file at ~/$file"
  ln -s $dir/$file ~/$file
done

# Create symlinks for VSCode
echo "Creating symlink for VSCode configs."
ln -s $dir/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s $dir/VSCode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s $dir/VSCode/snippets/ ~/Library/Application\ Support/Code/User/snippets

# Lets make it look nicer
echo "- - - - - - - - - -"
echo "All done. Have a great day."
echo "- - - - - - - - - -"
