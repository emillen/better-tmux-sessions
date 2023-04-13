# better-tmux-sessions

This is just my scripts to improve life using tmux sessions.

## Installation

1. This projects assumes ``~/.local/bin` is in $PATH, and places the scripts there
2. install `fzf` and `zoxide`
3. then run `./install.sh`

## Usage

The scripts are meant to be used in hotkeys for tmux, in combination as commands when you're outside a tmux session.

### ta

show active sessions in fzf - the selected one is opened

```
$ ta
```

opens the session with the $session-name

```
$ ta $session-name
```

### ts

lets you search your folders in your home directory, using fzf - selected one is opened as a session:

```
$ ts
```

lets you search your folders in the selected directory, using fzf - selected one is opened as a session

```
$ ts /path/to/folder
```

### tn

opens a session from the current folder

```shell
$ tn
```

open a session in selected folder

```shell
$ tn /path/to/folder
```
