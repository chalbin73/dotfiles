
# The following lines were added by compinstall
zstyle :compinstall filename '/home/albin/.zshrc'

autoload -Uz compinit
compinit
setopt extendedglob
# End of lines added by compinstall

autoload -Uz zmv
alias zcp="zmv -C"
alias zln="zmv -L"
alias doit="sudo !!"
#alias code="codium"

alias clear="echo -ne '\033c'"

PS1='%F{blue}%~ %(?.%F{green}.%F{red})%(!.#.$)%f '
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

sudo-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    [[ $BUFFER != sudo\ * ]] && BUFFER="sudo ${BUFFER% }"
    zle end-of-line
}
zle -N sudo-command-line

hello()
{
    echo "Nik ta mere"
}

# Source vivado
# source /home/albin/Vivado/install/Vivado/2024.2/.settings64-Vivado.sh

export EDITOR=nvim
export MOZ_ENABLE_WAYLAND=1
bindkey "^S" sudo-command-line
bindkey -e

#alias dup="alacritty --working-directory \$(pwd)&!"

stty -ixon

export LIBSEAT_BACKEND=logind
export XDG_CONFIG_HOME=$HOME/.config
#export XDG_RUNTIME_DIR=/run/user/$(id -u)
export ROCM_PATH=/opt/rocm
export HSA_OVERRIDE_GFX_VERSION=10.3.0
export ANDROID_NDK_ROOT=/opt/android-ndk
export ANDROID_NDK_HOME=/opt/android-ndk
export ANDROID_HOME=/opt/android-sdk
#export XDG_RUNTIME_DIR="/tmp/${uid}-runtime-dir"
export GTK_THEME=Adwaita:dark
export QT_STYLE_OVERRIDE=Fusion
export QT_QPA_PLATFORMTHEME=qt6ct

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/home/albin/.cargo/bin/:/home/albin/.local/share/coursier/bin:$PATH"
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk"

#eval $(opam env)
clear
cowsay -e oO "Hello World" | lolcat
