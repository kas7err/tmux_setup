#!/usr/bin/env bash
selected=`cat ~/tmux/.tmux-cht-languages ~/tmux/.tmux-cht-command | fzf`
if [[ -z $selected ]]; then
    exit 0
fi


if grep -qs "$selected" ~/tmux/.tmux-cht-languages; then
    read -p "Enter Query: " query
    query=`echo $query | tr ' ' '+'`
    tmux neww bash -c "echo \"curl cht.sh/$selected/$query/\" & curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done"
else
    tmux neww bash -c "curl -s cht.sh/$selected~$query | less"
fi
