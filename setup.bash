for file in .{profile,gitconfig,vimrc,inputrc}; do
    ln -fs ~/configs/$file ~/$file
done
unset file

# yandex configs
git clone git@github.yandex-team.ru:rudeshko/ya-configs.git ~/ya-configs && ~/ya-configs/setup.bash
