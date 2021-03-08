# Adjusted-p-value
Matlab code for algorithm performance comparison: Friedman test and adjusted p value by Hommel procedure

## Main file

adjusted_p.m



## How to run

1. import your data matrix, for example, cal.xlsx as the **matrix** cal, not table!

   - row: test problems

   - column: algorithms, the first column is the control method

   - cell: test result of a algorithm (column) at a test problem (row)

   - You can refer to the Table III in the paper: A Federated Data-Driven Evolutionary Algorithm [Link](https://arxiv.org/pdf/2102.08288.pdf)

     

2. run [ranks, original_p, ad_p] = adjusted_p(cal)

3. return: Friedman test, p value without adjusted, adjusted p value by  Hommel procedure at 0.05 significance level, please note that **the first column must the control method**!

