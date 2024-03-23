alias cls clear
alias cp "cp -r"
alias mkdir "mkdir -p"
alias py python
alias d docker
alias dcm "docker compose"

# exa
alias ls "eza --group-directories-first"
alias la "eza  -a --header --group-directories-first"
alias ll "eza --group --header  --group-directories-first --long --git"
alias ld "eza --group --header -D --long --git --group-directories-first"
alias lla "eza --group --header -a --group-directories-first --long --git"

# vim

alias vim nvim
alias e vim

# go
alias gor "go run"
alias gob "go build"
alias gog "go get"
alias gom "go mod"


abbr -a dj "python manage.py"
abbr -a drs "python manage.py runserver"
abbr -a drp "python manage.py runserverplus"
abbr -a dshr "python manage.py shell"
abbr -a dsp "python manage.py shell_plus"
abbr -a dsm "python manage.py schemamigration"
abbr -a dm "python manage.py migrate"
abbr -a dmm "python manage.py makemigrations"
abbr -a dmmm "python manage.py makemigrations && python manage.py migrate"
abbr -a ddd "python manage.py dumpdata"
abbr -a dld "python manage.py loaddata"
abbr -a dt "python manage.py test"

abbr -a g "git"
abbr -a gst "git status"
abbr -a gl "git pull"
abbr -a gp "git push"
abbr -a gcm "git commit -m "
abbr -a gco "git checkout"
abbr -a gaa "git add ."
abbr -a ga "git add"

alias portastart "vboxmanage startvm OLE9v6 --type headless"
alias portastop "vboxmanage controlvm OLE9v6 acpipowerbutton"
