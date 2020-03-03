#!/bin/bash

#PBS -N assn04.1
#PBS -q student12core
#PBS -j oe
#PBS -m abe
#PBS -M whkirkpa@uark.edu
#PBS -o kirkpatrick_assn04.1.out
#PBS -l nodes=1:ppn=12
#PBS -l walltime=00:00:30:00

cd /storage/whkirkpa/watermelon_files

module load blast/2.6.0+

makeblastdb -in watermelon_nt/nad4L.fasta -dbtype nucl

blastn -query watermelon_nt/nad4L.fasta -db watermelon_nt/nad4L.fasta &> kirkpatrick_assn04.1.out
