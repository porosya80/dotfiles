function pubkey
  if test -f ~/.ssh/id_rsa.pub
    cat ~/.ssh/id_rsa.pub | xclip -selection clipboard; and echo '=> Public key copied to clipboard.'
  else if test -f ~/.ssh/id_ed25519.pub
    cat ~/.ssh/id_ed25519.pub | xclip -selection clipboard; and echo '=> Public key copied to clipboard.'
  else
    echo 'No public key found.'
  end
end
