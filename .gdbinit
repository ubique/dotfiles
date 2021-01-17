set history filename ~/.gdb_history
set history save
set history size 10000

set pagination off
set print elements 0

add-auto-load-safe-path /home/dbanschikov/git/bpf/scripts/gdb/vmlinux-gdb.py
add-auto-load-safe-path /home/dbanschikov/git/bpf-next/scripts/gdb/vmlinux-gdb.py
