echo "Welcome to the flip coin combination"

flip=$((  RANDOM % 2))
echo "Random Number was: " $flip

if((  flip == 1 ))
then
        echo "Head"
else
        echo "Tail"
fi

echo "welcome to the flip coin combination"

head=1
declare -A Singlet

for ((i=1; i<=50; i++))
do
        randomCheck=$((RANDOM % 2))
        if [ $randomCheck == 1 ]
        then
                echo "HEADS"
                ((Singlet[H]++))
        else
                echo "TAILS"
                ((Singlet[T]++))
        fi
done

echo ${!Singlet[@]}
echo ${Singlet[@]}

HeadPercentage=`awk "BEGIN {print (${Singlet[H]}/50)*100}"`
echo "HEAD = $HeadPercentage%"
TailPercentage=`awk "BEGIN {print (${Singlet[T]}/50)*100}"`
echo "TAIL = $TailPercentage%"
