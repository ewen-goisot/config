set -g mouse on
set -g default-terminal "screen-256color"

set-option -g prefix □
bind-key □ send-prefix
bind w source ~/.tmux.conf
set-window-option -g xterm-keys on
set -sq repeat-time 700
set -g history-limit 2000

set -g set-titles on

set -g status-bg colour17
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



bind b new-window
bind c split-window -h
bind m split-window -v
bind l previous-window
bind f next-window
bind-key -n C-PageDown next-window
bind-key -n C-PageUp previous-window

bind g new-session
bind t select-pane -U
bind s select-pane -L
bind n select-pane -R
bind r select-pane -D

bind -r d resize-pane -R 2
bind -r v resize-pane -L 2
bind -r j resize-pane -D 2
bind -r ç resize-pane -U 2

#bind o swap-pane -U
#bind a swap-pane -L
#bind i swap-pane -R
#bind u swap-pane -D

#bind g copy-mode

#bind -r [ previous-window # select previous window
#bind -r ] next-window     # select next window
#bind Tab last-window        # move to last active window

#bind -t vi-copy v begin-selection
#bind -t vi-copy C-v rectangle-toggle
#bind -t vi-copy y copy-pipe "xclip -filter -selection clipboard | xclip -selection primary"

# Enable mouse control (clickable windows, panes, resizable panes)
#set -g mouse-select-window on
#set -g mouse-select-pane on
#set -g mouse-resize-pane on

# Enable mouse mode (tmux 2.1 and above)
