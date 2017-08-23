function cat() {
    printf '\x1b[38;2;255;97;0m'
    /bin/cat "$@"
    printf '\x1b[0m'
}
