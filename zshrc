source ~/antigen.zsh
antigen use oh-my-zsh



antigen bundle ssh-agent
antigen bundle sublime
antigen bundle git
antigen bundle debian  
antigen bundle autojump
antigen bundle pip
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting		
antigen bundle djui/alias-tips
#antigen bundle vi-mode
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship


antigen apply
  
  
  
  
  SPACESHIP_PROMPT_ORDER=(
 # time          # Time stampts section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  #git           # Git section (git_branch + git_status)
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
  #venv          # virtualenv section
  # conda         # conda virtualenv section
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
   venv
   pyenv


  )

 HYPHEN_INSENSITIVE="true"
 ENABLE_CORRECTION="true"
 COMPLETION_WAITING_DOTS="true"

 SPACESHIP_RPROMPT_SEPARATE_LINE="true"
 #spaceship_vi_mode_disable 
 export HISTSIZE=32768;
 export HISTFILESIZE=$HISTSIZE;
 export HISTCONTROL=ignoredups;
 export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";
 export TERM=xterm-256color

# SPACESHIP_VI_MODE_COLOR="blue"
#

# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

# Example aliases
  alias zshconfig="vim ~/.zshrc"
# alias python="python3.6"
  alias va="source ./venv/bin/activate"
  alias vimconfig="vim /home/porosya/.vimrc" 
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -selection clipboard -o'
  alias tmux='tmux attach || tmux new'  
  alias reg='chsh -s $(which zsh)'
