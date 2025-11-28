#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# TODO decide wether this is still necessary or not
# alias code='code --enable-features=WaylandWindowDecorations --ozone-platform-hint=auto'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:/usr/bin/pycharm-2025.2/bin

export BASE_PATH=/home/davide/tirocinio/OCT_segmentation/data/RETOUCH_dataset/RETOUCH_PROCESSED_NNUNET
export nnUNet_raw=$BASE_PATH/nnUNet_raw
export nnUNet_preprocessed=$BASE_PATH/nnUNet_preprocessed
export nnUNet_results=$BASE_PATH/nnUNet_results

. "$HOME/.local/bin/env"

# Launch starship terminal prompt
eval "$(starship init bash)"
