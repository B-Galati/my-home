alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=always -F --group-directories-first'
alias ll='ls -lahF'
alias lo="ls -lha --color=always -F --group-directories-first | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\"%0o \",k);print}'"
alias vi='vim'
alias mkdir='mkdir -p -v'
alias service='sudo service --status-all'
alias du='du -h --max-depth=1'
alias dusort='du -ah | sort -hr'
alias df='df -h'
alias rm='rm -I'

# Dev aliases
alias sf='php app/console'
alias sfclear='rm -rf app/cache/* && sf cache:warmup'
alias composer='composer -vv'
alias puli='set -f;puli';puli(){ command puli "$@";set +f;}	
alias npm-exec='PATH=$(npm bin):$PATH'
alias atoum='vendor/atoum/atoum/bin/atoum'
#alias php='php -dzend_extension=xdebug.so'

# Docker aliases
alias meteor='docker run -it --rm -v "$(pwd)":/app danieldent/meteor meteor'
alias composer='docker run  -it --rm -v $HOME/.composer:/home/composer/composer -v $(pwd):/app -v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) -e SSH_AUTH_SOCK=$SSH_AUTH_SOCK -e HTTP_PROXY=$HTTP_PROXY -e HTTPS_PROXY=$HTTPS_PROXY --name composer benoitg/composer -vv'
alias sfdockerclear='rm -rf app/cache/* && docker-compose run --rm web php app/console cache:warmup'
alias phpunit='docker run --rm -it -v $(pwd):/app phpunit/phpunit'
alias atoumdocker='docker run --rm -it -v $(pwd):/src atoum/atoum'
