

# 1. How many employees does the city have?
# Hint: wc
#Check data and see what it looks like
head -10 salaries.csv
#Since each line corresponds to a different employee, counting the lines will yield the number of employees
wc -l salaries.csv>ANSWERS.txt
#Use printf to add linebreaks in txt file
printf "\r\n" >> ANSWERS.txt
# 2. How many full-time workers are there in the file?
# Hint: grep for Salary then use wc
#search for "F" in column F4 (Full or part-time) and then use wc to count lines
cut -d, -f4 salaries.csv| grep "F"| wc -l>>ANSWERS.txt
printf "\r\n" >> ANSWERS.txt

# 3. How many part-time workers are there in the file?
#search for "P" in column F4 (Full or part-time) and then use wc to count lines
cut -d, -f4 salaries.csv| grep "P"| wc -l>>ANSWERS.txt
printf "\r\n" >> ANSWERS.txt

# 4. How many people work for the police department?
# Hint: grep for POLICE then use wc
grep "POLICE" salaries.csv| wc -l>>ANSWERS.txt
printf "\r\n" >> ANSWERS.txt
# 5. How many of them are detectives?
# Hint: grep for POLICE then grep for DETECTIVE then use wc
grep "POLICE" salaries.csv| grep "DETECTIVE"| wc -l >>ANSWERS.txt
printf "\r\n" >> ANSWERS.txt
# 6. Which department has the most employees?
# Hint: see Scripts section of Command Line slides
cut -d, -f3 salaries.csv| sort |uniq -c| sort -n| tail -1>>ANSWERS.txt
