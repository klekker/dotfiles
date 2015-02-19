unsetopt beep
bindkey -v
bindkey "^R" history-incremental-search-backward

# source /usr/local/bin/aws_zsh_completer.sh

setopt HIST_IGNORE_DUPS
setopt no_prompt_cr
HISTFILE=$HOME/.zsh_histfile
HISTSIZE=2000
SAVEHIST=50000

PROMPT='%B[%T] %n@%m:%~
$%b '
