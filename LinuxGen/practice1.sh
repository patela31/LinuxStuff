echo "this i a test: "
date
echo
echo "Logged in: "
whoami
if read -t 20 -p "Enter variables (1 to 3): " one two three
then
       echo "One $one, Two $two, Three $three"
       echo
else
 echo "too slow"
fi

echo "Variable 0:  $0"
echo
echo "variable 1: $1"
echo
echo "variable 2: $2"
echo
echo "variable #:  $#"
echo
echo "variable ?: $?"
echo
echo "variable @: $@"
