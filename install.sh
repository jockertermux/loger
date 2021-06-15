until [ -d /data/data/com.termux/files/home/loger ]; do
        printf "─➤ THE LOGIN NOT IS INSTALED IN THE HOME $W\n"
        exit
done
echo "Please wait..."
sleep 1
rm ../../usr/etc/motd
echo "termux" >> $PREFIX/libexec/termux/.pas
base64 $PREFIX/libexec/termux/.pas > $PREFIX/libexec/termux/.new
pkg install ruby
gem install lolcat
pkg install fortune
mv $PREFIX/libexec/termux/.new $PREFIX/libexec/termux/.pas
echo 'PS1="\033[1;32m╭─ \033[1;34m\a📂 \033[1;0m\w\033[1;32m ───────────────────────────────────────── \033[1;0m🕞 \t\033[1;34m  \033[1;32m─╮\n╰─➤\033[1;0m "' >> $HOME/.bashrc
echo "bash $PREFIX/libexec/termux/password" >> /data/data/com.termux/files/usr/etc/bash.bashrc
command -v cmatrix > /dev/null 2>&1 || { echo >&2 -e "\e[1;32m[*]\e[1;39m Instalando cmatrix..."; pkg install cmatrix -y;}
command -v cacafire > /dev/null 2>&1 || { echo >&2 -e "\e[1;32m[*]\e[1;39m Instalando Cacafire..."; pkg install cacafire -y;}
cp $HOME/loger/password $PREFIX/libexec/termux
cp locking /data/data/com.termux/files/usr/bin
mkdir -p $HOME/.termux && echo "extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]" > $HOME/.termux/termux.properties
rm locking
sleep 1
