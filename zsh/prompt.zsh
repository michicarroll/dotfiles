local user_host='%n@%m'
local root_prompt='%{$fg_bold[red]%}!!%{$reset_color%}'

PROMPT='%{$fg[blue]%}${user_host} %{$fg_bold[green]%}%{$reset_color%}%c %{$fg[green]%}$(git_prompt_info)%{$reset_color%}→ % %{$reset_color%}'

if [[ $EUID -eq 0 ]]
then
  # Apply a warning when working as root
  PROMPT="$PROMPT$root_prompt "
fi

function rvm_gemset {
  if [ -f ~/.rvm/bin/rvm-prompt ]
  then
    echo `~/.rvm/bin/rvm-prompt`
  fi
}

RPROMPT='%{$fg[cyan]%}$(rvm_gemset)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}⚡ %{$fg[green]%}]%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}] "
