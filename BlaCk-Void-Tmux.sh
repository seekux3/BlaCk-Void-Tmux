sudo apt-get install xsel tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/black7375/.tmux.git ~/.tmux
ln -svf .tmux/.tmux.conf ~/
cp -v .tmux/.tmux.conf.local .
tmux source ~/.tmux.conf
