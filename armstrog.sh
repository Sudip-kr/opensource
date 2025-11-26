read -p "Enter a number: " num
temp=$num
sum=0

while [ $num -gt 0 ]
do
    digit=$((num % 10))
    sum=$((sum + digit*digit*digit))
    num=$((num / 10))
done

if [ $sum -eq $temp ]; then
    echo "$temp this is an Armstrong number."
else
    echo "$temp this is not an Armstrong number."
fi

