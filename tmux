set -g mouse on
set -g default-terminal "screen-256color"
set -g base-index 1

set-option -g prefix ↹
bind-key ↹ send-prefix
unbind-key C-b
#bind é source ~/.tmux.conf
set -s escape-time 0
set-window-option -g xterm-keys on
set -sq repeat-time 800
set -g history-limit 1000
#set repeat-time 1
set mode-keys emacs

set -g set-titles on

set -g status-bg colour234
set -g status-fg colour15

# default window title colors
set-window-option -g window-status-fg colour16
set-window-option -g window-status-bg colour190
#set-window-option -g window-status-attr dim

# active window title colors
set-window-option -g window-status-current-fg colour15
set-window-option -g window-status-current-bg colour1
#set-window-option -g window-status-current-attr bright

# pane border
set-option -g pane-border-bg colour248
set-option -g pane-active-border-bg colour10
set-option -g pane-border-fg colour235
set-option -g pane-active-border-fg colour235

# message text
set-option -g message-fg colour7 #base02
set-option -g message-bg colour53 #orange

# pane number display
set-option -g display-panes-active-colour colour33 #blue
set-option -g display-panes-colour colour166 #orange
# clock
set-window-option -g clock-mode-colour colour10 #green

set -g status-right "TMUX"

#bind -T copy-mode-vi WheelUpPane select-pane \; send-keys -X -N 2 scroll-upbind -T copy-mode-vi WheelDownPane select-pane \; send-keys -X -N 2 scroll-down
#bind -T copy-mode-vi MouseDragEnd1Panebind -T copy-mode-vi MouseDown1Pane select-pane \;\  send-keys -X copy-pipe "pbcopy" \;\  send-keys -X clear-selection
#bind -t vi-copy y copy-pipe "xclip -sel clip -i"

bind '!' switch-client -Tchoice \; choose-client
bind '?' switch-client -Tchoice \; choose-tree
bind \; source-file ~/.tmux.conf
bind ':' command-prompt
bind '"' copy-mode

bind -r è resize-pane -U 2
bind -r é resize-pane -L 2
bind p paste-buffer # paste; (default hotkey: ] )
bind -r "'" resize-pane -R 2
bind y switch-client -Tchoice \; choose-buffer # tmux clipboard history

bind -r o resize-pane -D 2
bind -r a swap-pane -U
bind -r i swap-pane -D

bind e refresh-client

bind '(' swap-pane
bind ')' swap-window
bind '<' select-pane -m
bind '>' select-pane -M
bind '#' move-window

bind b new-window
bind c split-window -h
bind -r m select-pane -U
bind l split-window -v
bind f unlink-window
bind z detach-client

# See: https://github.com/christoomey/vim-tmux-navigator
#bind -r m if-shell "$is_vim" "send-keys C-p" "select-pane -U"
#bind -r t if-shell "$is_vim" "send-keys C-a" "select-pane -L"
#bind -r s if-shell "$is_vim" "send-keys C-i" "select-pane -D"
#bind -r n if-shell "$is_vim" "send-keys C-u" "select-pane -R"

# C-Page: déplacement vers un autre 'onglet' (window)
bind-key -n C-PageDown next-window
bind-key -n C-PageUp previous-window
# C-S-Page: permutation d'onglets
bind-key -n C-S-PageDown select-pane -m \; next-window \; swap-window
bind-key -n C-S-PageUp select-pane -m \; previous-window \; swap-window
# C-arrows: rotate
bind-key -n C-Up next-layout
bind-key -n C-Down rotate-window
bind-key -n C-Left resize-pane -Z
bind-key -n C-Right swap-pane -D

bind g new-session
bind -r t select-pane -L
bind -r s select-pane -D
bind -r n select-pane -R
bind r break-pane

bind q command-prompt -p "(rename-window '#W')" "rename-window '%%'"
bind -r d rotate-window
bind -r v next-layout
bind -r j resize-pane -Z
bind -r w join-pane # need mark ↹# , cancel: ↹w

unbind-key up
unbind-key down
unbind-key left
unbind-key right

# choice-mode n'est plus configurable
#bind-key -T choice-mode-vi t    send-keys -X tree-collapse
#bind-key -T choice-mode-vi n    send-keys -X tree-expand

bind-key -T copy-mode C-f    send-keys -X page-up
bind-key -T copy-mode C-r    send-keys -X page-down
bind-key -T copy-mode C-c    send-keys -X cancel
bind-key -T copy-mode C-l    send-keys -X halfpage-up
bind-key -T copy-mode C-s    send-keys -X halfpage-down
bind-key -T copy-mode C-n    send-keys -X scroll-up
bind-key -T copy-mode C-n    send-keys -X scroll-down
#bind-key -T copy-mode C-j    send-keys -X copy-selection-and-cancel
bind-key -T copy-mode C-p    select-pane -U
bind-key -T copy-mode C-a    select-pane -L
bind-key -T copy-mode C-i    select-pane -D
bind-key -T copy-mode C-u    select-pane -R
bind-key -T copy-mode Enter  send-keys -X copy-selection-and-cancel
bind-key -T copy-mode C-h    send-keys -X rectangle-toggle
bind-key -T copy-mode Escape send-keys -X clear-selection
bind-key -T copy-mode C-\    select-pane -l
bind-key -T copy-mode Space  send-keys -X begin-selection
bind-key -T copy-mode 1      command-prompt -N -I 1 -p (repeat) "send -N \"%%%\""
bind-key -T copy-mode 2      command-prompt -N -I 2 -p (repeat) "send -N \"%%%\""
bind-key -T copy-mode 3      command-prompt -N -I 3 -p (repeat) "send -N \"%%%\""
bind-key -T copy-mode 4      command-prompt -N -I 4 -p (repeat) "send -N \"%%%\""
bind-key -T copy-mode 5      command-prompt -N -I 5 -p (repeat) "send -N \"%%%\""
bind-key -T copy-mode 6      command-prompt -N -I 6 -p (repeat) "send -N \"%%%\""
bind-key -T copy-mode 7      command-prompt -N -I 7 -p (repeat) "send -N \"%%%\""
bind-key -T copy-mode 8      command-prompt -N -I 8 -p (repeat) "send -N \"%%%\""
bind-key -T copy-mode 9      command-prompt -N -I 9 -p (repeat) "send -N \"%%%\""

bind-key -T copy-mode E      send-keys -X next-space-end

bind-key -T copy-mode F      command-prompt -1 -p "(jump backward)" "send -X jump-backward \"%%%\""
bind-key -T copy-mode T      send-keys -X top-line
bind-key -T copy-mode S      send-keys -X middle-line
bind-key -T copy-mode N      send-keys -X bottom-line
bind-key -T copy-mode R      command-prompt -1 -p "(jump to backward)" "send -X jump-to-backward \"%%%\""
bind-key -T copy-mode D      command-prompt -p "(search up)" "send -X search-backward \"%%%\""
bind-key -T copy-mode V      send-keys -X search-reverse
bind-key -T copy-mode J      send-keys -X previous-space
bind-key -T copy-mode W      send-keys -X next-space

bind-key -T copy-mode é      send-keys -X history-top
bind-key -T copy-mode p      send-keys -X scroll-up
bind-key -T copy-mode "'"    send-keys -X history-bottom
# S-Y recommandé pour les copies externes
bind-key -T copy-mode y      run-shell "tmux send-keys -X copy-selection-and-cancel; tmux save-buffer - | xsel -ip"
bind-key -T copy-mode Y      run-shell "tmux send-keys -X copy-selection-and-cancel; tmux save-buffer - | xsel -ib"
bind-key -T copy-mode o      send-keys -X other-end
bind-key -T copy-mode a      send-keys -X start-of-line
bind-key -T copy-mode i      send-keys -X scroll-down
bind-key -T copy-mode u      send-keys -X end-of-line
bind-key -T copy-mode h      send-keys -X rectangle-toggle
bind-key -T copy-mode +      send-keys -X copy-end-of-line
bind-key -T copy-mode -      send-keys -X back-to-indentation
bind-key -T copy-mode .      send-keys -X previous-paragraph
bind-key -T copy-mode ,      send-keys -X next-paragraph
bind-key -T copy-mode k      send-keys -X select-line
bind-key -T copy-mode e      send-keys -X next-word-end

bind-key -T copy-mode b      send-keys -X append-selection-and-cancel
bind-key -T copy-mode c      send-keys -X jump-reverse
bind-key -T copy-mode m      send-keys -X cursor-up
bind-key -T copy-mode l      send-keys -X jump-again
bind-key -T copy-mode f      command-prompt -1 -p "(jump forward)" "send -X jump-forward \"%%%\""
bind-key -T copy-mode g      command-prompt -p "(goto line)" "send -X goto-line \"%%%\""
bind-key -T copy-mode t      send-keys -X cursor-left
bind-key -T copy-mode s      send-keys -X cursor-down
bind-key -T copy-mode n      send-keys -X cursor-right
bind-key -T copy-mode r      command-prompt -1 -p "(jump to forward)" "send -X jump-to-forward \"%%%\""
bind-key -T copy-mode q      send-keys -X cancel
bind-key -T copy-mode d      command-prompt -p "(search down)" "send -X search-forward \"%%%\""
bind-key -T copy-mode v      send-keys -X search-again
bind-key -T copy-mode j      send-keys -X previous-word
bind-key -T copy-mode w      send-keys -X next-word

# bind-key -T copy-mode MouseDown1Pane    select-pane
bind-key -T copy-mode MouseDrag1Pane    select-pane \; send-keys -X begin-selection
bind-key -T copy-mode MouseDragEnd1Pane send-keys -X copy-pipe-and-cancel "xclip -se c -i"
# par défaut le scroll était ` -N 5`, trop rapide pour mon usage
bind-key -T copy-mode WheelUpPane       select-pane \; send-keys -X scroll-up
bind-key -T copy-mode WheelDownPane     select-pane \; send-keys -X scroll-down
bind-key -T copy-mode DoubleClick1Pane  select-pane \; send-keys -X select-word
bind-key -T copy-mode TripleClick1Pane  select-pane \; send-keys -X select-line
bind-key -T copy-mode NPage             send-keys -X page-down
bind-key -T copy-mode PPage             send-keys -X page-up
bind-key -T copy-mode Up                send-keys -X cursor-up
bind-key -T copy-mode Down              send-keys -X cursor-down
bind-key -T copy-mode Left              send-keys -X cursor-left
bind-key -T copy-mode Right             send-keys -X cursor-right
bind-key -T copy-mode C-Up              send-keys -X scroll-up
bind-key -T copy-mode C-Down            send-keys -X scroll-down


# remap choose-tree, choose-client, choose-buffer shortcuts

bind-key -Tchoice m send-keys Up \; switch-client -Tchoice
bind-key -Tchoice t send-keys Left \; switch-client -Tchoice
bind-key -Tchoice s send-keys Down \; switch-client -Tchoice
bind-key -Tchoice n send-keys Right \; switch-client -Tchoice
bind-key -Tchoice c send-keys '<' \; switch-client -Tchoice
bind-key -Tchoice l send-keys '>' \; switch-client -Tchoice
bind-key -Tchoice g send-keys O \; switch-client -Tchoice
bind-key -Tchoice v send-keys v \; switch-client -Tchoice

bind-key -Tchoice Up send-keys Up \; switch-client -Tchoice
bind-key -Tchoice Left send-keys Left \; switch-client -Tchoice
bind-key -Tchoice Down send-keys Down \; switch-client -Tchoice
bind-key -Tchoice Right send-keys Right \; switch-client -Tchoice

# todo: 'C-s' kills tmux: why
bind-key -Tchoice C-m send-keys C-m
bind-key -Tchoice Escape send-keys Escape
bind-key -Tchoice q send-keys q

bind-key -Tchoice 0 send-keys 0
bind-key -Tchoice 1 send-keys 1
bind-key -Tchoice 2 send-keys 2
bind-key -Tchoice 3 send-keys 3
bind-key -Tchoice 4 send-keys 4
bind-key -Tchoice 5 send-keys 5
bind-key -Tchoice 6 send-keys 6
bind-key -Tchoice 7 send-keys 7
bind-key -Tchoice 8 send-keys 8
bind-key -Tchoice 9 send-keys 9
# top line <=> digits
# bind-key -Tchoice '(' send-keys 0
# bind-key -Tchoice ')' send-keys 1
# #bind-key -Tchoice '<' send-keys 2
# #bind-key -Tchoice '>' send-keys 3
# bind-key -Tchoice '#' send-keys 4
# bind-key -Tchoice '!' send-keys 5
# bind-key -Tchoice '?' send-keys 6
# bind-key -Tchoice \; send-keys 7
# # todo: ':' ':' 'Escape' kills server: why?
# #bind-key -Tchoice ':' send-keys 8
# bind-key -Tchoice '"' send-keys 9

bind-key -Tchoice M-a send-keys M-a
bind-key -Tchoice M-b send-keys M-b
bind-key -Tchoice M-c send-keys M-c
bind-key -Tchoice M-d send-keys M-d
bind-key -Tchoice M-e send-keys M-e
bind-key -Tchoice M-f send-keys M-f
bind-key -Tchoice M-g send-keys M-g
bind-key -Tchoice M-h send-keys M-h
bind-key -Tchoice M-i send-keys M-i
bind-key -Tchoice M-j send-keys M-j
bind-key -Tchoice M-k send-keys M-k
bind-key -Tchoice M-l send-keys M-l
bind-key -Tchoice M-m send-keys M-m
bind-key -Tchoice M-n send-keys M-n
bind-key -Tchoice M-o send-keys M-o
bind-key -Tchoice M-p send-keys M-p
bind-key -Tchoice M-q send-keys M-q
bind-key -Tchoice M-r send-keys M-r
bind-key -Tchoice M-s send-keys M-s
bind-key -Tchoice M-t send-keys M-t
bind-key -Tchoice M-u send-keys M-u
bind-key -Tchoice M-v send-keys M-v
bind-key -Tchoice M-w send-keys M-w
bind-key -Tchoice M-x send-keys M-x
bind-key -Tchoice M-y send-keys M-y
bind-key -Tchoice M-z send-keys M-z

#bind-key -Tcommand Up send-keys Up \; switch-client -Tcommand
#bind-key -Tcommand Left send-keys Left \; switch-client -Tcommand
#bind-key -Tcommand Down send-keys Down \; switch-client -Tcommand
#bind-key -Tcommand Right send-keys Right \; switch-client -Tcommand
#bind-key -Tcommand C-b send-keys C-w \; switch-client -Tcommand
