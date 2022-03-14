# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export EDITOR="nvim"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
# Path to your oh-my-zsh installation.
export TERM="xterm-256color"
export ZSH="/home/knnan/.oh-my-zsh"
export SPICETIFY_INSTALL="/home/knnan/spicetify-cli"


export PATH="$SPICETIFY_INSTALL:$PATH"
PATH=/bin:/usr/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.ssh:$HOME/.cargo/bin:/usr/local/go/bin:${PATH}
export PATH
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
 ZSH_THEME="powerlevel10k/powerlevel10k"
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir virtualenv vcs newline)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time date )
# POWERLEVEL9K_STATUS_OK_BACKGROUND="#bef272"
# POWERLEVEL9K_STATUS_OK_FOREGROUND="black"
# POWERLEVEL9K_TIME_BACKGROUND="grey62"
# POWERLEVEL9K_DATE_BACKGROUND="white"
# POWERLEVEL9K_DATE_FOREGROUND="black"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=10

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
SAVEHIST=999999

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

#plugins=(git zsh-autosuggestions virtualenv virtualenvwrapper docker docker-compose fzf)

# Minimum plugins
plugins=( zsh-autosuggestions copybuffer git fzf fzf-tab )


# FZF configuration


alias -g z='| fzf' # change Z to whatever you like
alias curltime="curl -w \"@$HOME/.curl-format.txt\" -o /dev/null -s "
alias fd="fdfind"

# Setting rg as the default source for fzf
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'


# Options to fzf command
export FZF_COMPLETION_OPTS='+c -x'

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=dark
--color=fg:-1,bg:-1,hl:#c678dd,fg+:#ffffff,bg+:#4b5263,hl+:#d858fe
--color=info:#98c379,prompt:#61afef,pointer:#be5046,marker:#e5c07b,spinner:#61afef,header:#61afef
-m
--layout=reverse
'

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" --exclude "node_modules" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" --exclude "node_modules" . "$1"
}


FZF_CTRL_T_COMMAND='fdfind --hidden --follow --exclude ".git" --exclude "node_modules" .'

source $ZSH/oh-my-zsh.sh
source /usr/share/doc/fzf/examples/key-bindings.zsh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vi ~/.zshrc"
alias sshconfig="vi ~/.ssh/config"
alias viconfig="vi ~/.config/nvim/init.vim"
alias reload="source ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias lss="bat"
alias lst="tree -L 1"
alias python=python3
alias xclip="xclip -selection c"
alias -g G=" | rg"
#alias vpn_connect="sudo openvpn --config /home/knnan/.local/share/networkmanagement/certificates/client.ovpn  --auth-user-pass /home/knnan/.local/share/networkmanagement/certificates/pass.txt"
alias vpn_connect="sudo openvpn --cd ~/vpn --config client.ovpn  --auth-user-pass auth.txt"
alias usa_vpn_connect="sudo openvpn --cd ~/vpn/usa_dc_vpn --config usa_dc_ssl_vpn_config.ovpn  --auth-user-pass usa_dc_auth.txt"
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
if type nvim > /dev/null 2>&1; then
    alias vim='nvim'
    alias vi='nvim'
fi



alias eve="code --list-extensions |
xargs -L 1 echo code --install-extension |
sed 's/$/ --force/' |
sed '\$!s/$/ \&\&/' > install-extensions.sh"

acs() {
    apt-cache search $1
}

cl() {
    tree -L 1
}

kk(){

  if [ $# -eq 0 ]
  then
    htop
  else
    htop -F $1
  fi
}


vif()
{
    nvim $(fzf)
}

cd_with_fzf() {
    cd $HOME && cd "$(fd -t d | fzf --preview="tree -L 1 {}" --bind="space:toggle-preview" --preview-window=:hidden)" && echo "$PWD" && tree -L 1 --dirsfirst
}

run()
{
    curfile=$1
    extension="${curfile##*.}"
    base_curfile="${curfile%.*}"
    #echo $base_curfile
    if [ "$extension" = 'cpp' ];
    then
    g++ $base_curfile.cpp -o $base_curfile.out && ./$base_curfile.out
    elif [ "$extension" = 'py' ];
    then
        python3 "$curfile"
    elif [ "$extension" = 'js' ];
    then
        node "$curfile"
    elif [ "$extension" = 'go' ];
    then
        go run "$curfile"
    fi
}

clip()
{
  cat $1 | xclip -selection c
}

dotfiles_add()
{
  config status
  config add -u
  config commit -m $1
  config push
}

help()
{
  if [ $# -eq 0 ]
  then
    curl cheat.sh
  else
    curl cheat.sh/$1
  fi
}

# ssh portforwading aliases

pfwd()
{
  if [ $1 = "dev-redis" ]
  then
    ssh -L 6676:localhost:6379 gopoolit.me
  elif [ $1 = "prod-redis" ]
  then
    ssh -L 5567:localhost:7735 gopoolit_prod_redis
  elif [ $1 = "dev-db" ]
  then
    ssh -L 8000:localhost:5432 gopoolit.me
  elif [ $1 = "dev-db-dash" ]
  then
    ssh -L 5555:localhost:5432 gopoolit_dashboard
  elif [ $1 = "prod-db" ]
  then
    ssh -L 4444:gpi-prod-database.cbwufhpbn913.eu-west-1.rds.amazonaws.com:5435 gopoolit_ec2
  fi
}

# keybindings
# zle -N cd_with_fzf
# bindkey '^F' cd_with_fzf


POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION=$'\uF303'  # plain "Arch" in place of a logo
POWERLEVEL9K_BACKGROUND='#8b67ff'
POWERLEVEL9K_DIR_FOREGROUND=234
POWERLEVEL9K_DIR_BACKGROUND='#8eb87a'
POWERLEVEL9K_DIR_ANCHOR_FOREGROUND=234
POWERLEVEL9K_DIR_ANCHOR_BACKGROUND=234
POWERLEVEL9K_DIR_SHORTENED_FOREGROUND=234
POWERLEVEL9K_DIR_SHORTENED_BACKGROUND=234
POWERLEVEL9K_OS_ICON_BACKGROUND=234
POWERLEVEL9K_OS_ICON_FOREGROUND='white'
POWERLEVEL9K_TIME_BACKGROUND='#8eb87a'


ORIGINAL_LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:';


LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=01;35;31:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:';


# LS_COLORS=$ORIGINAL_LS_COLORS

export LS_COLORS
