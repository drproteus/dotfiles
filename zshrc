# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
eval $(starship init zsh)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

DockerResourcesBin="/mnt/c/Program Files/Docker/Docker/resources/bin"
WindowsShells="/mnt/c/WINDOWS/System32/WindowsPowerShell/v1.0:/mnt/c/WINDOWS/system32"
export PATH=$PATH:$DockerResourcesBin:$WindowsShells
export PATH=$PATH:/mnt/c/Users/jgori/AppData/Local/Programs/Microsoft\ VS\ Code/bin

# make make quiet?
alias make="make -s"

# cargo
export PATH=$PATH:$HOME/.cargo/bin:$HOME/.local/bin

export EDITOR=/usr/bin/nvim

# vagrant
export VAGRANT_WSL_ACCESS_WINDOWS_USER=jgori
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS=1
export VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH="/mnt/c/Users/jgori"

# clipboard
alias pbcopy='clip.exe'
alias pbpaste="powershell.exe -command 'Get-Clipboard' | tr -d '\r' | head -n -1"

# windows aliases
alias scoop='powershell.exe "C:\Users\jgori\scoop\shims\scoop.ps1"'
alias hvc='hvc.exe'

if [[ -s "$HOME/.secrets" ]]; then
  source "$HOME/.secrets"
fi

