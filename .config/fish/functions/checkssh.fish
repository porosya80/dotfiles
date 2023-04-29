function checkssh
  if set -q SSH_CONNECTION
    echo SSH
  else 
    echo No ssh
  end
end
