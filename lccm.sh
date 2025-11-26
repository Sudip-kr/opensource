read -p "Enter first number: " a
read -p "Enter second number: " b

x=$a
y=$b

while [ $b -ne 0 ]
do
    temp=$b
    b=$((a % b))
    a=$temp
done

gcd=$a

lcm=$(( (x * y) / gcd ))

echo "LCM of $x and $y is: $lcm"
