
ssh-remove-bad-hosts() {
	if [ "" == "$1" ]; then
		echo "Usage: ssh-remove-bad-hosts <pattern>";
		return;
	fi
	
	grep -v "$1" ~/.ssh/known_hosts > ~/.ssh/known_hosts2 && mv ~/.ssh/known_hosts2 ~/.ssh/known_hosts
}

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=0
    source $HOME/.bash-git-prompt/gitprompt.sh
fi

export PS1="[\u@\h:\l \W]\\$ "

export HISTSIZE=100000
export HISTFILESIZE=

if [ -f "$HOME/.bash_local" ]; then
    source $HOME/.bash_local
fi
