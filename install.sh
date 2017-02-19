mkdir -p ~/.dotfiles_bak
cd files
for file in `find * -type f`;
do
    echo $file
    if [ -e ~/.$file ]; then
	mkdir -p ~/.dotfiles_bak/`dirname $file`
	mv ~/.$file ~/.dotfiles_bak/$file
    fi
    mkdir -p ~/.`dirname $file`
    cp -bs `pwd`/$file ~/.$file
done
