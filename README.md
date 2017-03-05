

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

### The "Project Switcher"

I'm using `vim-session` to keep only one instance of VI open and move between projects. 
It's like working with workspaces/projects on Sublime.

Usually, when working on a new project, I access the folder using the terminal and open vim there.

```
$ cd my-project
$ vim .
```

Then I create a new session for that project

```vim
:SaveSession my-project
```

From now on, when I want to switch to this specific project I run 
the command `:OpenSession`, that list all my available sessions and let me choose one.
To keep this faster, I've setup the shortcut Ctrl+Space to open this "Project Switcher"

When opening VI using the command `vim` the latest open session is going to be restored.
