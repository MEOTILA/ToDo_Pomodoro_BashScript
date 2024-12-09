
while [ true ]; do

echo -n "Enter Your First Number:"
read num1

echo -n "Enter Your Function:"
read function

echo -n "Enter Your Second Number:"
read num2



if [[ "$function" == "+" ]];  then
  sum=$((num1+num2))
  echo "The sum is: $sum"
  fi

if [[ "$function" == "-" ]];  then
  min=$((num1-num2))
  echo "The sum is: $min"
  fi

if [[ "$function" == "*" ]];  then
  mul=$((num1*num2))
  echo "The sum is: $mul"
  fi

if [[ "$function" == "/" ]];  then
  div=$((num1/num2))
  echo "The sum is: $div"
  fi

done