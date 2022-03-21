#!/bin/bash
#!/bin/bash
echo TASKID=19; VAR_1=`wc -l < /home/username/lab1/LLK/dns-tunneling.log`
echo -e '\n\n' VAR_1 = ` echo $VAR_1` '\n\n'
grep  'aD[.].*' /home/username/lab1/LLK/dns-tunneling.log | tail -n 200 | sort -k15 | tee results.txt
VAR_2=`awk 'length > max_length { max_length = length;} length < max_length { min_length = length; line = $0 } END { print min_length}' results.txt`
echo -e '\n\n' VAR_2 = ` echo $VAR_2` '\n\n'
