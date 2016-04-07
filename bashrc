# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# export the prompt - 2016-02-12
#PS1="[\e[1;35m\u\e[m@\e[1;34m\h\e[m \w] \n\$ "
PS1="\e[1;35m\u\e[m@\e[1;34m\h\e[m \w \$ "
