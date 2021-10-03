setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

if [[ -z "$EXA_TREE_IGNORE" ]]; then
  EXA_TREE_IGNORE=".cache|cache|node_modules|vendor"
fi

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias -2='cd -2'
alias -3='cd -3'
alias -4='cd -4'
alias -5='cd -5'
alias -6='cd -6'
alias -7='cd -7'
alias -8='cd -8'
alias -9='cd -9'

alias md='mkdir -p'
alias rd=rmdir

function d () {
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -10
  fi
}
compdef _dirs d


alias ls='exa --git --group-directories-first'
alias ll='ls -l'
alias la='ls -la'

# Thanks to https://dev.to/rawkode/tip-5-replacing-ls-with-exa-3o5n for this excellent idea
alias lt='ls --tree -L 2 -I ${EXA_TREE_IGNORE}'
alias ltt='ls --tree -L 3 -I ${EXA_TREE_IGNORE}'
alias lttt='ls --tree -L 4 -I ${EXA_TREE_IGNORE}'
alias ltttt='ls --tree -L 5 -I ${EXA_TREE_IGNORE}'