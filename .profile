echo "==> Loading .profile"

# git prompt & completion
source ~/configs/git-prompt.sh
source ~/configs/git-completion.bash

for file in ~/configs/.{path,bash_prompt,exports,aliases,functions,extra}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

[ -r ~/.extrarc ] && [ -f ~/.extrarc ] && source ~/.extrarc

# do not expand paths like '~/' on tab
_expand()
{
    return 0;
}
