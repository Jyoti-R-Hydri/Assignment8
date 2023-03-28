no_of_individuals=50
declare -A birth_day
echo "The birthday month and year of $no_of_individuals individuals are: "
for(( individuals = 1; individuals <= no_of_individuals; individual++ ))
do
   (( birth_month = RANDOM % 12 + 1 ))
   (( birth_year = RANDOM % 2 + 92 ))
   echo "individual $individual has birthday in month $birth_month year $birth_year "
   birth_day[$birth_month]+=" ${individual}"
done

for month in ${!birth_day[@]}
do
  echo "The individuals who are having birthday in month are: "
  for individual in ${birth_day[$month]}
  do
     echo -n "$individual";
  done
  echo
done
