tsplit4() {
	tmux split-window -h;
	tmux split-window -v;
	tmux select-pane -L;
	tmux split-window -v;
}

tsplit8() {
	tmux split-window -v;
	tsplit4;
	tmux select-pane -U;
	tmux select-pane -U;
	tsplit4;
}

tsplit16() {
	tmux split-window -h;
	tsplit8;
	tmux select-pane -L;
	tsplit8;
}

tsplit32() {
	tmux split-window -v;
	tsplit16;
	tmux select-pane -U;
	tmux select-pane -U;
	tsplit16;
}

tsplit64() {
	tmux split-window -h;
	tsplit32;
	tmux select-pane -L;
	tsplit32;
}

tsplit128() {
	tmux split-window -h;
	tsplit64;
	tmux select-pane -L;
	tsplit64;
}
