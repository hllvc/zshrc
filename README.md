# ZSH configuration with [Oh My ZSH!](https://ohmyz.sh/) and [powerlevel10k](https://github.com/romkatv/powerlevel10k)

## How to install?

### Make sure you have installed `zsh` first!

Install [Oh My ZSH!](https://ohmyz.sh/)

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

and [powerlevel10k](https://github.com/romkatv/powerlevel10k)

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
	${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Clone this repo

```
git clone https://github.com/neoclide/zshrc.git; \
cd zshrc; \
mv .zshrc .p10k.zsh ~; \
```

### Plugins that I am using are

```
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-vi-mode
)
```

If you wish to install them do the following

`git` plugin is included

for `zsh-autosuggestions`

```
git clone https://github.com/zsh-users/zsh-autosuggestions \
	${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

for `zsh-syntax-highlighting`

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
	${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

for `zsh-vi-mode`

```
git clone https://github.com/jeffreytse/zsh-vi-mode \
  $ZSH/custom/plugins/zsh-vi-mode
```

#### Setting gnome-terminal colors

If you want terminal colors for gnome-terminal copy palette from
[here](./gnome-terminal-colorscheme). Find `/org/gnome/terminal/legacy/profiles:/`
in dconf-editor, open your profile and search for `palette`. Set custom value of
colorscheme you just copied.
