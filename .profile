echo "==> Loading .profile"

for file in ~/configs/.{path,bash_prompt,exports,aliases,functions,extra}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

[ -r ~/.extrarc ] && [ -f ~/.extrarc ] && source ~/.extrarc

# git prompt & completion
[ -f ~/configs/git-prompt.sh ] && source ~/configs/git-prompt.sh
[ -f ~/configs/git-completion.bash ] && source ~/configs/git-completion.bash

# do not expand paths like '~/' on tab
_expand()
{
    return 0;
}
