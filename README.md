Using NeoVIM
```
brew install neovim
brew install python
brew install python3
pip2 install neovim --upgrade
pip3 install neovim --upgrade
```

## Quickstart

```
$ git clone git@github.com:josecoelho/vim-files.git ~/.vim
$ mkdir ~/.vim/bundle
$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
$ sh ./installer.sh ~/.vim/bundle/dein
$ rm ./installer.sh
```

### Using NeoVim

```
  ln -s ~/.vim ~/.config/nvim
```

### Bundle

Using [dein.vim](https://github.com/Shougo/dein.vim)

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

