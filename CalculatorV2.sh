
while [ true ]; do

echo -n "Enter Your First Number:"
read num1

echo -n "Enter Your Function:"
read function

echo -n "Enter Your Second Number:"
read num2



if [[ "$function" == "+" ]];  then
  sum=$((num1+num2))
  echo "The result is: $sum"
  fi

if [[ "$function" == "-" ]];  then
  min=$((num1-num2))
  echo "The result is: $min"
  fi

if [[ "$function" == "*" ]];  then
  mul=$((num1*num2))
  echo "The result is: $mul"
  fi

if [[ "$function" == "/" ]];  then
  if (( num2 == 0 )); then
      echo "Error: Division by zero!"
      break
    fi
  div=$((num1/num2))
  echo "The result is: $div"
  fi

done