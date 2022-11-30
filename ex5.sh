#desktop calculator
echo "enter two numbers"
read a b
echo "a-Addition \n s-Subtraction \n m-Multiplication \n d-Division \n r-Remainder \n"
echo "enter option"
read op
case $op in
  a) res=`expr $a + $b`
     echo "result of addition is $res"
  ;;
  s) res=`expr $a - $b`
   echo "result of subtraction is $res"
  ;;
  m) res=`expr $a \* $b`
   echo "result of multiplication is $res"
  ;;
  d) res=`expr $a / $b`
   echo "result of division is $res"
  ;;
  r) res=`expr $a % $b`
   echo "result of remainder is $res"
  ;;
  *)
  echo "wrong option"
  ;;
esac


  
