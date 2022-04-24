#local rvm_ruby=''                                                                                                                                                                                       [
#if which rvm-prompt &> /dev/null; then
#  rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
#else
#  if which rbenv &> /dev/null; then
#    rvm_ruby='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
#  fi
#fi

local seperate_line='$FG[237]-----------------------------------------------------------------------------------------------------%{$reset_color%}'
current_dir='%{$fg[cyan]%}%~%{$reset_color%}'

# primary prompt
PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'
#PROMPT="${seperate_line}
#%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p ${current_dir} %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}"

# right prompt
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'
RPROMPT='$my_gray%n@%m%{$reset_color%}%'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
