#!/bin/bash

#PBS -N assn04.8
#PBS -q student12core
#PBS -j oe
#PBS -m abe
#PBS -M whkirkpa@uark.edu
#PBS -o kirkpatrick_assn04.8.out
#PBS -l nodes=1:ppn=12
#PBS -l walltime=00:00:30:00


cd /storage/whkirkpa/watermelon_files

module load blast/2.6.0+

blastn -query watermelon.fsa -db watermelon.fsa -outfmt 6 &> kirkpatrick_assn04.8a.out
blastn -dust yes -word_size 9 -reward 2 -penalty -3 -gapopen 5 -gapextend 2 -query watermelon.fsa -db watermelon.fsa -outfmt &> kirkpatrick_assn04.8b.out
blastn -dust yes -word_size 7 -reward 5 -penalty -4 -gapopen 8 -gapextend 6 -query watermelon.fsa -db watermelon.fsa -outfmt &> kirkpatrick_assn04.8c.out
