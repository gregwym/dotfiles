sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git config --global user.name "Greg Wang"
git config --global user.email "gregwym@users.noreply.github.com"
git config --global push.default current
git config --global pager.branch false
git config --global pull.ff only
git lfs install
