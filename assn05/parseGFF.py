#! /usr/bin/env python3

genefile = open("watermelon.gbf", "r")
#Create a blank list for appending
list = []

for gene in genefile:
    if "gene=" in gene:
        x = gene.split("=", 1) #split at "="
        x = x[1].rstrip()
        x = x.strip('\"')
        #Print x to screen
        if x in list:
            print(x, "has already been found")
        else:
            list.append(x)
            print(x, "has been added to the gene list.")

#Close file; sort and print list.
genefile.close()
list.sort()
print(list)
