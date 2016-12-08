files=$(ls ~/.bash_profile.d/*.sh 2>/dev/null)
for file in ${files}; do
  source ${file}
done

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Trigger ~/.bashrc commands
. ~/.bashrc

export PATH="/usr/local/sbin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
