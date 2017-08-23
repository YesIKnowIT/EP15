function cat() {
    C1='\x1b[38;2;255;97;0m'
    C2='\x1b[38;2;0;255;97m'
    RESET='\x1b[0m'
    printf '\x1b[38;2;255;97;0m'
    /bin/cat "$@" | sed -E \
        -e 's/^(#.*)$/'"$C2"'\1/' \
        -e 's/^(.*)$/'"$C1"'\1/' \
        -e 's/$/'"$RESET"'/'

    printf "${RESET}" 
}
