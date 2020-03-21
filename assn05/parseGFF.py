#! /usr/bin/env python3

#Parsed wrong file initially; changed to gff instead of gbf

gff = open("watermelon.gff", "r")
list = [] #blank list of genes

for gene in gff:
    gene = gene.rstrip("\n")
    gene = gene.split("\t")
    gene = gene[8].split(" ")
    
    #Printing based on language in .gff file
    if(gene[1] == "similar"):
        print("similar")
    if(gene[1] == "inverted"):
        print("inverted")
    
    else:
        if gene[1] in list:
            print("already found")
        else:
            list.append(gene[1])

#Close file; sort and print list
gff.close()
list.sort()
print(list)
