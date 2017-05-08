## Add you prefered aliases
alias ducks='du -cksh * | sort -h'

## Setting pretty colors to PS1
blue="\033[38;5;32m\]\033[48;5;256m\]"
gray="\033[38;5;255m\]\033[48;5;244m\]"
suse="\[\033[38;5;42m\]\033[48;5;22m\]"
reset="\[\033[0m\]"
debian="\[\033[38;5;15m\]\033[48;5;160m\]"
os=$(cat /etc/os-release |grep ^NAME=|cut -d= -f2| sed -e 's/"//g')
version=$(cat /etc/os-release | grep VERSION=|cut -d= -f2 |sed -e 's/"//g')

dist=$(cat /etc/os-release |grep ID_LIKE|cut -d= -f2|sed 's/"//g')

# Green colors for Suse, red for everything else
if [ "$dist" = "suse" ]; then
	export PS1="$suse$os $version:$gray\w$\n$reset> "
else
	export PS1="$debian$os $version:$gray\w$\n$reset> 
fi

