# better-tmux-sessions

This is just my scripts to improve life using tmux sessions.

## Installation

You need `fzf`, and `zoxide` for this to work

You can install it using tpm:

```sh
set -g @plugin 'emillen/better-tmux-sessions'
```

once installed you can add the scripts folder in the plugin-path to your `$PATH` to be able to use them outside tmux

```sh
export PATH="$PATH:~/.tmux/tpm/better-tmux-sessions/scripts"
```

## Usage

The scripts are meant to be used in hotkeys for tmux, in combination as commands when you're outside a tmux session.

### ta

![ta](images/ta.png)

The tmux binding is `prefix + C-a`.

Show active sessions in fzf - the selected one is opened:

```sh
$ ta
```

opens the session with the $session-name:

```sh
$ ta $session-name
```

**Bonus**: You can Ctrl+d to kill sessions when ta is opened

### ts

![ts](images/ts.png)

The tmux binding is `prefix + C-s`.

lets you search your folders in your home directory, using fzf - selected one is opened as a session:

```sh
$ ts
```

lets you search your folders in the selected directory, using fzf - selected one is opened as a session

```sh
$ ts /path/to/folder
```

### tn

![tn](images/tn.png)

The tmux binding is `prefix + C-n`,
which a new session in your home folder and asks you for the session name.

opens a session from the current folder

```sh
$ tn
```

open a session in selected folder

```sh
$ tn /path/to/folder
```

open a session in selected folder, and grant it the specified session name

```sh
$ tn /path/to/folder $session_name
```

opens a a new session in selected folder, and asks you for the session name

```sh
$ tn /path/to/folder --ask-session
```

### Rebind keys

you can do the following to rebind keys

```sh
set-option -gw @better-tmux-sessions-ta-binding "A"
set-option -gw @better-tmux-sessions-ts-binding "S"
set-option -gw @better-tmux-sessions-tn-binding "N"

set -g @plugin 'emillen/better-tmux-sessions'
```

and then reload tmux
