n='^[0-9]+$'
i=0
a=2
c=$(($a**$n))

for i in "$@"; do
  if [[ $i =~ $n ]]; then
    if [[ $i == $c ]]; then
      echo " $i is a power of 2 "
    fi
  fi
  ((i++))       
done
