# dotfiles

Before doing anything, make sure you know what are you doing! Settings applied by this repository are very personal, and definitely not suite everyones needs. I suggest to create your own set of dotfiles based on this repo.

### 1. Clone repository to hidden .dotfile directory in your home directory

```git clone git@github.com:gregwym/dotfiles.git```

### 2. Run setup-symlinks.sh.

```source ~/.dotfiles/setup-symlinks.sh```

### 3. Same with setup-macos.sh file.

```source ~/.dotfiles/setup-osx.sh```

### 4. Same with setup-brew.sh file.

```source ~/.dotfiles/setup-brew.sh```

### 5. symlinked others.

VSCode:
```
ln -s ~/.dotfiles/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.dotfiles/VSCode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ~/.dotfiles/VSCode/snippets/ ~/Library/Application\ Support/Code/User/snippets
```

### Don't forget about:

- install brew
- ssh setup
- download your fav apps from brew:

    ```
    brew cask install alfred google-chrome visual-studio-code iina spectacle flux
    ```

- download VSCode plugins
    - `EditorConfig.editorconfig-0.12.1`
    - `PKief.material-icon-theme-3.2.3`
    - `dbaeumer.vscode-eslint-1.4.7`
    - `eamodio.gitlens-8.0.2`
    - `eg2.tslint-1.0.28`
    - `esbenp.prettier-vscode-1.2.2`
    - `joelday.docthis-0.6.0`
    - `jpoissonnier.vscode-styled-components-0.0.16`
    - `kumar-harsh.graphql-for-vscode-1.9.0`
    - `ms-python.python-2018.1.0`
    - `ms-vscode.theme-tomorrowkit-0.1.4`
    - `richie5um2.vscode-sort-json-1.11.0`
    - `sleistner.vscode-fileutils-2.8.1`
    - `wmaurer.change-case-1.0.0`
    - `xabikos.javascriptsnippets-1.5.0`
    - `xabikos.reactsnippets-1.7.0`
    - `zhuangtongfa.material-theme-2.12.6`

- download Chrome plugins
    - AddGuard AdBlocker
    - Drag and Go
    - JSON Formatter
    - Polar Tab
    - Postman
    - Vimium
