echo "Welcome"

flip=$((  RANDOM % 2))
echo "Random Number was: " $flip

if((  flip == 1 ))
then
        echo "Head"
else
        echo "Tail"
fi
