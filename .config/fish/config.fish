set -g fish_greeting
set -x EDITOR nvim
set -gx GPG_TTY (tty) 
set -gx PATH $PATH ~/.local/bin
if status is-interactive
  starship init fish | source
  zoxide init --cmd cd fish | source

# Commands to run in interactive sessions can go here

if not set -q SSH_CONNECTION
  fish_ssh_agent
end
end

