#!/bin/bash

#PBS -N assn04.4
#PBS -q debug12core
#PBS -j oe
#PBS -m abe
#PBS -M whkirkpa@uark.edu
#PBS -o kirkpatrick_assn04.4.out
#PBS -l nodes=1:ppn=12
#PBS -l walltime=00:00:30:00


cd /storage/whkirkpa/watermelon_files

module load blast/2.6.0+

cat /storage/whkirkpa/watermelon_files/mt_genomes/*.fasta | makeblastdb -dbtype nucl -out nucl -title nucl

blastn -query watermelon_nt/nad4L.fasta -db nucl &> kirkpatrick_assn04.4.out
