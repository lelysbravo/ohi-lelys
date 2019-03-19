#### Plotting code to look at multiple time-series of model results for multiple stocks in a lattice plot

library(ggplot2)
library(grid)
source("http://nceas.ucsb.edu/~frazier/myTheme.txt") # use this line of code to use Melanie's theme for pretty plots

# your input data will have only 4 columns: the stock identifier 'stock' (for example, the species name), the year 'year', 
# a 'variable' column that says if the value is B/Bmsy from the CMSY model, B/Bmsy from the Costello et al model, the catch data, or any other variable you want to add (e.g. ocean climate index)
# a 'value' column for the corresponding values

subset_data <- yourdata # subset your data if you only want to plot a part of it

ggplot(subset_data, aes(x=year, y=value, group=variable, color=variable)) +
  geom_point() +
  geom_line() +
  facet_wrap(~ stock, ncol = 10, scales="free") + #change the number of columns if you wish
  theme_bw()
ggsave('C:\\Users\\Melanie\\Desktop\\FIS2014 cmsy\\compare.png') # example directory for file saving
