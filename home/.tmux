# prefixキーをC-aに変更する
set -g prefix C-f

# デフォルトのprefixキーC-bを解除する
unbind C-b

set-option -g mouse on

# マウス選択でcopy
bind-key -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy"

# prefix+\でペインを垂直分割する
bind \\ split-window -h

# prefix+-でペインを水平分割する
bind - split-window -v

# ペインの移動
bind -n C-o select-pane -t :.+

# 256色モードを有効にする
set-option -g default-terminal screen-256color
set -g terminal-overrides 'xterm:colors=256'

# 非アクティブなウィンドウの背景色を灰色にする
set-option -g window-style 'bg=colour237'

# アクティブなウィンドウの背景色を黒色にする
#set-option -g window-active-style 'bg=#222222'
set-option -g window-active-style 'bg=colour233'

