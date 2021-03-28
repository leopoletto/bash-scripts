# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=agnoster

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="$PATH:$HOME/.config/composer/vendor/bin"

#OH MY ZSH
alias tconfig="sudo vi $HOME/.zshrc"
alias tsource="source $HOME/.zshrc"

#NGINX
alias site-install="sudo bash /usr/share/nginx/site-install"

#MISC
alias fixdir="sudo find . -type d -exec chmod 775 {} \; && sudo find . -type f -exec chmod 664 {} \; && sudo chown -R ${USER}:www-data ."

# PHP
alias a="php artisan"
alias c="composer"
alias cu="composer update"
alias cr="composer require"
alias ci="composer install"
alias cda="composer dump-autoload -o"
alias mfs='php artisan migrate:fresh --seed'
alias sshconfig="vi $HOME/.ssh/config"
alias o="open_command"

# Git
alias commit="git commit -m"
alias add="git add"
alias checkout="git checkout"
alias push="git push origin"
alias pull="git pull origin"
alias status="git status"
alias merge="git merge"

# PHP
alias switch-php80="sudo update-alternatives --set php /usr/bin/php8.0"
alias switch-php74="sudo update-alternatives --set php /usr/bin/php7.4"
alias switch-php73="sudo update-alternatives --set php /usr/bin/php7.3"
alias switch-php72="sudo update-alternatives --set php /usr/bin/php7.2"
alias switch-php71="sudo update-alternatives --set php /usr/bin/php7.1"
alias switch-php70="sudo update-alternatives --set php /usr/bin/php7.0"
alias switch-php56="sudo update-alternatives --set php /usr/bin/php5.6"

# Redis
alias flush-redis="redis-cli FLUSHALL"

# IP addresses
alias ip="curl https://diagnostic.opendns.com/myip ; echo"
alias localip="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Tools
alias tinkerwell="find $HOME/Applications -type f -name 'Tinker*.AppImage' -exec sh -c "{$1}" \; &>/dev/null"
alias ray="find $HOME/Applications -type f -name 'Ray*.AppImage' -exec sh -c "{$1}" \; &>/dev/null"

#highlight
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
