is_digit() {
  [[ "$1" =~ ^[0-9]+$ ]] && true || false
}
