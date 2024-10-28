set -g fish_greeting
set -x EDITOR nvim
set -gx GPG_TTY (tty) 
set -gx PATH $PATH ~/.local/bin
# eval "$(ssh-agent -c)" > /dev/null
if not pgrep --full ssh-agent | string collect > /dev/null
  eval (ssh-agent -c)
  set -Ux SSH_AGENT_PID $SSH_AGENT_PID
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
end
if status is-interactive
  starship init fish | source
  atuin init fish | source
  zoxide init --cmd cd fish | source
# Commands to run in interactive sessions can go here
end

