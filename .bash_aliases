# alias cls='clear'
alias csl='csmake --list-commands ; csmake --list-phases'
# alias drmc="docker rm `docker ps -a -q --filter status=exited`"
# alias drmi="docker images | awk 'NR>1 {print $3}' | xargs docker rmi"
# alias di='docker images'
# alias dla='docker ps -a; echo ''; docker images -a ; echo ----- dangling ------ ; docker images -a -f dangling=true'
alias dla='docker ps -a; echo ''; docker images -a; echo ''; docker network ls'
alias dl='docker ps; echo ''; docker images'
# alias dps='docker ps -a'
alias ssd="systemctl status 'docker*' --no-pager --full"

alias ds='dirs -v'
alias envp='env | grep -v "LS_COLORS" | grep -i "proxy" | grep -v 'UBUNTU_MENUPROXY' | sort'
alias envs='env | grep -v "LS_COLORS" | sort'
alias envsl='env | grep -v "LS_COLORS" | sort | less'
alias envg='env | grep -v "LS_COLORS" | grep -i "go" '
alias gba='git branch --all -vv'
alias gb='git branch -vv --list'
alias gca='git commit --amend'
alias gds='git diff --staged'
alias gg='gitg'
alias gh='history | grep'
# alias gitd='git checkout hp/cs/9.0-master; git branch -vv --list'
# alias gitm='git checkout hp/cs/10.0-master; git branch -vv --list'
# alias gitm='git checkout hp/cs/10.1-master; git branch -vv --list'
alias gitm='git checkout master; git branch -vv --list'
# alias gitm='git checkout hp/cs/master; git branch -vv --list'
# alias gitm='git checkout master'
alias glga='git log --graph --all --decorate --oneline'
alias glg='git log --graph --decorate'
alias glgo='git log --graph --decorate --oneline'
alias glo='git log --oneline'
alias gls='git log --stat -n 1 -p'
alias grso='git remote show origin'
alias gsl='git stash list'
alias gsm='git submodule update --init'
alias gss='git submodule status'
alias gst='git branch -vv ; git status'
alias gsti='git status --ignored'
alias gup='git up'
alias ha='history -a # write (append) recent commands to history file'
alias h='history'
alias hh='history 20'
alias hr='history -r # read (re-read) history file'
alias la='ls -A'
alias lld='ls -lF'
alias ll='ls -alF'
# alias llr='ls -alR'
# alias l='ls -CF'
alias lpath='echo $PATH | tr ":" "\n"'
alias lsl='ls -l'
alias md='mkdir'
alias mr='make reallyclean'
alias mrma='make reallyclean; make all'
# alias mvni='mvn -Dmaven.test.skip=true install'
# alias mvnp='mvn -Dmaven.test.skip=true package'
# alias mvnt='mvn test'
# alias mvntp='mvn package'
alias ose="env | sort | grep 'OS_'"
alias p3='python3'
alias pd='pushd'
alias rot='pushd +1 >/dev/null'
# alias rrot='pushd -1 >/dev/null'
alias sba='source ./.venv/bin/activate'
alias sd='sdparam'
alias tl='tree -C | less -r'
alias vah='source ./here/bin/activate'
alias vc='virsh console'
alias vh='virtualenv ./here'
alias vik='vi ~/.ssh/known_hosts'
# alias psf='ps -ef --forest'
alias psf='ps -f --ppid 2 --deselect --forest'

# A pretty 'find' command which ignores .svn directories
function pfind() {
  find $2 -type f -not -iwholename '*.svn*' -not -iwholename '*.git*' -exec grep -i --color=always "$1" {} \; -printf '\033[1;32m %p \033[0m \n\n\n';
}
# export -f pfind

# A function to enable a 'sd' alias like 'pushd +$1' - there is no way to directly parameterize a bash alias.
function sdparam() {
	pushd +$1 >/dev/null
}


