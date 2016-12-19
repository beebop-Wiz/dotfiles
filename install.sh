mkdir -p ~/.dotfiles_bak
cd files
for file in `ls`;
do
    echo $file
    if [ -e ~/.$file ]; then
	mv ~/.$file ~/.dotfiles_bak/
    fi
    ln -s `pwd`/$file ~/.$file;
done
