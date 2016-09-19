#!/bin/sh
#
function pushup() 
{
   git push gerrit HEAD:refs/for/release-2016-$1
}

function pushbranch()
{
    git push origin --force $(git branch 2>/dev/null  | grep "*" | sed -e 's/* //')
}


alias pushmaster='git push origin master:master'
alias pushjujube='git push gerrit HEAD:refs/for/release-2015-jujube'
alias pushgus='git push gerrit HEAD:refs/for/release-2014-gus'
alias pushgerrit='git push gerrit HEAD:refs/for/master'
alias rebasem='git rebase -i origin/master'
alias gitSave="git log -n 1 --pretty=tformat:%s%n%n%b | git commit -F - -a --amend"
alias gitHard="git fetch origin && git reset --hard origin/master"

alias gl='git pull --prune'
alias glg="git log --graph --decorate --oneline --abbrev-commit"
alias glga="glg --all"
alias gp='git push origin HEAD'
alias gpa='git push origin --all'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias ga='git add'
alias gaa='git add -A'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gs='git status -sb'
alias gcl='git clone'
alias gcb='git-copy-branch-name'
alias gpr='gp && git pr'

gi() {
  curl -s "https://www.gitignore.io/api/$*";
}
