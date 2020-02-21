
#!/bin/bash

# assn03-1
 for i in $(seq 808 8008)
 	do echo TR-$i
 	done

# assn03-2

alias l='ls -al'
alias cdpr='cd ~/Desktop/Practical_Prog/'

# assn03-3

find . -name "*.fasta" | wc -l
#Output: 15085

#assn03-4

find . -name "*.tre" | wc -l
#Output: 14640

#assn03-5

find . -name "*.sched" | wc -l
#Output: 15262

#assn03-6

echo "$(($15085-$14640))"
#Output: 445

ls gene_trees/ | grep .fasta | cut -d "_" -f1 > f_files.txt
ls gene_trees/ | grep .tre | cut -d "_" -f1 > t_files.txt
comm -23 f_files.txt t_files.txt | wc -l
#Output: 445

#assn03-7

for i in ./gene_trees/*.sched
do
    if grep -q "Program Return Code: 0" $i; then
	echo found
    else
	echo NA
    fi
done > output.txt

grep "NA" output.txt | wc -l
#Output: 45
grep "NA" -v output.txt | wc -l
#Output: 15217

#assn03-8

comm -23 f_files.txt t_files.txt > f_only.txt
while read i; do
    echo "write_raxml_job_script.py ${i}_alignment.fasta > ${i}_alignment.pbs"
done < f_only.txt







