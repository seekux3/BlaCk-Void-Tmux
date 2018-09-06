echo "----------------------------------------"
echo "         BlaCk-Void Tmux Setup"
echo "----------------------------------------"

echo ""
echo "--------------------"
echo "  Downloads"
echo ""
sudo apt-get install xsel tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/black7375/.tmux.git ~/.tmux

echo "--------------------"
echo "  Apply Settings"
echo ""
file1=~/.tmux.conf
file2=~/.tmux.conf.local
if [ -e $file1 ]
then
  echo "$file1 found."
  echo "Now Backup.."
  cp -v $file1 $file1.bak
else
  echo "$file1 not found."
fi
if [ -e $file2 ]
then
  echo "$file2 found."
  echo "Now Backup.."
  cp -v $file2 $file2.bak
else
  echo "$file2 not found."
fi

ln -svf .tmux/.tmux.conf ~/
cp -v .tmux/.tmux.conf.local .
tmux source ~/.tmux.conf
echo "The End!!"
