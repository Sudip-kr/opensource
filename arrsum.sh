read -p "Enter numbers (space separated): " -a arr
sum=0

for n in "${arr[@]}"
do
    sum=$((sum + n))
done

echo "Sum of numbers in array = $sum"
