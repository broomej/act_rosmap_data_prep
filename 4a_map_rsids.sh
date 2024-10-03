#! /usr/bin/env bash

# First positional arg: dbSNP file with rsIDs
# Second positional arg: VCF to remap IDs
# Third positional arg: output file

bcftools annotate -a $1 -c ID $2 | bgzip -c > $3