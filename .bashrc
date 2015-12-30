#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias theos='$THEOS/bin/nic.pl'
PS1='[\u@\h \W]\$ '

export THEOS=/opt/theos
export PATH=$THEOS/bin:$PATH
export THEOS_DEVICE_IP=192.168.1.8
