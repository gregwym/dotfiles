# purple username
username() {
   echo "%{$FG[012]%}%n%{$reset_color%}"
}

# current directory
directory() {
   echo "%~"
}

# current time with milliseconds
current_time() {
   echo "%D{%b %d} %*"
}

# returns exit code if there are errors, nothing otherwise
return_status() {
   echo "%(?..%{$fg[red]%}$?%{$reset_color%} )"
}

# set the git_prompt_info text
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# putting it all together
PROMPT='%{$fg[green]%}$(directory)$(git_prompt_info)\$%{$reset_color%} '
RPROMPT='$(return_status)$(current_time)'
