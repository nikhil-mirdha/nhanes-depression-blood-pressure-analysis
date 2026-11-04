# Install necessary packages if you haven't already
# install.packages(c("haven", "dplyr", "tidyverse"))

library(haven)
library(dplyr)

# 1. Load the three NHANES files
demo <- read_xpt("data/DEMO_J.xpt")
dpq <- read_xpt("data/DPQ_J.xpt")
bpx <- read_xpt("data/BPX_J.xpt")

# 2. Merge the datasets using the unique sequence number (SEQN)
# We start with demographics and join the others
nhanes_data <- demo %>%
  left_join(dpq, by = "SEQN") %>%
  left_join(bpx, by = "SEQN")

# 3. Check the dimensions to ensure the merge worked
print(dim(nhanes_data))
print(head(nhanes_data))

# 4. Save the merged file as a .csv for easier handling later
write.csv(nhanes_data, "data/nhanes_merged_2017_2018.csv", row.names = FALSE)