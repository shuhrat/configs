for file in .{profile,gitconfig,vimrc,inputrc}; do
    ln -fs ~/configs/$file ~/$file
done
unset file
