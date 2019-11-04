is_digit() {
  [[ "$1" =~ ^[0-9]+$ ]] && true || false
}

# export func as environment-level function
export -f is_digit # or declare -f is_digit

