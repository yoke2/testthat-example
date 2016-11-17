README
======

Files
-----
- main.R - This is the driver program then loads the data and calls methods to clean the data
- clean_methods.R - Contains cleaning methods for each column
- test_clean_methods.R - Contains test script for the cleaning methods
- gen_dirty_data.R - Script to generate test data based on iris dataset (test data contains wrong values - "-1.0" for NA values, "SENTOSA" for "setosa", "cell,has,comma" to test write-back quotes for data containing commas)
- dirty_data.csv - output from `gen_dirty_data.R`; input to `main.R`

Running the tests
-----------------
1. Ensure that the files are in the same directory
2. Launch R console and set working directory to aforementioned
3. Enter command `testthat::test_file("test_clean_methods.R")`
5. Examine output: On the line 'Clean Column Methods', '.' represents successful test; 'S' represents skipped test; number represents number of failed tests. You will be able to view the failed tests and skipped tests in respective sections

__Expected output:__
```r
Clean Column Methods: .SSS1

Skipped -----------------------------------------------------------------------------------------------------------------
1. test clean column 2 (@test_clean_methods.R#13) - stub

2. test clean column 3 (@test_clean_methods.R#17) - stub

3. test clean column 4 (@test_clean_methods.R#21) - stub

Failed ------------------------------------------------------------------------------------------------------------------
1. Failure: test clean column 5 (@test_clean_methods.R#25) --------------------------------------------------------------
clean_col_5("SENTOSA") not equal to "setosa".
1/1 mismatches
x[1]: "WRONG VALUE,test,comma"
y[1]: "setosa"


DONE ====================================================================================================================
>  
```

Running the driver program
--------------------------
1. Ensure that the files are in the same directory
2. Launch R console and set working directory to aforementioned
3. Enter command `source("main.R")`
4. Default input file: `dirty_data.csv`
5. Default output file: `cleaned_data.csv`


Dependencies
------------
1. R version 3.3.1
2. testthat package version 1.0.2
3. stringr package version 1.1.0