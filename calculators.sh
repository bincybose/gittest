echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter your choice:"
read ch
echo "Enter two numbers"
read x
read y
case $ch in
 1)r=$(( $x + $y))
   ;;
 2)r=$(( $x - $y))
   ;;
 3)r=$(( $x * $y))
   ;;
 4)r=$(( $x / $y))
   ;;
esac
echo "Result :"$r
