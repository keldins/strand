#! /usr/bin/python3
                                                                           
import os                                                                       
import sys                                                                      
import random

# now we have a line of unknown length with tab
# (what will the tab character be in this case?)
# We need to find the index of the beginning of the last column/field,
# which is the GT
# We reverse and then count
random.seed("Lily")

fh = open("./changed_lines", "wt")

def get_gt_from_vcf_line(line):
    reversed = line[-1::-1]
    # Now we look for first tab
    first_tab = reversed.index("\t")
    last_tab = len(line) - first_tab
    gt = line[last_tab:last_tab+2]
    return gt, last_tab

for line in sys.stdin:
    line = line.strip()
    if line[0] == "#":
        print(line)
    else:
        # will trigger .5% of the time
        if random.randint(1,2) == 1:
            gt, pos = get_gt_from_vcf_line(line)
            if gt ==  "1|1":
                gt = "./."
            elif gt == "1/1":
                continue
            elif gt == "1|0":
                continue
            elif gt == "1/0":
                continue
            elif gt == "0|1":
                continue
            elif gt == "0/1":
                continue
            elif gt == "0|0":
                continue
            elif gt == "0/0":
                continue
            else:
                continue
            fh.write(line)
            print(line[:pos])
            print(gt)
            print(line[pos+2:])
