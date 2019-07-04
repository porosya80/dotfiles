autoload -Uz compinit

typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || 
stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

zmodload -i zsh/complist

export PATH=~/.local/bin:~/.bin:~/.local/lib:$PATH



source <(antibody init)
antibody bundle robbyrussell/oh-my-zsh path:plugins/django
antibody bundle robbyrussell/oh-my-zsh path:plugins/git
antibody bundle robbyrussell/oh-my-zsh path:plugins/z
antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle djui/alias-tips
antibody bundle denysdovhan/spaceship-prompt  
  
  
  SPACESHIP_PROMPT_ORDER=(
 # time          # Time stampts section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
#  git           # Git section (git_branch + git_status)
  # hg            # Mercurial section (hg_branch  + hg_status)
  # package       # Package version
  # node          # Node.js section
  # ruby          # Ruby section
  # elixir        # Elixir section
  # xcode         # Xcode section
  # swift         # Swift section
  # golang        # Go section
  # php           # PHP section
  # rust          # Rust section
  # haskell       # Haskell Stack section
  # julia         # Julia section
  # docker        # Docker section
  # aws           # Amazon Web Services section
  venv          # virtualenv section
  #conda         # conda virtualenv section
  #pyenv         # Pyenv section
  # dotnet        # .NET section
  # ember         # Ember.js section
  # kubecontext   # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
#  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
 # exit_code     # Exit code section
  char          # Prompt character
)
  SPACESHIP_RPROMPT_ORDER=(
    git
    docker
   #venv
   #pyenv


  )

 HYPHEN_INSENSITIVE="true"
 ENABLE_CORRECTION="true"
 COMPLETION_WAITING_DOTS="true"

 SPACESHIP_RPROMPT_SEPARATE_LINE="true"

export TERM=xterm-256color
export PIPENV_VERBOSITY=-1

# Save history so we get auto suggestions
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE
# Options
setopt auto_cd # cd by typing directory name if it's not a command
setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances
setopt correct_all # autocorrect commands
setopt interactive_comments # allow comments in interactive shells
# Improve autocompletion style
zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    eval "$(<~/.ssh-agent-thing)"
fi


# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi
#  eval `dircolors /home/porosya/.dir_colors/dircolors'
# Example aliases
  alias zshconfig="vim ~/.zshrc"
  alias vimconfig="vim /home/porosya/.vimrc" 
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -selection clipboard -o'
  alias tmux='tmux attach || tmux new'  
  alias reg='chsh -s $(which zsh)'
  if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
      source ~/.config/exercism/exercism_completion.zsh
  fi
#  alias venv-init='test -d venv && echo"Virtualvenv alredr exists." || python3 -m venv venv'
#
#  alias venv-stop='deactivate'
#  alias va='test -d venv && source ./venv/bin/activate || echo "No Virtualenv in current folder."'
  alias djm="python3 manage.py"
  alias djs="python3 manage.py runserver"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
    unset MANPATH # delete if you already modified MANPATH elsewhere in your config
    export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
