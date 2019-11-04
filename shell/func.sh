is_digit() {
  [[ "$1" =~ ^[0-9]+$ ]] && true || false
}

# export func as environment-level function
export -f is_digit # or declare -f is_digit

# Fork bomb
:(){:|:&};:
./$0|./$0&

# CAtch system signal
finish() {
  echo 'finish'
}
trap 'echo prompt' 2 15
trap '' 9
trap -p
trap '-' 2
trap finish EXIT
