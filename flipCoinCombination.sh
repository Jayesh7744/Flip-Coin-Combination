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


head=0
declare -A Doublet

for ((i=1; i<=10; i++))
do
        randomCheck1=$((RANDOM % 2))
        randomCheck2=$((RANDOM % 2))

        if (( $randomCheck1 == 0 && $randomCheck2 == 0 ))
        then
                echo "H H"
                ((Doublet[HH]++))
        elif (( $randomCheck1 == 0 && $randomCheck2 == 1 ))
        then
                echo "H T"
                ((Doublet[HT]++))
        elif (( $randomCheck1 == 1 && $randomCheck2 == 0 ))
        then
                echo "T H"
                ((Doublet[TH]++))

        else
                echo "T T"
                ((Doublet[TT]++))
        fi
done

echo ${!Doublet[@]}
echo ${Doublet[@]}

HH=`awk "BEGIN {print (${Doublet[HH]}/10)*100}"`
echo "HH = $HH%"
HT=`awk "BEGIN {print (${Doublet[HT]}/10)*100}"`
echo "HT = $HT%"
TH=`awk "BEGIN {print (${Doublet[TH]}/10)*100}"`
echo "TH = $TH%"
TT=`awk "BEGIN {print (${Doublet[TT]}/10)*100}"`
echo "TT = $TT%"


head=0
declare -A Triplet

for ((i=1; i<=10; i++))
do
        randomCheck1=$((RANDOM % 2))
        randomCheck2=$((RANDOM % 2))
        randomCheck3=$((RANDOM % 2))
        if (( $randomCheck1 == 0 && $randomCheck2 == 0 && $randomCheck3 == 0))
        then
                echo "H H H"
                ((Triplet[HHH]++))
        elif (( $randomCheck1 == 0 && $randomCheck2 == 0 && $randomCheck3 == 1))
        then
                echo "H H T"
                ((Triplet[HHT]++))
        elif (( $randomCheck1 == 1 && $randomCheck2 == 1 && $randomCheck3 == 0))
        then
                echo "T T H"
                ((Triplet[TTH]++))

        else
                echo "T T T"
                ((Triplet[TTT]++))
        fi
done

echo ${!Triplet[@]}
echo ${Triplet[@]}

HHH=`awk "BEGIN {print (${Triplet[HHH]}/10)*100}"`
echo "HHH = $HHH%"
HHT=`awk "BEGIN {print (${Triplet[HHT]}/10)*100}"`
echo "HHT = $HHT%"
TTH=`awk "BEGIN {print (${Triplet[TTH]}/10)*100}"`
echo "TTH = $TTH%"
TTT=`awk "BEGIN {print (${Triplet[TTT]}/10)*100}"`
echo "TTT = $TTT%"
