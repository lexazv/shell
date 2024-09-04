export LANG=en_EN.UTF-8

# SSH agent setup.
eval "$(ssh-agent -s)" &> /dev/null
# ssh-add --apple-use-keychain ~/.ssh/* &> /dev/null

# Git setup.
autoload -Uz compinit && compinit

# Include shell aliases.
if [ -e ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi
