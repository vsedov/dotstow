# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# @author     umgbhalla
# @license    The Unlicense
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# This is free and unencumbered software released into the public domain.
# Anyone is free to copy, modify, publish, use, compile, sell, or
# distribute this software, either in source code form or as a compiled
# binary, for any purpose, commercial or non-commercial, and by any
# means.
# In jurisdictions that recognize copyright laws, the author or authors
# of this software dedicate any and all copyright interest in the
# software to the public domain. We make this dedication for the benefit
# of the public at large and to the detriment of our heirs and
# successors. We intend this dedication to be an overt act of
# relinquishment in perpetuity of all present and future rights to this
# software under copyright law.
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.
# For more information, please refer to <https://unlicense.org>
# Basic environment settings related to the zsh compiliation (not private)
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# XDG Base Directory Specification
# http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DESKTOP_DIR="$HOME/desktop/"
export XDG_DOWNLOAD_DIR="$HOME/downloads/"
export XDG_TEMPLATES_DIR="$HOME/templates/"
export XDG_PUBLICSHARE_DIR="$HOME/public/"
export XDG_DOCUMENTS_DIR="$HOME/docs/"
export XDG_MUSIC_DIR="$HOME/music/"
export XDG_PICTURES_DIR="$HOME/pics/"
export XDG_VIDEOS_DIR="$HOME/vids/"
export ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"
export ZSH_CONFIG="$XDG_CONFIG_HOME/zsh"
mkdir -p $ZSH_CACHE_DIR
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# export DATE=$(date +%Y-%m-%d)
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# # set PATH so it includes user's private bin if it exists
# if [ -d "$HOME/bin" ] ; then
#   PATH="$HOME/bin:$PATH"
# fi
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# # set PATH so it includes user's private bin if it exists
# if [ -d "$HOME/.local/bin" ] ; then
#   PATH="$HOME/.local/bin:$PATH"
# fi
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# set PATH after cheching if folder even exists and not of already part of PATH
function pth() {
  if [ -d "$1" ] ; then;
    [[ ":$PATH:" != *":$1:"* ]] && export PATH="$1:$PATH"
  fi
}
# set PATH after cheching if folder even exists and not of already part of PATH
# added recursivly
function pthr() {
  if [ -d "$1" ] ; then;
    [[ ":$PATH:" != *":$1:"* ]] && export PATH="$PATH:${$(find $1 -type d -printf %p:)%%:}" 
  fi
}

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# Path settings
## Eliminates duplicates in *paths
typeset -gU path cdpath fpath manpath
path=("$path[@]")

# export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"#
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# ENVIORNMENT variables
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
export ARCHFLAGS="-arch x86_64"
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LLC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
export GOPATH=$HOME/go
export XAUTHORITY=$HOME/.Xauthority
# export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export PYTHON_CONFIGURE_OPTS="--enable-framework"
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# Add colors to the less and man commands.
export LESS=-R
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"
export LESS_TERMCAP_mb=$'\e[1;31mm'    # begin blinking
export LESS_TERMCAP_md=$'\e[1;36m'     # begin bold
export LESS_TERMCAP_us=$'\e[1;332m'    # begin underline
export LESS_TERMCAP_so=$'\e[1;44;33m'  # begin standout-mode - info box
export LESS_TERMCAP_me=$'\e[0m'        # end mode
export LESS_TERMCAP_ue=$'\e[0m'        # end underline
export LESS_TERMCAP_se=$'\e[0m'        # end standout-mode#
### "$$$" as manpager
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# export MANPAGER="nvim -c 'set ft=man' -"
export MANPAGER='nvim +Man!'
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
export BROWSER=vivaldi-stable
export XIVIEWER='feh'
export PLAYER='mpv'
export VISUAL=nvim
export EDITOR="$VISUAL"
export FILE="${EDITOR}"
export PAGER="less"
export READER="zathura"
export TERMINAL="kitty"
export CM_LAUNCHER=rofi
export JAVA_HOME='/usr/lib/jvm/java-8-openjdk/jre/'
# export JAVA_HOME='/usr/lib/jvm/java-8-openjdk'
export _JAVA_AWT_WM_NONREPARENTING=1
export ANDROID_SDK_ROOT='/opt/android-sdk'
export CHROME_EXECUTABLE='/usr/bin/google-chrome-stable'
export TESSDATA_PREFIX=/usr/share/tessdata
export BUN_INSTALL=$HOME/.bun
export PROJECTS=$HOME/hub
export PNPM_HOME="/home/umang/.local/share/pnpm"
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# executable search path
pth /usr/local/sbin
pth $HOME/.local/bin
pth $HOME/.local/sbin
pth $JAVA_HOME/bin
pth $ANDROID_SDK_ROOT/tools/bin/
pth $ANDROID_ROOT/emulator
pth $ANDROID_SDK_ROOT/tools/
pth $HOME/.node_modules/bin
pth $HOME/.yarn/bin
pth $HOME/.config/yarn/global/node_modules/.bin
pth $HOME/.cargo/bin
pth $HOME/.local/share/gem/ruby/3.0.0/bin
pth /usr/local/go/bin
pth $GOPATH/bin
pth $PNPM_HOME
pthr $HOME/.scripts/

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# Ignoring files will be handled by ~/.fdignore


# export FZF_DEFAULT_OPTS="--no-mouse 
# --height 50% 
# -1 
# --reverse 
# --multi 
# --inline-info 
# --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' 
# --preview-window='right:hidden:wrap' --bind='f3:execute(bat --style=numbers {} || less -f {}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy),ctrl-x:execute(rm -i {+})+abort'"

export FZF_DEFAULT_OPTS=" -1 -i 
--prompt '⯈ ' 
--marker=+ 
--cycle
--keep-right  
--color=gutter:-1,pointer:#ff3c3c,info:#0dbc79,hl:#0dbc79,hl+:#23d18b 
--reverse 
--height 100%
--color=fg:250,fg+:15,hl:203,hl+:203  
--color=bg:#0c1014,gutter:-1,pointer:#ff3c3c,info:#0dbc79
--bind 'btab:toggle-up,tab:toggle-down'
--bind='?:toggle-preview'
--bind='ctrl-u:preview-page-up'
--bind='ctrl-d:preview-page-down'
--preview-window 'right:60%:wrap'
"
# --padding 10%
# --preview-window 'right:60%:hidden:wrap'"
# --preview '([[ -d {} ]] && tree -C {}) || ([[ -f {} ]] && bat --style=full --color=always {}) || echo {}' "
# --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' "

export FD_OPTIONS="--hidden --follow --exclude .git --exclude node_modules --exclude .npm"
# Use git-ls-files inside git repo, otherwise fd
export FZF_DEFAULT_COMMAND="fd --type f --type l $FD_OPTIONS || git ls-files --cached --others --exclude-standard"
export FZF_CTRL_T_COMMAND="fd $FD_OPTIONS "
export FZF_CTRL_T_OPTS="--ansi  --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' "
export FZF_ALT_C_COMMAND="fd --type d $FD_OPTIONS"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"
# Options to fzf command
export FZF_COMPLETION_OPTS="-x"
if (( $+commands[zoxide] )); then
    export _ZO_DATA_DIR=$XDG_DATA_HOME/zoxide
    export _ZO_FZF_OPTS=$FZF_DEFAULT_OPTS
fi
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# default shell
export SHELL=/usr/bin/zsh
export XTERM_SHELL=/usr/bin/zsh
# 10ms for key sequences
export KEYTIMEOUT=1
# suppress no newline % symbol marker
export PROMPT_EOL_MARK=''
export ZSH_AUTOSUGGEST_MANUAL_REBIND=1  # make prompt faster
export DISABLE_MAGIC_FUNCTIONS=true     # make pasting into terminal faster
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
