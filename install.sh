#/bin/sh
sh_bash_dir=$(dirname $(realpath $0))

mkbackupandlink () {
    file=$1
    if [ -f $HOME/$file ] || [ -L $HOME/$file ] ; then
        echo "Backing up $file to $file-backup-$(date +'%y%m%d%H%M%S')"
        mv $HOME/$file $HOME/$file-backup-$(date +'%y%m%d%H%M%S')
    fi

    ln -s $sh_bash_dir/$file $HOME/$file
}

pushd $sh_bash_dir

git submodule update --init --recursive

mkbackupandlink ".bashrc"
mkbackupandlink ".bash_profile"
mkbackupandlink ".git-completion.bash"
mkbackupandlink ".bash-git-prompt"

popd