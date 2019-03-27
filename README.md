# Using NeoVIM

## MAC
```
brew install neovim
brew install python
brew install python3
brew install ag
pip2 install neovim --upgrade
pip3 install neovim --upgrade
```

## Ubuntu
```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo apt-get install silversearcher-ag
```

## Quickstart

```
git clone git@github.com:josecoelho/vim-files.git ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Using NeoVim

```
  ln -s ~/.vim ~/.config/nvim
```

### Bundle

Using [Plug](https://github.com/junegunn/vim-plug)

### For vim-instant-markdown

```
npm -g install instant-markdown-d
```

## Usage

### Fuzzy Search by files

The lovely fuzzy search of files is available using the plugin [ctrlp](https://github.com/kien/ctrlp.vim)

The shortcut is Ctrl+p

### The "Project Switcher"

I'm using [vim-ctrlp-session](https://github.com/okcompute/vim-ctrlp-session) to keep only one instance of VI open
and move between projects. 
It's like working with workspaces/projects on Sublime.

Usually, when working on a new project, I access the folder using the terminal and open vim there.

```
$ cd my-project
$ vim .
```

Then I create a new session for that project

```vim
:SGit
```

From now on, when I want to switch to this specific project I run 
the command `:CtrlPSession`, that allows me to fuzzy search for the desired session

To keep this faster, I've setup the shortcut Ctrl+Space to open this "Project Switcher"

