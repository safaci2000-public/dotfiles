alias ll='ls -lh'
alias la='ls -la'
alias c=clear

alias rshl='rsync --bwlimit=500'


function pyEnv() 
{
    alias venv='source $HOME/projects/python/venv/bin/activate'
    alias venv3='source $HOME/projects/python/venv3/bin/activate'
    #if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

}

function mydocker() 
{
    PATH=$PATH:~/projects/docker/docker-images
    alias d=docker 
    alias dc='docker-compose'
    alias dm='docker-machine'
    alias docker_resize="echo qemu-system-x86_64 -drive file=$HOME/Library/Containers/com.docker.docker/Data/com.docker.driver.amd64-linux/Docker.qcow2 -m 512 -cdrom $HOME/Desktop/gparted-live-0.26.0-2-i686.iso -boot d -device usb-mouse -usb"

}


pyEnv
mydocker 
LDFLAGS="-L/usr/local/opt/openssl/lib"
CPPFLAGS="-I/usr/local/opt/openssl/include"
SCALA_HOME="/usr/local/Cellar/scala/2.11.2/libexec"

PATH=$PATH:$HOME/platform-tools/git/
