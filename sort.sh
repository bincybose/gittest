i=1
k=1
echo "Enter limit of numbers to be sorted "
read n
echo "Enter the numbers"
while test $i -le $n 
do
read num
x[$k]=$(( $num ))
i=$(( $i + 1 ))
k=$(( $k + 1 ))
done
x[$k]=0
k=1
echo "The entered numbers are"
while test ${x[$k]} -ne 0 
do
echo "${x[$k]}"
k=$(( $k + 1 ))
done
k=1
while test $k -le $n 
do
j=1
while test $j -lt $n 
do
y=$(( $j + 1 ))
if test ${x[$j]} -lt ${x[$y]} 
then
temp=$(( ${x[$j]} ))
x[$j]=$(( ${x[$y]} ))
x[$y]=$((  $temp))
fi
j=$(( $j + 1 ))
done
k=$(( $k + 1 ))
done
k=1
echo "Sorted numbers in descending order are"
while test ${x[$k]} -ne 0 
do
echo "${x[$k]}"
k=$(( $k + 1 ))
done
