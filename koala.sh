#!/bin/bash
# @author evis-e
# koalabubble script

MAXLINE=40
INDENT="               "
max_width=0
output_array=()
input_array=()
cnt=0
i=0

function print_chars {
  for((c=0;c<$(($2));c++)) do
    echo -n "$1"
  done
}

if (($#==0)); then
  in=`cat /dev/stdin`
  input_array=(`echo ${in}`)
else 
  input_array=("$@")
fi

for word in "${input_array[@]}"
do
  if (($cnt+${#word}>=$MAXLINE)); then
    cnt=${#word}
    i=$(($i+1))
    output_array[$i]=$word
  else
    if (($cnt==0)); then
      output_array[$i]=$word
    else
      output_array[$i]=${output_array[$i]}" "$word
      cnt=$(($cnt+1))
    fi
    cnt=$(($cnt+${#word}))
  fi
  if (($cnt>$max_width)); then
    max_width=$cnt
  fi
  while (($cnt>$MAXLINE)); do
    output_array[$(($i+1))]=${output_array[$i]:$MAXLINE}
    output_array[$i]=${output_array[$i]:0:$MAXLINE}
    i=$(($i+1))
    cnt=${#output_array[$i]}
    max_width=$MAXLINE
  done
done

echo -n "$INDENT"" _"
print_chars "_" $max_width
echo "_"

echo -n "$INDENT""/ "
print_chars " " $max_width
echo " \\"

for i in "${output_array[@]}"
do
  echo -n "$INDENT""| "$i
  print_chars " " $(($max_width-${#i}))
  echo " |"
done

echo -n "$INDENT""\\ "
print_chars " " $max_width
echo " /"

echo -n "$INDENT"" -"
print_chars "-" $max_width
echo "-"

echo "                 /
     .-._ _..:.._ _.-.  
    (  ,           ,  )
     '-/            \-'
       |  o  /\  o  |
       \     \/     /
       /'._  --  _.'___
     /'    '----'      \\
   /'                  /
  ;             '-,---'
  |               '\\    
  \                 \_  
  /'.                 '\\ 
  \_/'--.......        /
               '--.__ /
"

