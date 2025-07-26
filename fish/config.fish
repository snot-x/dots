if status is-interactive
    # Commands to run in interactive sessions can go here
    pkmn -r --no-title
    starship init fish | source &
    thefuck --alias | source &
    ~/.config/fish/tty.sh &
end
zoxide init fish | source
set -Ux fish_user_paths ~/.local/bin/ $fish_user_paths
set -l teal 94e2d5
set -l flamingo f2cdcd
set -l mauve cba6f7
set -l pink f5c2e7
set -l red f38ba8
set -l peach fab387
set -l green a6e3a1
set -l yellow f9e2af
set -l blue 89b4fa
set -l gray 1f1d2e
set -l black 191724

# Completion Pager Colors
set -g fish_pager_color_progress $gray
set -g fish_pager_color_prefix $mauve
set -g fish_pager_color_completion $peach
set -g fish_pager_color_description $gray

# Some config
set -g fish_greeting

# Git config
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showupstream informative
set -g __fish_git_prompt_showdirtystate yes
set -g __fish_git_prompt_char_stateseparator ' '
set -g __fish_git_prompt_char_cleanstate '✔'
set -g __fish_git_prompt_char_dirtystate '✚'
set -g __fish_git_prompt_char_invalidstate '✖'
set -g __fish_git_prompt_char_stagedstate '●'
set -g __fish_git_prompt_char_stashstate '⚑'
set -g __fish_git_prompt_char_untrackedfiles '?'
set -g __fish_git_prompt_char_upstream_ahead ''
set -g __fish_git_prompt_char_upstream_behind ''
set -g __fish_git_prompt_char_upstream_diverged ﱟ
set -g __fish_git_prompt_char_upstream_equal ''
set -g __fish_git_prompt_char_upstream_prefix ''''

set -g man_blink -o $teal
set -g man_bold -o $pink
set -g man_standout -b $gray
set -g man_underline -u $blue

# Directory abbreviations
abbr -a -g d dirs
abbr -a -g h 'cd $HOME'
abbr -a -g cfgo 'cd ~/.config/' # Shorthand for cd to .config for easy access
abbr -a -g cfg '~/.config/'
# Locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Exports
export VISUAL="nvim"
export EDITOR="$VISUAL"

# Term
switch "$TERM_EMULATOR"
    case '*kitty*'
        export TERM='xterm-kitty'
    case '*'
        export TERM='xterm-256color'
end

# User abbreviations
abbr -a -g ytmp3 'youtube-dl --extract-audio --audio-format mp3' # Convert/Download YT videos as mp3
abbr -a -g cls clear # Clear
abbr -a -g h history # Show history
abbr -a -g upd 'yay -Syu --noconfirm' # Update everything
abbr -a -g please sudo # Polite way to sudo
abbr -a -g fucking sudo # Rude way to sudo
abbr -a -g sayonara 'shutdown now' # Epic way to shutdown
abbr -a -g stahp 'shutdown now' # Panik - stonk man
abbr -a -g ar 'echo "awesome.restart()" | awesome-client' # Reload AwesomeWM
abbr -a -g shinei 'kill -9' # Kill ala DIO
abbr -a -g kv 'kill -9 (pgrep vlc)' # Kill zombie vlc
abbr -a -g priv 'fish --private' # Fish incognito mode
abbr -a -g sshon 'sudo systemctl start sshd.service' # Start ssh service
abbr -a -g sshoff 'sudo systemctl stop sshd.service' # Stop ssh service
abbr -a -g untar 'tar -zxvf' # Untar
abbr -a -g genpass 'openssl rand -base64 20' # Generate a random, 20-charactered password
abbr -a -g sha 'shasum -a 256' # Test checksum
abbr -a -g cn 'ping -c 5 8.8.8.8' # Ping google, checking network
abbr -a -g ipe 'curl ifconfig.co' # Get external IP address
abbr -a -g ips 'ip link show' # Get network interfaces information
abbr -a -g wloff 'rfkill block wlan' # Block wlan, killing wifi connection
abbr -a -g wlon 'rfkill unblock wlan' # Unblock wlan, start wifi connection
#LS replacements via lsd - commonly used:
abbr -a -g la 'lsd -a' #Less characters for lsd -a *shrug*
abbr -a -g ll 'lsd -l' #A bit more info
abbr -a -g lal 'lsd -la' #All files, including hidden ones + info
abbr -a -g ls lsd #Essentially replace ls with lsd
abbr -a -g lt 'lsd --tree' #Tree view of current or specified directory
abbr -a -g ghrc 'gh repo clone'
#other user program abbreviations:
abbr -a -g icat 'kitten icat' # Shorten image-cat command to "icat" instead of "kitten icat"
abbr -a -g figf 'figlet -f ' # Typing out 'figlet -f font text' got annoying
#abbr -a -g nvim 'lvim' #Set LunarVim to launch with 'nvim'
abbr -a -g edit nvim #ex. $sudo edit /etc/file.txt will open that file in LunarVim
abbr -a -g py3 python3 #python3 is a bit long to type out every time
abbr -a -g rebar 'pkill waybar && waybar & disown'
abbr -a -g zj zellij # Shorthand for initializing zellij
abbr -a -g spi 'sudo pacman -S --noconfirm' # Install packages
abbr -a -g sps 'sudo pacman -Ss' # Search packages
abbr -a -g spr 'sudo pacman -R' # Remove packages
abbr -a -g spqe 'sudo pacman -Qe' # List explicitly installed packages
abbr -a -g spq 'sudo pacman -Q' # List installed packages
abbr -a -g spqq 'sudo pacman -Qq' # List installed packages without version info
abbr -a -g spqg 'sudo pacman -Qg' # List groups of installed packages
abbr -a -g spqo 'sudo pacman -Qo' # Query package ownership
abbr -a -g spqk 'sudo pacman -Qk' # Check package integrity
abbr -a -g spqii 'sudo pacman -Qii' # Display more detailed package info
abbr -a -g spqil 'sudo pacman -Qil' # Display package info with files
abbr -a -g spqiq 'sudo pacman -Qiq' # Display package info with files and description
abbr -a -g spqiiq 'sudo pacman -Qiiq' # Display package info with files, description, and dependencies
abbr -a -g spqiiqg 'sudo pacman -Qiiqg' # Display package info with files, description, dependencies, and groups
abbr -a -g spqiiqgq 'sudo pacman -Qiiqgq' # Display package info with files, description, dependencies, groups, and conflicts
# Quick access to Cube Info:
abbr -a -g xyz 'micro ~/Documents/info_docs/cube-xyz.txt' # Open cube notation for full cube rotations. 

# Source plugins
# Useful plugins: archlinux bang-bang cd colorman sudope vcs
if test -d "$HOME/.local/share/omf/pkg/colorman/"
    source ~/.local/share/omf/pkg/colorman/init.fish
end

# Make su launch fish
function su
    command su --shell=/usr/bin/fish $argv
end

function wa
    set -f APPID 6HV6YJ-QGK36VKQQJ # Get one at https://products.wolframalpha.com/api/
    #    echo $argv | string escape --style=url | read question_string
    set -f url "https://api.wolframalpha.com/v1/result?appid="$APPID"&i="$question_string
    curl -s $url
end
# Utility functions for zoxide.

# pwd based on the value of _ZO_RESOLVE_SYMLINKS.
function __zoxide_pwd
    builtin pwd -L
end

# A copy of fish's internal cd function. This makes it possible to use
# `alias cd=z` without causing an infinite loop.
if ! builtin functions --query __zoxide_cd_internal
    string replace --regex -- '^function cd\s' 'function __zoxide_cd_internal ' <$__fish_data_dir/functions/cd.fish | source
end

# cd + custom logic based on the value of _ZO_ECHO.
function __zoxide_cd
    if set -q __zoxide_loop
        builtin echo "zoxide: infinite loop detected"
        builtin echo "Avoid aliasing `cd` to `z` directly, use `zoxide init --cmd=cd fish` instead"
        return 1
    end
    __zoxide_loop=1 __zoxide_cd_internal $argv
end

# =============================================================================
#
# Hook configuration for zoxide.
#

# Initialize hook to add new entries to the database.
function __zoxide_hook --on-variable PWD
    test -z "$fish_private_mode"
    and command zoxide add -- (__zoxide_pwd)
end

# =============================================================================
#
# When using zoxide with --no-cmd, alias these internal functions as desired.
#

# Jump to a directory using only keywords.
function __zoxide_z
    set -l argc (builtin count $argv)
    if test $argc -eq 0
        __zoxide_cd $HOME
    else if test "$argv" = -
        __zoxide_cd -
    else if test $argc -eq 1 -a -d $argv[1]
        __zoxide_cd $argv[1]
    else if test $argc -eq 2 -a $argv[1] = --
        __zoxide_cd -- $argv[2]
    else
        set -l result (command zoxide query --exclude (__zoxide_pwd) -- $argv)
        and __zoxide_cd $result
    end
end

# Completions.
function __zoxide_z_complete
    set -l tokens (builtin commandline --current-process --tokenize)
    set -l curr_tokens (builtin commandline --cut-at-cursor --current-process --tokenize)

    if test (builtin count $tokens) -le 2 -a (builtin count $curr_tokens) -eq 1
        # If there are < 2 arguments, use `cd` completions.
        complete --do-complete "'' "(builtin commandline --cut-at-cursor --current-token) | string match --regex -- '.*/$'
    else if test (builtin count $tokens) -eq (builtin count $curr_tokens)
        # If the last argument is empty, use interactive selection.
        set -l query $tokens[2..-1]
        set -l result (command zoxide query --exclude (__zoxide_pwd) --interactive -- $query)
        and __zoxide_cd $result
        and builtin commandline --function cancel-commandline repaint
    end
end
complete --command __zoxide_z --no-files --arguments '(__zoxide_z_complete)'

# Jump to a directory using interactive search.
function __zoxide_zi
    set -l result (command zoxide query --interactive -- $argv)
    and __zoxide_cd $result
end

# =============================================================================
#
# Commands for zoxide. Disable these using --no-cmd.
#

abbr --erase z &>/dev/null
alias z=__zoxide_z

abbr --erase zi &>/dev/null
alias zi=__zoxide_zi
# set MOZ_ENABLE_WAYLAND 1 set 
# XDG_CURRENT_DESKTOP sway

set PATH $PATH /var/lib/flatpak/exports/share
set PATH $PATH /home/snot/.local/share/flatpak/exports/share
set PATH $PATH /home/snot/.local/bin
set PATH $PATH /usr/bin/rustup
