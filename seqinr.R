# This script reads in a FASTA file using seqinR.
# seqinR documentation can be viewed at https://seqinr.r-forge.r-project.org/

# install.packages('seqinr')
library(seqinr)

dengue_data <- read.fasta('data/dengue.fasta', seqtype = 'DNA')

# Note that this creates an R list of sequences.
# The name of each list item is its annotation (minus the > prefix)
# The value of each list item is a vector of nucleotides.
 
# Get a vector of the annotations
names(dengue_data)

# Get a specific sequence (and JUST the sequence)
consensus_seq <- dengue_data[[1]]
# OR
consensus_seq <- dengue_data$'lcl|consensus'
# The result is the same


