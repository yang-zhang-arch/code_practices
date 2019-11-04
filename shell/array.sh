# App identification
args=($@)
app=''
for i in `seq ${#args[@]}`; do
  if [ "${args[$[i-1]]}" == '--app' ]; then
    app=${args[$i]}
    unset args[$[i-1]]
    unset args[$i]
    break
  fi
done

check_validity() {
  local app=$1
  apps=(labelmanager couchbasemanager hardwaremanager)
  for i in `seq ${#apps[@]}`; do
    if [ "${apps[$[i-1]]}" == "$app" ]; then
      return 0
    fi
  done
  return 1
}

check_validity $app
if [ $? -eq 0 ]; then
  exec "${app} ${args[@]}"  
else
  exit 1
fi
